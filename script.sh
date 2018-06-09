# !/bin/bash
# echo compiling simplejava.jj ...
# /cygdrive/c/Users/AlecTaggart/Desktop/ajtaggart/cs414/javacc-5.0/bin/javacc simplejava.jj
# echo compiling .javas with javac
# javac *.java
echo compiling Code Generator...
javac CodeGenerator.java
echo
echo Safely Compiled!
echo 
echo compiling sjc Driver
javac sjc.java 
echo
echo Safely Compiled!
# echo 
# echo Generating output with Generator: test.java.s
# java sjc test.sjava
echo
echo Generating output with Generator: test0.java.s
java sjc test0.sjava
echo
echo
echo Generating output with Generator: test1.java.s
java sjc test1.sjava
echo
echo
echo Generating output with Generator: test2.java.s
java sjc test2.sjava
echo
echo
echo Generating output with Generator: test3.java.s
java sjc test3.sjava
echo
echo
echo Generating output with Generator: test4.java.s
java sjc test4.sjava
echo
echo
echo Generating output with Generator: test5.java.s
java sjc test5.sjava
echo
echo
echo Generating output with Generator: test6.java.s
java sjc test6.sjava
echo
echo
echo Generating output with Generator: test7.java.s
java sjc test7.sjava
echo
echo
echo Generating output with Generator: test8.java.s
java sjc test8.sjava
echo
echo
echo Generating output with Generator: test9.java.s
java sjc test9.sjava
echo
echo
echo Generating output with Generator: test10.java.s
java sjc test10.sjava
echo

cp *.s Assembly

echo Creating parser program........
echo Creating AST print tree.......
echo Creating AAT print tree......
echo Running SemanticAnalyzer....
echo Running AAT Generator......
echo Generating Assembly.......
echo Output Successful........
echo


	




echo ...:::End Script:::...