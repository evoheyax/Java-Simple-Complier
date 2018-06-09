import java.util.Vector;

public class AATBuildTree{
  
    public AATStatement functionDefinition(AATStatement body, int framesize, Label start, Label end) {
    	AATRegister FP = new AATRegister(Register.FP());
    	AATRegister SP = new AATRegister(Register.SP());
    	AATRegister RA = new AATRegister(Register.ReturnAddr());
    	
    	AATMove saveFP = new AATMove(new AATMemory(new AATOperator(SP, new AATConstant(framesize), AATOperator.MINUS)), FP);
    	AATMove saveSP = new AATMove(new AATMemory(new AATOperator(SP, new AATConstant(framesize+MachineDependent.WORDSIZE), AATOperator.MINUS)), SP);
    	AATMove saveRA = new AATMove(new AATMemory(new AATOperator(SP, new AATConstant(framesize+(MachineDependent.WORDSIZE*2)), AATOperator.MINUS)), RA);
    	
    	AATMove moveFPtoSP = new AATMove(FP, SP);
    	AATMove moveSPtoFreeSpace = new AATMove(SP, new AATOperator(SP, new AATConstant(framesize+(MachineDependent.WORDSIZE*3)), AATOperator.MINUS));
    	
    	AATMove restoreRA = new AATMove(RA, new AATMemory(new AATOperator(SP, new AATConstant(MachineDependent.WORDSIZE), AATOperator.PLUS)));
    	AATMove restoreFP = new AATMove(FP, new AATMemory(new AATOperator(SP, new AATConstant(MachineDependent.WORDSIZE*3), AATOperator.PLUS)));
    	AATMove restoreSP = new AATMove(SP, new AATMemory(new AATOperator(SP, new AATConstant(MachineDependent.WORDSIZE*2), AATOperator.PLUS)));
    	
    	return sequentialStatement(new AATLabel(start), sequentialStatement(saveFP, sequentialStatement(saveSP, sequentialStatement(saveRA, sequentialStatement(moveFPtoSP, sequentialStatement(moveSPtoFreeSpace, sequentialStatement(body, sequentialStatement(new AATLabel(end), sequentialStatement(restoreRA, sequentialStatement(restoreFP, sequentialStatement(restoreSP, new AATReturn())))))))))));
    }
    
    public AATStatement ifStatement(AATExpression test, AATStatement ifbody, AATStatement elsebody) {
    	Label ifTrueLabel = new Label("ifTrue");
    	Label ifEndLabel = new Label("ifend");
    	
    	return sequentialStatement(new AATConditionalJump(test, ifTrueLabel), sequentialStatement(elsebody, sequentialStatement(new AATJump(ifEndLabel), sequentialStatement(new AATLabel(ifTrueLabel), sequentialStatement(ifbody, new AATLabel(ifEndLabel))))));
    }
    
    public AATExpression allocate(AATExpression size) {
    	Vector sizeTree = new Vector();
    	sizeTree.add(size);
    	return new AATCallExpression(Label.AbsLabel("allocate"), sizeTree);
    }

    public AATStatement whileStatement(AATExpression test, AATStatement whilebody) {
    	Label bodyLabel = new Label("body");
    	Label testLabel = new Label("test");
    	
    	return sequentialStatement(new AATJump(testLabel), sequentialStatement(new AATLabel(bodyLabel), sequentialStatement(whilebody, sequentialStatement(new AATLabel(testLabel), new AATConditionalJump(test, bodyLabel)))));
    }

    public AATStatement dowhileStatement(AATExpression test, AATStatement dowhilebody) {
    	Label bodyLabel = new Label("body");
    	
    	return sequentialStatement(new AATLabel(bodyLabel), sequentialStatement(dowhilebody, new AATConditionalJump(test, bodyLabel)));
    }
  
    public AATStatement forStatement(AATStatement init, AATExpression test, AATStatement increment, AATStatement body) {
    	Label bodyLabel = new Label("body");
    	Label testLabel = new Label("test");
    	
    	return sequentialStatement(init, sequentialStatement(new AATJump(testLabel), sequentialStatement(new AATLabel(bodyLabel), sequentialStatement(body, sequentialStatement(increment, sequentialStatement(new AATLabel(testLabel), new AATConditionalJump(test, bodyLabel)))))));
    }
    
    public AATStatement emptyStatement() {
    	return new AATEmpty();
    }
  
    public AATStatement callStatement(Vector actuals, Label name) {
    	return new AATCallStatement(name, actuals);
    }
    
    public AATStatement assignmentStatement(AATExpression lhs, AATExpression rhs) {
    	return new AATMove(lhs, rhs);
    }
    
    public AATStatement sequentialStatement(AATStatement first, AATStatement second) {
    	return new AATSequential(first, second);
    }
    
    public AATExpression baseVariable(int offset) {
    	return new AATMemory(new AATOperator(new AATRegister(Register.FP()), new AATConstant(offset), AATOperator.MINUS)) ;
    }
    
    public AATExpression arrayVariable(AATExpression base, AATExpression index, int elementSize) {
    	return new AATMemory(new AATOperator(base, new AATOperator(new AATConstant(elementSize), index, AATOperator.MULTIPLY), AATOperator.MINUS));
    }
    
    public AATExpression classVariable(AATExpression base, int offset) {
    	return new AATMemory(new AATOperator(base, new AATConstant(offset), AATOperator.MINUS));
    }
  
    public AATExpression constantExpression(int value) {
    	return new AATConstant(value);
    }
  
    public AATExpression operatorExpression(AATExpression left, AATExpression right, int operator) {
    	return new AATOperator(left, right, operator);
    }
  
    public AATExpression callExpression(Vector actuals, Label name) {
    	return new AATCallExpression(name, actuals);
    }
    
    public AATStatement returnStatement(AATExpression value, Label functionend) {
    	if(value == null) {
    		return new AATJump(functionend);
    	} else {
    		return sequentialStatement(new AATMove(new AATRegister(Register.Result()), value), new AATJump(functionend));
    	}
    }
}


