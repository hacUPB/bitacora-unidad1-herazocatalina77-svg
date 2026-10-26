# How do Game Graphics Work?
    -Vertex Shading: Este consiste en que identifique las posiciones de cada modelo 3d para traducirlo y reproducirlo en la pantalla teniendo en cuenta la ubicación del modelo y la ubicación de la cámara
    -Rasterization: Casi todos los modelos 3d están formados por polígonos triangulares, el computador trata de identificar cuantos píxeles gasta de la pantalla
    buffer visibility
    -Fragment Shading: 

# ¿Cuáles son los tres pasos claves del pipeline de OpenGL? Explica en tus propias palabras cuál es el objetivo de cada paso.

# La gran novedad que introduce OpenGL moderno es el pipeline programable. ¿Qué significa esto? ¿Qué diferencia hay entre el pipeline fijo y el programable? ¿Qué ventajas le ves a esto? y si el pipeline es programable, ¿Qué tengo que programar?
Las diferencias entre el pipeline fijo y el programable es que existe más control sobre los shaders en el pipeline controlabel ya que puedes controlar los valores 
# Si fueras a describir el proceso de rasterización ¿Qué dirías?
El proceso de rasterización consiste en que el computador identifique los vértices del polígono y su ubicación para saber su área, la cual el computador la llenará con píxeles y conocerá su espacio dentro de la pantalla al renderizar

# ¿Qué son los fragmentos? ¿Es lo mismo un fragmento que un pixel? ¿Por qué?

# Explica qué problema resuelve el Z-buffer y ¿Qué es el depth test
El z-Buffer resuelve el problema de dimensionar de manera correcta la profundidad de una escena desde la cámara, es decir, muchos modelos 3d  son un cuerpo completo, por lo cual al renderizar en una pantalla 2d se debe identificar cuáles objetos son visibles y cuáles están unos encima de otros.
El rol del z-buffer es identificar la posición de los objetos dentro del eje z 
# ¿Por qué se presenta el problema de la aliasing? ¿Qué es el anti-aliasing?

# ¿Qué relación hay entre la iluminación y el fragment shader? Siempre es necesario tener en cuenta la iluminación en un fragment shader? o puedo hacer un fragment shader sin iluminación? Explica que implicaciones tiene esto.
El fragment shader es el que identifica donde está el punto de luz y que tan alejado está del polígono de tal modelo
Teniendo en cuenta la posición de este polígono con respecto a la fuente de luz, se hacen unos cálculos teniendo en cuenta el RGB y las posiciones de la normal del polígono (la normal de un polígono en un modelo 3d es un vector que es perpendicular a ese polígono) y el vector dirección de la luz.
El fragment shader técnicamente puede existir sin una fuente de iluminación, pero eso implica que no van a haber cálculos los cuales jueguen con los colores para crear un efecto de luz/sombra, lo cual hace que los materiales se vean planos, irrealistas y poco estéticos
# ¿Qué implica para la GPU que una aplicación tenga múltiples fuentes de iluminación?

# Objetos en Open GL
```
// Crea la variable que contendrá el ID del objeto
unsigned int objectId = 0;
// Genera el objeto y asigna un ID único
glGenObject(1, &objectId);
// Asocia el objeto a un destino específico dentro del contexto de
OpenGL.glBindObject(GL_WINDOW_TARGET, objectId);
// Establece opciones para el objeto
glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_WIDTH,  800);
glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_HEIGHT, 600);
// Hace una desactivación del objeto o un UNBINDING
glBindObject(GL_WINDOW_TARGET, 0);
```
    Este segmento de código muestra la creación de un objeto en OpenGL
