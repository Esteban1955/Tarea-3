#include <iostream>
using namespace std;

int main() {
    int m[3][3];
    
    cout << "Ingresa 9 numeros para la matriz:" << endl;
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            cin >> m[i][j];
        }
    }
    
    int opcion = 0;
    while(opcion != 5) {
        cout << "\nMenu:" << endl;
        cout << "1. Ver matriz" << endl;
        cout << "2. Suma total" << endl;
        cout << "3. Diagonal principal" << endl;
        cout << "4. Diagonal secundaria" << endl;
        cout << "5. Salir" << endl;
        cout << "Opcion: ";
        cin >> opcion;
        
        switch(opcion) {
            case 1:
                cout << "Matriz:" << endl;
                for(int i = 0; i < 3; i++) {
                    for(int j = 0; j < 3; j++) {
                        cout << m[i][j] << " ";
                    }
                    cout << endl;
                }
                break;
                
            case 2: {
                int suma = 0;
                for(int i = 0; i < 3; i++) {
                    for(int j = 0; j < 3; j++) {
                        suma += m[i][j];
                    }
                }
                cout << "Suma total: " << suma << endl;
                break;
            }
                
            case 3: {
                int suma = 0;
                for(int i = 0; i < 3; i++) {
                    suma += m[i][i];
                }
                cout << "Diagonal principal: " << suma << endl;
                break;
            }
                
            case 4: {
                int suma = 0;
                for(int i = 0; i < 3; i++) {
                    suma += m[i][2-i];
                }
                cout << "Diagonal secundaria: " << suma << endl;
                break;
            }
                
            case 5:
                cout << "Adios!" << endl;
                break;
                
            default:
                cout << "Opcion invalida" << endl;
        }
    }
    
    return 0;
}
