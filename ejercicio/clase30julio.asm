//Creando un código que haga un punto en la pantalla del emulador
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
@PUNT
A=M
M=D 
@PUNT
M=M+1
@CONT
MD=M-1
@LOOP
D;JGT
(END)
@END
0;JMP
