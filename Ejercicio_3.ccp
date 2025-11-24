#include <iostream>
#include <string>
using namespace std;

// Almacena datos de alumnos
struct Alumno {
    string nombre;
    string matricula;
    float promedio;
};

int main() {
    Alumno alumnos[5];  // arreglo para esos 5 alumnos
    int num = 0;        // Contador
    int opcion;
    
    do {
        cout << "\n1.Capturar\n2.Mostrar\n3.Mejor promedio\n4.Salir\nOpcion: ";
        cin >> opcion;
        cin.ignore();  // limpiar buffer para getline, "cin.ignore" descarta uno o más caracteres que quedaron en el búfer de entrada
        
        // datos de alumno
        if(opcion == 1 && num < 5) {
            cout << "Nombre: ";
            getline(cin, alumnos[num].nombre); // "getline" leé linea completa de texto y tambien saltos de linea
            cout << "Matricula: ";
            getline(cin, alumnos[num].matricula);
            cout << "Promedio: ";
            cin >> alumnos[num].promedio;
            num++;  // contador que esta incrementando
        }
        // lista de alumnos
        else if(opcion == 2) {
            for(int i = 0; i < num; i++) {
                cout << alumnos[i].nombre << " - " << alumnos[i].promedio << endl;
            }
        }
        // alumno con mejor promedio
        else if(opcion == 3 && num > 0) {
            int mejor = 0;  
            for(int i = 1; i < num; i++) {
                if(alumnos[i].promedio > alumnos[mejor].promedio) {
                    mejor = i;
                }
            }
            cout << "Mejor: " << alumnos[mejor].nombre << " - " << alumnos[mejor].promedio << endl;
        }
        
    } while(opcion != 4);
    
    return 0;
}
