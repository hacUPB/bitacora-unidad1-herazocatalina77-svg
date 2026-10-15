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

