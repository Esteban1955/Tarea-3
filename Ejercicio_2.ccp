#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    float temps[7];
    int opcion;
    int datosCapturados = 0; 
    
    do {
        cout << "1. Capturar temperaturas" << endl;
        cout << "2. Ver estadisticas" << endl;
        cout << "3. Salir" << endl;
        cout << "Opcion: ";
        cin >> opcion;
        
        switch(opcion) {
            case 1:
                cout << "Ingresa 7 temperaturas:" << endl;
                for(int i = 0; i < 7; i++) {
                    cout << "Dia " << i+1 << ": ";
                    cin >> temps[i];
                }
                datosCapturados = 1;
                break;
                
            case 2:
                if(datosCapturados == 1) {
                    float max = temps[0];
                    float min = temps[0];
                    float suma = 0;
                    int diaMax = 1;
                    int diaMin = 1;
                    
                    for(int i = 0; i < 7; i++) {
                        if(temps[i] > max) {
                            max = temps[i];
                            diaMax = i+1;
                        }
                        if(temps[i] < min) {
                            min = temps[i];
                            diaMin = i+1;
                        }
                        suma += temps[i];
                    }
                    
                    cout << "Maxima: " << max << " (Dia " << diaMax << ")" << endl;
                    cout << "Minima: " << min << " (Dia " << diaMin << ")" << endl;
                    cout << fixed << setprecision(2);
                    cout << "Promedio: " << suma/7 << endl;
                } else {
                    cout << "Primero captura temperaturas" << endl;
                }
                break;
                
            case 3:
                cout << "bye" << endl;
                break;
                
            default:
                cout << "Opcion invalida" << endl;
        }
        
    } while(opcion != 3);
    
    return 0;
}
