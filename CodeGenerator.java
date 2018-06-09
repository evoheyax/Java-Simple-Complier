import java.io.*;



class CodeGenerator implements AATVisitor { 
    
    public CodeGenerator(String output_filename) {
    try {
        output = new PrintWriter(new FileOutputStream(output_filename));
    } catch (IOException e) {
        System.out.println("Could not open file "+output_filename+" for writing.");
    }
    

    /*  Feel free to add code here, if you want to */
    EmitSetupCode();
    }
   

    public Object VisitCallExpression(AATCallExpression expression) {
        VisitCallStatement(new AATCallStatement(expression.label(), expression.actuals()));
        emit("move " + Register.ACC() + ", " + Register.Result());
        return null;
    }

    public Object VisitCallStatement(AATCallStatement statement) {
        int n = statement.actuals().size();
        emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (-n*MachineDependent.WORDSIZE));
        for (int i = 0; i < n; i++) {
            int offset = (i+1)*MachineDependent.WORDSIZE;
            //all this does is creates a memory object that vMove can use, add offset to SP to get correct memory
            AATMemory target = new AATMemory(new AATOperator(new AATRegister(Register.SP()), new AATConstant(offset), AATOperator.PLUS));
            //let move handle all the work. 
            VisitMove(target, (AATExpression) statement.actuals().elementAt(i));
        }
        emit("jal " + statement.label());
        emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (n*MachineDependent.WORDSIZE));
        return null;
    }

  
    public Object VisitMemory(AATMemory expression) {
        expression.mem().Accept(this); //puts address into acc
        emit("lw " + Register.ACC() + ", 0(" + Register.ACC() + ")"); //gets value form that address in acc and puts it into acc
        return null;
    }
    
   public Object VisitOperator(AATOperator expression) {
        expression.left().Accept(this);

        if (expression.right() != null) {
            emit("sw " + Register.ACC() + ", 0(" + Register.SP() + ")");
            emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (-MachineDependent.WORDSIZE));
            expression.right().Accept(this);
            emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (MachineDependent.WORDSIZE));
            emit("lw " + Register.Tmp1() + ", 0(" + Register.SP() + ")");
        }
        switch (expression.operator()) {
            case AATOperator.PLUS: {
                emit("add " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.MINUS: {
                emit("sub " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.MULTIPLY:{
                emit("mul " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.DIVIDE: {
                emit("div " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.AND: {
                emit("and " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.OR: {
                emit("or " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.EQUAL: {
                emit("seq " + Register.ACC() +  ", " + Register.Tmp1() + ", " + Register.ACC());
                
                break;
            }
            case AATOperator.NOT_EQUAL: {
                emit("sne " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.LESS_THAN: {
                emit("slt " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.LESS_THAN_EQUAL: {
                emit("sle " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC()); 
                break;
            }
            case AATOperator.GREATER_THAN: {
                emit("slt " + Register.ACC() + ", " + Register.ACC() + ", " + Register.Tmp1());
                break;
            }
            case AATOperator.GREATER_THAN_EQUAL: {
                emit("sge " + Register.ACC() + ", " + Register.Tmp1() + ", " + Register.ACC());
                break;
            }
            case AATOperator.NOT: {
                emit("li " + Register.Tmp1() + ", 1");
                emit("sltu " + Register.ACC() + ", " + Register.ACC() + ", " + Register.Tmp1());
                break;
            }
            default: {
                System.out.println("ERROR: Unknown operator " + expression.operator() + ".");
                break;
            }
        }
        return null;
    }

    public Object VisitRegister(AATRegister expression) { 
        emit("move " + Register.ACC() + ", " + expression.register());
        return null;
    }

    public Object VisitConditionalJump(AATConditionalJump statement) {
        statement.test().Accept(this);
        emit("bne " + Register.ACC() + ", " + Register.Zero() + ", " + statement.label());
        return null;
    }
    
    public Object VisitEmpty(AATEmpty statement) { //idk
        return null;
    }

    public Object VisitJump(AATJump statement) {
        emit("j " + statement.label());
        return null;
    }

    public Object VisitLabel(AATLabel statement) {
        emit(statement.label() + ":");
        return null;
    }

    //any left side memory
    private void VisitMove(AATMemory lhs, AATExpression rhs) {
       if (rhs instanceof AATRegister) {
            Register reg = ((AATRegister) rhs).register();
            lhs.mem().Accept(this);
            emit("sw " + reg + ", 0(" + Register.ACC() + ")");
        } else {
            lhs.mem().Accept(this);
            emit("sw " + Register.ACC() + ", 0(" + Register.SP() + ")");
            emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (- MachineDependent.WORDSIZE));

            rhs.Accept(this);
            emit("addi " + Register.SP() + ", " + Register.SP() + ", " + (MachineDependent.WORDSIZE));
            emit("lw " + Register.Tmp1() + ", 0(" + Register.SP() + ")");

            emit("sw " + Register.ACC() + ", 0(" + Register.Tmp1() + ")");
        }
    }

    //any left side regs
    private void VisitMove(AATRegister lhs, AATExpression rhs) {
        if (rhs instanceof AATConstant) {
            emit("li " + lhs.register() + ", " + ((AATConstant) rhs).value());
        }else if (rhs instanceof AATRegister) {
            Register reg = ((AATRegister) rhs).register();
            emit("move " + lhs.register() + ", " + reg);
        } 
        else if (rhs instanceof AATMemory) {
            AATExpression mem = ((AATMemory)rhs).mem();
            mem.Accept(this);
            emit("lw " + lhs.register() + ", 0(" + Register.ACC() + ")");
        }else {
            rhs.Accept(this);
            if (lhs.register() != Register.ACC()) {
                emit("move " + lhs.register() + ", " + Register.ACC());
            }
        }
    }

    public Object VisitMove(AATMove statement) {
        if (statement.lhs() instanceof AATMemory) {
            VisitMove((AATMemory) statement.lhs(), statement.rhs());
        } else if (statement.lhs() instanceof AATRegister) {
            VisitMove((AATRegister) statement.lhs(), statement.rhs());
        }
        return null;
    }



    public Object VisitReturn(AATReturn statement) {
        emit("jr " + Register.ReturnAddr());
        return null;
    }

    public Object VisitHalt(AATHalt halt) {
        /* Don't need to implement halt -- you can leave 
           this as it is, if you like */
        return null;
    }

    public Object VisitSequential(AATSequential statement) {
        statement.left().Accept(this);
        statement.right().Accept(this);
        return null;
    }
    
    public Object VisitConstant(AATConstant expression) {
        emit("li " + Register.ACC() + ", " + expression.value());
        return null;
    }
    
    private void emit(String assem) {
        assem = assem.trim();
        if (assem.charAt(assem.length()-1) == ':') 
          output.println(assem);
        else
            output.println("\t" + assem);
    }
    
    public void GenerateLibrary() {
                emit("#-----------------------------------------");

    emit("Print:");
    emit("lw $a0, 4(" + Register.SP() + ")");
    emit("li $v0, 1");
    emit("syscall");
    emit("li $v0,4");
    emit("la $a0, sp");
    emit("syscall");
    emit("jr $ra");
    emit("Println:");
    emit("li $v0,4");
    emit("la $a0, cr");
    emit("syscall");
    emit("jr $ra");
    emit("Read:");
    emit("li $v0,5");
    emit("syscall");
    emit("jr $ra");
    emit("allocate:");
    emit("la " + Register.Tmp1() + ", HEAPPTR");
    emit("lw " + Register.Result() + ",0(" + Register.Tmp1() + ")");
    emit("lw " + Register.Tmp2() + ", 4(" + Register.SP() + ")");
    emit("sub " + Register.Tmp2() + "," + Register.Result() + "," + Register.Tmp2());
    emit("sw " + Register.Tmp2() + ",0(" + Register.Tmp1() + ")");
    emit("jr $ra");
    emit(".data");
    emit("cr:");
    emit(".asciiz \"\\n\"");
    emit("sp:");
    emit(".asciiz \" \"");
    emit("HEAPPTR:");
    emit(".word 0");
    output.flush();
    }
    
    private void EmitSetupCode() {
    emit(".globl main");
    emit("main:");
    emit("addi " + Register.ESP() + "," + Register.SP() + ",0");
    emit("addi " + Register.SP() + "," + Register.SP() + "," + 
         - MachineDependent.WORDSIZE * STACKSIZE);
    emit("addi " + Register.Tmp1() + "," + Register.SP() + ",0");
    emit("addi " + Register.Tmp1() + "," + Register.Tmp1() + "," + 
         - MachineDependent.WORDSIZE * STACKSIZE);
    emit("la " + Register.Tmp2() + ", HEAPPTR");
    emit("sw " + Register.Tmp1() + ",0(" + Register.Tmp2() + ")");
        emit("sw " + Register.ReturnAddr() + "," + MachineDependent.WORDSIZE  + "("+ Register.SP() + ")"); 
    emit("jal main1");
    emit("li $v0, 10");
    emit("syscall");
    emit("#-----------------------------------------");
    }
    

    private final int STACKSIZE = 1000;
    private PrintWriter output;
   
}

