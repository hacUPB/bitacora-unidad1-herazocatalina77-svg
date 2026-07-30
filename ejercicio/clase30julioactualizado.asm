//código para que se haga un punto en la pantalla del emulador
@100
D=A 
@PUNT //Llama al puntero
M=D 
@10
D=A 
@CONT
M=D 
(LOOP)
@7
D=A 
@CONT
A=M
M=D 
@CONT
M=M+1
@PUNT
MD=M-1
@LOOP
D;JGT
(END)
@END
0;JMP
