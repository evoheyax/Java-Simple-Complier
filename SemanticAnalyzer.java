import java.lang.reflect.Array;
import java.util.Vector;

public class SemanticAnalyzer implements ASTVisitor {
	TypeEnvironment typeEnvironment;
	FunctionEnvironment functionEnvironment;
	VariableEnvironment variableEnvironment;
	Type currentFunctionType;
	String currentFunctionName;
	int globalOffset;
	AATBuildTree bt;
	
	public SemanticAnalyzer() {
		typeEnvironment = new TypeEnvironment();
		functionEnvironment = new FunctionEnvironment();
		variableEnvironment = new VariableEnvironment();
		functionEnvironment.addBuiltinFunctions();
		currentFunctionType = null;
		currentFunctionName = null;
		globalOffset = 0;
		
		bt = new AATBuildTree();
	}
	
	@Override
	public Tuple VisitArrayVariable(ASTArrayVariable array) {
		Tuple indexTuple = (Tuple) array.index().Accept(this);
		if(indexTuple.getType() != IntegerType.instance()) {
			CompError.message(array.line(), "Array index is not of type Integer.");
		}
		Tuple baseTuple = (Tuple) array.base().Accept(this);
		
		if(baseTuple.getType() instanceof ArrayType) {
			ArrayType at = (ArrayType) baseTuple.getType();
			AATExpression arrayVar = bt.arrayVariable(baseTuple.getTree(), indexTuple.getTree(), MachineDependent.WORDSIZE);
			return new Tuple(arrayVar, at.type());
		} else {
			CompError.message(array.line(), "Base is not of type ArrayType. Is type "+ baseTuple.getType());
			return new Tuple(null, IntegerType.instance());
		}
	}

	@Override
	public Object VisitAssignmentStatement(ASTAssignmentStatement assign) {
		
		Tuple varTuple = (Tuple) assign.variable().Accept(this);
		
		Tuple expTuple = (Tuple) assign.value().Accept(this);
		
		if(varTuple.getType() != expTuple.getType()) {
			CompError.message(assign.line(), "Type for assignment does not match variable type. Expected "+varTuple.getType()+", recieved "+expTuple.getType());
		}
		
		return bt.assignmentStatement(varTuple.getTree(), expTuple.getTree());
	}

	@Override
	public Object VisitBaseVariable(ASTBaseVariable base) {
		VariableEntry varentry = variableEnvironment.find(base.name());
		if(varentry == null){
			CompError.message(base.line(), "Variable " + base.name() + " is not defined in this scope.");
			return new Tuple(null, IntegerType.instance());
		} else {
			AATExpression baseVariable = bt.baseVariable(varentry.offset());
			return new Tuple(baseVariable, varentry.type());
		}
	}

	public Tuple VisitBooleanLiteral(ASTBooleanLiteral boolliteral) {
		AATExpression exp = bt.constantExpression(0);
		Type type = BooleanType.instance();
		if(boolliteral.value()) {
			exp = bt.constantExpression(1);
		}
		
		return new Tuple(exp, type);
	}

	@Override
	public Object VisitClass(ASTClass classs) {
		VariableEnvironment classVE = (VariableEnvironment) classs.variabledefs().Accept(this);
		
		typeEnvironment.insert(classs.name(), new ClassType(classVE));
		
		return null;
	}

	@Override
	public Object VisitClasses(ASTClasses classes) {
		for(int i = 0; i < classes.size(); i++) {
			classes.elementAt(i).Accept(this);
		}
		return null;
	}

	@Override
	public Tuple VisitClassVariable(ASTClassVariable classvariable) {
		Type result = null;
		int offset = 0;
		Tuple baseTuple = (Tuple) classvariable.base().Accept(this);
		if(baseTuple.getType() instanceof ClassType) {
			ClassType baseClass = (ClassType) baseTuple.getType();
			
			VariableEntry VE = baseClass.variables().find(classvariable.variable());
			offset = VE.offset();
			if(VE == null) {
				CompError.message(classvariable.line(), "Variable "+classvariable.variable()+" does not exist in this class");
			} else {
				result = VE.type();
			}
		} else {
			CompError.message(classvariable.line(), classvariable.variable()+" is not a field of this class");
			result = IntegerType.instance();
		}
		return new Tuple(bt.classVariable(baseTuple.getTree(), offset), result);
	}

	@Override
	public AATStatement VisitDoWhileStatement(ASTDoWhileStatement dowhile) {
		Tuple test = (Tuple) dowhile.test().Accept(this);
		if(test.getType() != BooleanType.instance()){
			CompError.message(dowhile.line(), "While test must be boolean.");
		}
		AATStatement body = (AATStatement) dowhile.body().Accept(this);
		return bt.dowhileStatement(test.getTree(), body);
	}

	@Override
	public AATStatement VisitEmptyStatement(ASTEmptyStatement empty) {
		return bt.emptyStatement();
	}

	@Override
	public AATStatement VisitForStatement(ASTForStatement forstmt) {
		AATStatement init = (AATStatement) forstmt.initialize().Accept(this);
		
		Tuple test = (Tuple) forstmt.test().Accept(this);
		if(test.getType() != BooleanType.instance()){
			CompError.message(forstmt.line(), "While test must be boolean.");
		}
		
		AATStatement increment = (AATStatement) forstmt.increment().Accept(this);
		
		AATStatement body = (AATStatement) forstmt.body().Accept(this);
		return bt.forStatement(init, test.getTree(), increment, body);
	}
	
	@Override
	public Object VisitFormal(ASTFormal formal) {
		Object result = null;
		Object type = typeEnvironment.find(formal.type());
		if(type == null) {
			CompError.message(formal.line(), "Type "+formal.type()+" is not defined");
			result = IntegerType.instance();
		} else {
			result = checkType(formal.type(), formal.arraydimension(), formal.line());
		}
		return result;
	}

	@Override
	public Object VisitFormals(ASTFormals formals) {
		Vector formalTypes = new Vector(formals.size());
		for(int i = 0; i < formals.size(); i++) {
			formalTypes.add(formals.elementAt(i).Accept(this));
		}
		return formalTypes;
	}

	@Override
	public Object VisitFunction(ASTFunction function) {
		currentFunctionType = typeEnvironment.find(function.type());
		currentFunctionName = function.name();
		if(currentFunctionType == null) {
			CompError.message(function.line(), "Type "+function.type()+" is not defined");
			currentFunctionType = IntegerType.instance();
		}
		
		FunctionEntry functionEntry = functionEnvironment.find(function.name());
		Vector formals = (Vector) function.formals().Accept(this);
		
		variableEnvironment.beginScope();
		
		if(functionEntry == null) {
			Label startLabel = new Label(function.name());
			Label endLabel = new Label(function.name()+"_end");
			
			functionEnvironment.insert(function.name(), new FunctionEntry(currentFunctionType, formals, startLabel, endLabel));
			

			for(int i = 0; i < formals.size(); i++){
				Type varFunctionType = (Type) formals.get(i);
				String varName = function.formals().elementAt(i).name();
				VariableEntry entry = new VariableEntry(varFunctionType, -MachineDependent.WORDSIZE*(i+1));
				variableEnvironment.insert(varName, entry);
			}
		} else {
			
			Type prototypeType = functionEntry.result();
			
			if(prototypeType != currentFunctionType) {
				CompError.message(function.line(), "Prototype "+function.name()+" and function "+function.name()+" do not have the same return type");
			}
			
			Vector prototypeFormals = functionEntry.formals();
			if(prototypeFormals.size() != formals.size()) {
				CompError.message(function.line(), "Prototype "+function.name()+" and function "+function.name()+" do not have the same number of formals");
			} else {
				for(int i = 0; i < formals.size(); i++){
					Type varPrototypeType = (Type) prototypeFormals.get(i);
					Type varFunctionType = (Type) formals.get(i);
					
					if(varPrototypeType == null) {
						CompError.message(function.line(), "Type is not defined");
					}
					
					if(varFunctionType == null) {
					}
										
					if(varPrototypeType != varFunctionType) {
						CompError.message(function.line(), "Prototype "+function.name()+" and function "+function.name()+" do not have the same types/names for formals. Expected "+varFunctionType+", recieved "+varPrototypeType);
					}
					
					if(varFunctionType != null && varPrototypeType != null) {
						String varName = function.formals().elementAt(i).name();
						VariableEntry entry = new VariableEntry(varFunctionType, -MachineDependent.WORDSIZE*(i+1));
						variableEnvironment.insert(varName, entry);
					}
				}
			}
		}
		
		AATStatement body = (AATStatement) function.body().Accept(this);
		FunctionEntry functionEnt = functionEnvironment.find(function.name());
		
		variableEnvironment.endScope();
		return bt.functionDefinition(body, globalOffset+(formals.size()*MachineDependent.WORDSIZE), functionEnt.startlabel(), functionEnt.endlabel());
	}

	@Override
	public Tuple VisitFunctionCallExpression(ASTFunctionCallExpression functioncall) {
		Type result = IntegerType.instance();
		FunctionEntry funcEntry = functionEnvironment.find(functioncall.name());
		Vector formals = funcEntry.formals();
		
		Label name = funcEntry.startlabel();
		Vector actuals = new Vector();
		
		if(formals.size() != functioncall.size()) {
			CompError.message(functioncall.line(), "The number of actuals passed into "+functioncall.name()+" do not equal its number of formals.");
			result = IntegerType.instance();
		} else {
			for(int i = 0; i < functioncall.size(); i++){
				Tuple actualsTuple = (Tuple) functioncall.elementAt(i).Accept(this);
				Type formalsType = (Type) formals.elementAt(i);
				
				if(actualsTuple.getType() != formalsType) {
					CompError.message(functioncall.line(), "The actuals passed into "+functioncall.name()+" do not match the types of formals this function take. Expected "+ actualsTuple.getType() + ", recieved "+ formalsType);
				}
				actuals.add(actualsTuple.getTree());
			}
			result = funcEntry.result();
		}
		
		AATExpression exp = bt.callExpression(actuals, name);
		return new Tuple(exp, result);
	}

	@Override
	public AATStatement VisitFunctionCallStatement(ASTFunctionCallStatement functioncall) {
		FunctionEntry funcEntry = functionEnvironment.find(functioncall.name());
		Vector formals = funcEntry.formals();
		Vector actuals = new Vector();
		if(formals.size() != functioncall.size()) {
			CompError.message(functioncall.line(), "The number of actuals passed into "+functioncall.name()+" do not equal its number of formals.");
		} else {
			for(int i = 0; i < functioncall.size(); i++){
				Tuple actualsTuple = (Tuple) functioncall.elementAt(i).Accept(this);
				Type formalsType = (Type) formals.elementAt(i);
				
				actuals.add(actualsTuple.getTree());
				if(actualsTuple.getType() != formalsType) {
					CompError.message(functioncall.line(), "The actuals passed into "+functioncall.name()+" do not match the types of formals this function take. Expected "+ actualsTuple.getType() + ", recieved "+ formalsType);
				}
			}
		}
		
		if(funcEntry.result() != VoidType.instance()) {
			CompError.message(functioncall.line(), "Function statements must return void");
		}
		
		Label name = funcEntry.startlabel();
		return bt.callStatement(actuals, name);
	} 

	@Override
	public AATStatement VisitIfStatement(ASTIfStatement ifsmt) {
		Tuple test = (Tuple) ifsmt.test().Accept(this);
		if(test.getType() != BooleanType.instance()){
			CompError.message(ifsmt.line(), "If test must be boolean.");
		}
		AATStatement elseBody = bt.emptyStatement();
		AATStatement ifBody = (AATStatement) ifsmt.thenstatement().Accept(this);
		if(ifsmt.elsestatement() != null){
			elseBody = (AATStatement) ifsmt.elsestatement().Accept(this);
		}
		return bt.ifStatement(test.getTree(), ifBody, elseBody);
	}

	@Override
	public Tuple VisitIntegerLiteral(ASTIntegerLiteral literal) {
		AATExpression intTree = bt.constantExpression(literal.value());
		Type type = IntegerType.instance();
		return new Tuple(intTree, type);
	}

	@Override
	public Object VisitInstanceVariableDef(ASTInstanceVariableDef variabledef) {
		return variabledef;
	}

	@Override
	public Object VisitInstanceVariableDefs(ASTInstanceVariableDefs variabledefs) {
		VariableEnvironment classVE = new VariableEnvironment();
		
		for(int i = 0; i < variabledefs.size(); i++) {
			ASTInstanceVariableDef instanceVariable = (ASTInstanceVariableDef) variabledefs.elementAt(i).Accept(this);
			Type type = typeEnvironment.find(instanceVariable.type());
			if(type == null) {
				CompError.message(instanceVariable.line(), "Type "+instanceVariable.type()+" is not defined");
			} else {
				Type realType = checkType(instanceVariable.type(), instanceVariable.arraydimension(), instanceVariable.line());
				VariableEntry varentry = new VariableEntry(realType, i*MachineDependent.WORDSIZE);
				classVE.insert(instanceVariable.name(), varentry);
			}
		}
		return classVE;
	}

	@Override
	public Tuple VisitNewArrayExpression(ASTNewArrayExpression newarray) {
		Tuple array = (Tuple) newarray.elements().Accept(this);
		if(IntegerType.instance() != array.getType()){
			CompError.message(newarray.line(), "Array index is not of type Integer.");
		}
		
		Type type = checkType(newarray.type(), newarray.arraydimension(), newarray.line());
		
		AATExpression allocate = bt.allocate(bt.operatorExpression(array.getTree(), bt.constantExpression(MachineDependent.WORDSIZE), AATOperator.MULTIPLY));
		
		return new Tuple(allocate, type);
	}

	@Override
	public Tuple VisitNewClassExpression(ASTNewClassExpression newclass) {
		Type result = IntegerType.instance();
		Type type = typeEnvironment.find(newclass.type());
		if(null == type){
			CompError.message(newclass.line(), "Class does not exist.");
		} else {
			result = type;
		}
		
		AATExpression allocate = null;
		if(type instanceof ClassType) {
			allocate = bt.allocate(bt.constantExpression(MachineDependent.WORDSIZE*((ClassType) type).variables().size()));
		}
		
		return new Tuple(allocate, result);
	}

	@Override
	public Tuple VisitOperatorExpression(ASTOperatorExpression opexpr) {
		Type result = IntegerType.instance();
		
		int op = opexpr.operator();
		Tuple leftExp = (Tuple) opexpr.left().Accept(this);
		Tuple rightExp = (Tuple) opexpr.right().Accept(this);
		
		if(op == ASTOperatorExpression.PLUS || op == ASTOperatorExpression.MINUS || op == ASTOperatorExpression.MULTIPLY || op == ASTOperatorExpression.DIVIDE) {
			if(leftExp.getType() != rightExp.getType() || leftExp.getType() != IntegerType.instance()) {
				CompError.message(opexpr.line(), "Expected two ingeters for + - / * operator expression");
			}
			result = IntegerType.instance();
		} else if(op == ASTOperatorExpression.LESS_THAN || op == ASTOperatorExpression.LESS_THAN_EQUAL || op == ASTOperatorExpression.GREATER_THAN || op == ASTOperatorExpression.GREATER_THAN_EQUAL) {
			if(leftExp.getType() != rightExp.getType() || leftExp.getType() != IntegerType.instance()) {
				CompError.message(opexpr.line(), "Expected two ingeters for < <= >= > operator expression");;
			}
			result = BooleanType.instance();
		} else if(op == ASTOperatorExpression.EQUAL || op == ASTOperatorExpression.NOT_EQUAL) {
			if(leftExp.getType() != rightExp.getType()) {
				CompError.message(opexpr.line(), "Expected two booleans or two integers for == != operator expression");
			}
			result = BooleanType.instance();
		} else if(op == ASTOperatorExpression.AND || op == ASTOperatorExpression.OR) {
			if(leftExp.getType() != rightExp.getType() || leftExp.getType() != BooleanType.instance()) {
				CompError.message(opexpr.line(), "Expected two booleans for && || operator expression");
			}
			result = BooleanType.instance();
		}
		
		AATExpression operatorTree = bt.operatorExpression(leftExp.getTree(), rightExp.getTree(), op);
		return new Tuple(operatorTree, result);
	}

	@Override
	public AATStatement VisitProgram(ASTProgram program) {
		program.classes().Accept(this);
		AATStatement functionDefs = (AATStatement) program.functiondefinitions().Accept(this);
		return bt.sequentialStatement(functionDefs, new AATHalt());
	}

	@Override
	public AATStatement VisitFunctionDefinitions(ASTFunctionDefinitions functiondefinitions) {
		AATStatement body = bt.emptyStatement();
		Vector functionDefsAccepted = new Vector();
		
		for(int i=0; i < functiondefinitions.size(); i++) {
			functionDefsAccepted.add(functiondefinitions.elementAt(i).Accept(this));
		}
		
		if(functiondefinitions.size() > 0) {
			body = buildFunctionDefinitions(functionDefsAccepted, functiondefinitions.size()-1);
		}
		return body;
	}
	
	private AATStatement buildFunctionDefinitions(Vector functiondefinitions, int i) {
		if(i == 0) {
			return (AATStatement) functiondefinitions.elementAt(i);
		} else {
			AATStatement currStatement = (AATStatement) functiondefinitions.elementAt(i);
			return bt.sequentialStatement(buildFunctionDefinitions(functiondefinitions, i-1), currStatement);
		}		
	}

	@Override
	public AATStatement VisitPrototype(ASTPrototype prototype) {
		Type result = typeEnvironment.find(prototype.type());
		Vector formals = (Vector) prototype.formals().Accept(this);
		if(result == null) {
			CompError.message(prototype.line(), "Type "+prototype.type()+" is not defined");
			result = IntegerType.instance();
		}
		
		Label startLabel = new Label(prototype.name());
		Label endLabel = new Label(prototype.name()+"end");
		
		functionEnvironment.insert(prototype.name(), new FunctionEntry(result, formals, startLabel, endLabel));
		return bt.emptyStatement();
	}

	@Override
	public AATStatement VisitReturnStatement(ASTReturnStatement ret) {
		FunctionEntry funcEntry = functionEnvironment.find(currentFunctionName);
		Label functionEnd = funcEntry.endlabel();
		AATStatement returnStatement = bt.returnStatement(null, functionEnd);
		
		if(ret.value() == null) {
			if(currentFunctionType != VoidType.instance()) {
				CompError.message(ret.line(), "An empty return stament is only valid if the function type is null");
			}
		} else {
			Tuple retVal = (Tuple) ret.value().Accept(this);
			if(retVal.getType() != currentFunctionType) {
				CompError.message(ret.line(), "Return statement type and function type do not match");
			}
			returnStatement = bt.returnStatement(retVal.getTree(), functionEnd);
		}
		
		return returnStatement;
	}

	@Override
	public Object VisitStatements(ASTStatements statements) {
		variableEnvironment.beginScope();
		
		Vector statementsAccepted = new Vector();
		
		for(int i = 0; i < statements.size(); i++) {
			statementsAccepted.add(statements.elementAt(i).Accept(this));
		}
		
		AATStatement body = bt.emptyStatement();
		if(statements.size() > 0) {
			body = buildStatements(statementsAccepted, statements.size()-1);
		}
		
		variableEnvironment.endScope();
		return body;
	}

	private AATStatement buildStatements(Vector statements, int i) {
		if(i == 0) {
			return (AATStatement) statements.elementAt(i);
		} else {
			AATStatement currStatement = (AATStatement) statements.elementAt(i);
			return bt.sequentialStatement(buildStatements(statements, i-1), currStatement);
		}		
	}
	
	@Override
	public Tuple VisitUnaryOperatorExpression(ASTUnaryOperatorExpression operator) {
		Tuple operand = (Tuple) operator.operand().Accept(this);
		
		if(operand.getType() != BooleanType.instance()) {
			CompError.message(operator.line(), "Unary Operator can only act on a boolean type.");
		}
		
		return new Tuple(bt.operatorExpression(operand.getTree(), null, AATOperator.NOT), operand.getType());
	}

	@Override
	public AATStatement VisitVariableDefStatement(ASTVariableDefStatement vardef) {

		AATStatement statement = bt.emptyStatement();
		
		Type type = checkType(vardef.type(), vardef.arraydimension(), vardef.line());
		
		VariableEntry entry = new VariableEntry(type, globalOffset);
		variableEnvironment.insert(vardef.name(), entry);
			
		if(vardef.init() != null) {
			Tuple exp = (Tuple) vardef.init().Accept(this);
			if(type != exp.getType()) {
				CompError.message(vardef.line(), "Type for assignment does not match variable type. Expected "+type+", recieved "+exp.getType());
			}
			statement = bt.assignmentStatement(bt.baseVariable(globalOffset), exp.getTree());
		}
		
		globalOffset += MachineDependent.WORDSIZE;
		return statement;
	}
	
	private String addBracket(String type, int amount){
		for(int i = 0; i < amount; i++){
			type += "[]";
		}
		return type;
	}
	
	private Type checkType(String stringType, int dimension, int lineNum) {
		String bracketString = addBracket(stringType, dimension);
		Type type = typeEnvironment.find(bracketString);
		if(dimension == 0) {
			if(type == null) {
				CompError.message(lineNum, "Type "+bracketString+" is not defined");
				return IntegerType.instance();
			} else {
				return type;
			}
		} else {
			Type lastType = checkType(stringType, dimension-1, lineNum);
			ArrayType lastArrayType = new ArrayType(lastType);
			if(type == null) {
				typeEnvironment.insert(bracketString, lastArrayType);
				type = typeEnvironment.find(bracketString);
			}
			return type;
		}
	}
	
	@Override
	public Tuple VisitVariableExpression(ASTVariableExpression variableexpression) {
		return (Tuple) variableexpression.variable().Accept(this);
	}

	@Override
	public AATStatement VisitWhileStatement(ASTWhileStatement whilestatement) {
		Tuple test = (Tuple) whilestatement.test().Accept(this);
		if(test.getType() != BooleanType.instance()){
			CompError.message(whilestatement.line(), "While test must be boolean. Recieved "+test.getType());
		}
		AATStatement whileBody = (AATStatement) whilestatement.body().Accept(this);
		return bt.whileStatement(test.getTree(), whileBody);
	}
}