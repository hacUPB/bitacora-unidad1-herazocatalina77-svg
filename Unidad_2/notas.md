# Segmentos de código
    En esta unidad vamos a utilizar un lenguaje de programación más alto a diferencia del emulador, este sería c++
    Dentro del código para aplicar consola de C++, existen segmentos de códigos con los cuales dependiendo de la línea del mismo código, vamos a guardarlo en una parte específica de la RAM
    -SEGMENTO DE CÓDIGO
    -STATIC - GLOBAL VARIABLES
    -HEAP
    -STACK
    Las más fundamentales dentro de los segmentos de memoria, son el heap y el stack ya que gracias a la forma en como está diseñado el lenguaje de c++, se observa qué variables están guardadas en cuáles estos segmentos de memoria y que tanta accesibilidad cuentan esas variables al momento de cumplir una funcionalidad.
# Variables constantes dentro de c++
    Las variables que contengan una el término const antes de asignar su tipo de variable, significa que al ser asignadas con un valor en alguna parte de la RAM, significa que esta no puede ser cambiada bajo ninguna circunstancia
# El Heap
    El heap es un segmento dentro de la RAM que busca variables que se inicialicen con "new", tales como listas y colas
# El destructor
El destructor es un elemento dentro de la sintaxis de C++, que utiliza el heap para evitar fugas de memoria 
    1. La variable se declara y se inicializa con new
    2. Guarda su valor en una posición del heap
    3. Con el destructor, se destruye al momento de terminar la compilación
Si el destructor no se crea, cada vez que compilemos, los datos de compilaciones anteriores se irán acumulando en la misma posición de la RAM, generando que se relantice en proceso de compilación y sobrecargando  la RAM

# El stack
El stack es un segmento dentro del código, donde se guardan las variables 
