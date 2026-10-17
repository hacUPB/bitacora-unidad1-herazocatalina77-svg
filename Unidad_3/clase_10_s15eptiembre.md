# Nuevo Código 
```
using System;
interface IAnimal{
		void HacerSonido();
		}
class Perro : IAnimal{
		public void HacerSonido()    {
				Console.WriteLine("El perro ladra: ¡Guau, guau!");
				}
		}
class Gato : IAnimal{
		public void HacerSonido()    {
				Console.WriteLine("El gato maúlla: ¡Miau, miau!");
				}
		}
class Program{
		static void Main()    {
				// Polimorfismo: Usamos la interfaz para tratar diferentes tipos de animales
				IAnimal[] animales = new IAnimal[]{
						new Perro(),
						new Gato()
						};
        foreach (IAnimal animal in animales){
		        animal.HacerSonido();
		        // Llamada polimórfica
		        }
		    }
}
```
    Observemos como la clase hacer sonido se llama dos veces para perro y para Gato, esto se logra gracias al concepto de programación orientada a objetos conocida como polimorfismo, y se sabe en cual debe actuar según la instancia que sea llamada junto al método, las cuales ocupan lugares diferentes en la memoria
# Actividad 4 (El concepto de encapsulamiento)
```
class AccessControl {
private:
		int privateVar;
protected:
		int protectedVar;
public:
		int publicVar;
		AccessControl() : privateVar(1), protectedVar(2), publicVar(3) {}
		};
int main() {
		AccessControl ac;
		ac.publicVar = 10;
		// Válido
		// ac.protectedVar = 20;
		// Error de compilación
		// ac.privateVar = 30;
		// Error de compilación
		return 0;
		}
```
# ¿Cuál es el error del código comentado?
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/variables_protegidas_clase.png)
En este caso, observamos que la clase AccesControl, tiene variables protegidas y privadas, las cuáles el main NO puede acceder directamente, por eso sale error
# prueba 2
![alt text](../bitacora-unidad1-herazocatalina77-svg/Capturas_prueba/Prueba_Encapsulamiento_2.png)

En este, al intentar compilar tampoco se pudo debido a que no se pudo tener acceso a una variable privada directamente desde una clase

# Ahora miremos este código
```
#include <iostream>
class MyClass {
private:
		int secret1;
		float secret2;
		char secret3;
public:
		MyClass(int s1, float s2, char s3) : secret1(s1), secret2(s2), secret3(s3) {}
    void printMembers() const {
		    std::cout << "secret1: " << secret1 << "\n";
		    std::cout << "secret2: " << secret2 << "\n";
		    std::cout << "secret3: " << secret3 << "\n";
		    }
		};
int main() {
		MyClass obj(42, 3.14f, 'A');
    // Usando reinterpret_cast para violar el encapsulamiento
    int* ptrInt = reinterpret_cast<int*>(&obj);
    float* ptrFloat = reinterpret_cast<float*>(ptrInt + 1);
    char* ptrChar = reinterpret_cast<char*>(ptrFloat + 1);
    // Accediendo y mostrando los valores privados
    std::cout << "Accediendo directamente a los miembros privados:\n";
    std::cout << "secret1: " << *ptrInt << "\n";
    // Accede a secret1
    std::cout << "secret2: " << *ptrFloat << "\n";
    // Accede a secret2
    std::cout << "secret3: " << *ptrChar << "\n";
    // Accede a secret3
    return 0;
    }
```
En este, al compilar se mostraron los resultados satisfactoriamente gracias a las líneas dentro del código:
```
    int* ptrInt = reinterpret_cast<int*>(&obj);
    float* ptrFloat = reinterpret_cast<float*>(ptrInt + 1);
    char* ptrChar = reinterpret_cast<char*>(ptrFloat + 1);
```
ya que son punteros, todos dependiendo del tipo de variable que sea,(por ejemplo: puntero tipo int para la variable int llamada secret 1, y así sucesivamente con el resto de variables) y así a través del puntero puedo acceder a ellas ya que no lo estoy haciendo de una manera directa, teniendo un mejor control sobre el concepto de encapsulamiento
