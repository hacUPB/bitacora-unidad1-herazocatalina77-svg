@SCREEN //A=16384
D=A 
@i 
M=D //i = 16384

(READKEYBOARD)
@KBD //Llamando al teclado
D=M
@KEYPRESSED //pregunta si una tecla fue presionada
D;JNE //si no hay ninguna tecla presionada, continua su ciclo, siempre y cuando sea diferente de cero
@i
D=M
@SCREEN
D=D-A //el valor actual en D es 16384, y el valor actual en A es 24576, por ende resta ambos numeros
@READKEYBOARD
D;JLE
@i
M=M-1 //ya sabemos por la linea pasada que i=M, por ende se le esta restando un numero a i
A=M
M=0
@READKEYBOARD
0;JMP //aqui hay un condicional donde se pregunta si i es cero, cuando no lo sea, se continua el ciclo, hasta que la condicion se cumpla, y cuando eso pase, el codigo seguira su curso

(KEYPRESSED) 
@i
D=M 
@KBD //se llama al teclado
D=D-A
@READKEYBOARD
D;JGE
@i
A=M
M=-1
@i
M=M+1
@READKEYBOARD
0;JMP