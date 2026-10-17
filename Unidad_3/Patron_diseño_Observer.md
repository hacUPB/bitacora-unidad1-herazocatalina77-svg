# Observer
    El patrón de diseño "observer" consta de dos componentes: el sujeto y el observador. El sujeto tiene el poder de notificar a sus observadores en qué momento está sucediendo un evento en el cual los observadores necesiten actuar
# Subject
    El subject representa la lista que contiene la cantidad de objetos que son observadores dentro del código, lo que crea las funciones AddObserver, DeleteObserver
# ¿Dónde se ven en el código
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/observer.png)
    Tenemos el la clase observer en el .h, la cuál tiene la función OnNotify (Lo cual representa el método que detalla que es lo que va a pasar cuando estemos siendo notificados)
    Y la clase subject, que tiene las funciones addObserver y deleteObserver donde agregamos los objetos que sean observadores

    En este caso específico del código, gracias al observer, podemos ver más adelante que notifica los comandos en el teclado
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/observer_comando.png)
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/comandoObserver.png)
    Cómo podemos observar, al tocar una tecla (keypressed), notificamos ciertos estados en los que está la partícula(attract, repel, normal, stop)
# Método notify
    

# Concrete Subject

# Concrete Observer