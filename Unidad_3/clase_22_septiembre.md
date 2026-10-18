# Patrones de diseño
    Los patrones de diseño representan las maneras en las cuales se puede hacer un código de manera más eficiente y mantenible, en especial cuando buscamos trabajar en equipo.
    Actualmente existen 3 tipos de patrones de diseño de un código:
    Observer, Factory y State

# ¿Cómo puedes interactuar con la aplicación?
    En la aplicación, puedo observar los tres patrones de diseño haciendo diferentes funcionalidades:
    Hay una clase la cual consiste en el patrón de diseño: Observer, el cuál en el .cpp se encarga de darle una función a los comandos del teclado.
    Y el state, es una clase abstracta en las cuales las clases que hereden de ella representan un estado de la misma partícula.

# ¿Observas los diferentes tipos de “partículas”? ¿Se comportan todas igual inicialmente?
    Todas las partículas están basadas en diferentes estados, los cuales se basan en las clases: NormalState, AttractSate, RepelState, StopState
   ![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/comando_a.png) 
   ![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/comando_s.png)
   ![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/comando_r.png)
# ¿Qué crees que está pasando “detrás de cámaras” cuando presionas las teclas?
    Dentro de los patrones de diseño, no es cómo que estén creando un efecto partícular en la memoria, solo se encargan de organizar el código de maneras específicas para que los mismos valores que estén guardados dentro de la RAM se comporten de maneras específicas, entonces de por sí los patrones de diseño no es como que ocupen uun espacio en la RAM