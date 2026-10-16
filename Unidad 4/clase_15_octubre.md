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
Dentro de varios conceptos que se usan en el GL, esta línea de código tiene unos parámetros que demuestran: el tipo de figura que la GPU debe dibujar, y el tamaño del array para definir los vértices.
Entonces, al intentar cambiar esos parámetros, podemos ver varios resultados en como la GPU reciba las instrucciones
    1. Si cambiamos el GL_TRIANGLES a GL_LINES, la figura cambiará
    2. Lo mismo aplica para GL_POINTS, ya que la figura cambia 
    3. Si cambiamos el segundo número del conjunto de parámetros, si lo cambiaramos a 2, la cantidad de vértices cambia 
    4. Lo mismo aplica si cambiamos el número a uno mayor
```
// 17) Limpieza
glfwMakeContextCurrent(mainWindow);
glDeleteVertexArrays(1, &VAO);
glDeleteBuffers(1, &VBO);
glDeleteProgram(shaderProg);
glfwDestroyWindow(mainWindow);
glfwTerminate();
```
Estas líneas se encargan de limpiar todos los recursos utilizados por el OpenGL y el GLFW, para así evitar sobrecargas(una similitud a lo que se conocía como fuga de memoria en la unidad 2)

# ¿Qué es el comtexto de OpenGL?
El contexto de OpenGL son las herramientas que el lenguaje necesita para traducirle las instrucciones de los gráficos a la GPU

# ¿Cuál es el rol de la biblioteca GLFW?
Es la que representa el contexto que OpenGL necesita para traducir las instrucciones a la GPU
# ¿Por qué crees que OpenGL necesita un contexto?

# ¿En últimas qué es el framebuffer y a qué te recuerda de las primeras unidades del curso?
Me recuerda a cuándo usabamos el emulador y dependiendo del valor que colocabámos en la variable, llenabámos diferentes secciones de la pantalla de negro
# ¿Qué relación tiene el viewport y el framebuffer?

# ¿En todo la analizado hasta ahora qué rol juega los drivers de la GPU y la GPU misma?

# ¿Por qué crees que sea necesario activar el VSync? ¿Si no lo activas y la imagen es estática qué crees que pase, y si es dinámica?

# En esta unidad estamos usando OpenGL moderno, pero ¿Qué es OpenGL Legacy? ¿Qué diferencias hay entre ambos?

# ¿Qué es el shader program? ¿Por qué es importante en OpenGL moderno?

# Trata de revisar el código setupTriangle(), intuitivamente ¿Qué crees que hace? ¿Qué crees que es el VAO y el VBO?

# En el ciclo principal (game loop) de OpenGL, notaste que en cada frame (cuadro) le decimos a openGL que use el shader program y el VAO. Si le indicas esto antes del game loop ¿Será necesario seguirlo haciendo en cada loop? Si no es necesario ¿En qué casos crees que esto puede ser útil?

# Finalmente, recuerda lo que hace glfwSwapBuffers(mainWindow); ¿Por qué crees que es importante? ¿Qué pasaría si no lo llamas? ¿Cómo explicas lo que pasa si no lo llamas? (experimenta)