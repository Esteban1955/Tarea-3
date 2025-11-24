#include <iostream>
#include <string>
using namespace std;

struct Producto {
    string nombre;
    int cantidad;
    float precio;
};

int main() {
    Producto inv[10];
    int num = 0;
    int opcion;
    
    do {
        cout << "\n1.Agregar\n2.Mostrar\n3.Buscar\n4.Salir\nOpcion: ";
        cin >> opcion;
        cin.ignore(); // la cosa esa q ignora los caracteres
        
        if(opcion == 1 && num < 10) {
            cout << "Nombre: ";
            getline(cin, inv[num].nombre); // funcion q lee lineas de texto completas y los saltos q es lo importante
            cout << "Cantidad: ";
            cin >> inv[num].cantidad;
            cout << "Precio: ";
            cin >> inv[num].precio;
            num++;
        }
        else if(opcion == 2) {
            float total = 0;
            for(int i = 0; i < num; i++) {
                float valor = inv[i].cantidad * inv[i].precio;
                cout << inv[i].nombre << " - " << inv[i].cantidad << " - $" << valor << endl;
                total += valor;
            }
            cout << "Total: $" << total << endl;
        }
        else if(opcion == 3) {
            string nombre;
            cout << "Buscar: ";
            getline(cin, nombre);
            for(int i = 0; i < num; i++) {
                if(inv[i].nombre.find(nombre) != string::npos) {
                    cout << "Encontrado: " << inv[i].nombre << endl;
                }
            }
        }
        
    } while(opcion != 4);
    
    return 0;
}
