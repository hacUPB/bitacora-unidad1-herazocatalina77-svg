En esta unidad vamos a utilizar los conceptos de programación orientada a objetos, y que rol están haciendo.
# Recordemos...
# Los conceptos de POO
    1. Encapsulamiento
    2. Herencia
    3. Polimorfismo
    4. Abstracción
# Entonces tengamos en cuenta que se hace en c++
    -Memoria y herencia
    -Mecanismo del polimorfismo
    -Barrera del encapsulamiento
    El rol de los conceptos en las secciones de memoria
# Código de la actividad 3
        ¿Qué está haciendo la aplicación?
        Dentro de las secciones de código se observan diferentes métodos, los que génran las partículas, la misma clase partícula
```
        class ofApp : public ofBaseApp {
		public:
				void setup();
				void update();
				void draw();
				void mousePressed(int x, int y, int button);
				void keyPressed(int key);
		    std::vector<Particle*> particles;
		    ~ofApp();
		private:
				void createRisingParticle();
};
```
# predicción del código
    hipótesis: ¿Cómo se va a guardar en la memoria?
    Teniendo en cuenta el contenido de cada una de las funciones llamadas, los vallores que tangan se guardaran en diferentes espacios de la nemoria
# Usando los breakpoints: conclusiones
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/unidad3_sesion1.png)
    Posición en la RAM de la variable dt
    Actualmente las únicas que tienen valores 
