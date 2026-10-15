# Análisis del triángulo simple-Recordemos conceptos

# Open GL
    Open GL es una base de datos interna que logra dibujar gráficos con la GPU, es el lenguaje que se usa para que la GPU lea que es lo que debe dibujar y como
# GLFW 
    Este es una biblioteca que permite crear los contextos y el hilo de flujo de instrucciones del programa para crear los gráficos, es decir, le da todas las herramientas para crear los gráficos y otras configuraciones para el diseño de los shaders.
    Por eso, dentro del código el GLFW se debe inicializar antes de usar cualquiera de sus funciones
# FrameBuffer
Es la porción de memoria que se reserva para tomar los pixeles que se necesiten para el gráfico
```
int bufferWidth, bufferHeight;
glfwGetFramebufferSize(mainWindow, &bufferWidth, &bufferHeight);

```
    Por eso, cuando tomamos los valores de &bufferWidth y &bufferHeight, al compilar cambia la distribución de los pixeles del triángulo
![alt text](../Capturas_prueba/bufferframe.png)
# Tengamos en cuenta...
```
glDrawArrays(GL_TRIANGLES, 0, 3);
```
Dentro de varios conceptos que se usan en el GL, estpa esta línea de código que muestra los parámetros 