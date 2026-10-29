# Concepto de herencia-Actividad 5
    Si observamos el código de CircularExplosion, encontramos varios casos de herencia

    captura de nuevo la memoria que ocupa el objeto CircularExplosion compara la jerarquía de clases con los campos en memoria del objeto. ¿Qué puedes observar? ¿Qué información te proporciona el depurador? ¿Qué puedes concluir?

# ¿Cómo se implementa la herencia en C++?
    La herencia se implementa en las clases de c++, es decir, tal como en c# existen clases hijas o clases padres ya que comparten variables en común, y de una manera u otra, dentro del diseño de programación orientada a objetos, las clases "hijas" se consideran subclases de las clases "padres"
    También es primordial el concepto de herencia cuando hablamos de abstracción, solo que otras implementaciones y funcionalidades diferentes

# Herencia múltiple en C++
    La herencia múltiple en c++, se considera una característica que permite que una clase derive de más de una clase base.
    Esto significa que la clase hija puede heredar atributos y métodos de varias clases al mismo tiempo.
    ```
    
    ```
# Concepto de polimorfismo-Actividad 6
Observemos el código 
```
    // Actualiza todas las partículas
    for (int i = 0; i < particles.size(); i++) {
		    particles[i]->update(dt);
		    }
```
# Métodos virtuales-Abstracción
Cuando en C++, utilizamos el concepto "virtual", es cuando nos referimos a el concepto de abstracción, por eso en el código ExplosionCircle vemos esta clase Particle:
```
class Particle {
		public:
				virtual ~Particle() {}
				virtual void update(float dt) = 0;
				virtual void draw() = 0;
				virtual bool isDead() const = 0;
				// Nuevo método para saber si la partícula (tipo RisingParticle) debe explotar
				virtual bool shouldExplode() const { return false; }
				// Métodos para obtener posición y color, para usarlos en explosiones
				virtual glm::vec2 getPosition() const { return glm::vec2(0, 0); }
				virtual ofColor getColor() const { return ofColor(255); }
		};
```
contenemos esto acá, y la manera de llamarlos, es a través de punteros, pero hay un caso:
Estos métodos, dependiendo de la instancia de objeto que estemos aplicando, llaman el mismo método, solo que contienen diferente funcionalidad dentro del mismo, cuando aplicamos esos casos, se aplica el concepto de polimorfismo:
# Ejemplo dentro del mismo código
```
		    void draw() override {
				    ofSetColor(color);
				    ofDrawCircle(position, size);
				    }
```
Aquí estamos llamando el método virtual para la explosión circular
```
		    void draw() override {
				    ofSetColor(color);
				    ofDrawRectangle(position.x, position.y, size, size);
				    }
```
Aquí también estamos llamando el mismo método, solo que ahora es para dibujar el rectángulo, por ende tiene diferente contenido el mismo método
En todos estos ejemplos, pudimos observar casos de herencia, abstracción y polimorfismo
