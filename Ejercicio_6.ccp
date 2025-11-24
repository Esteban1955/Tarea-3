#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

struct Barco {
    int x ; // fila 0..9
    int y ; // columna 0..9
    int tam ; // longitud
    int impactos ; // para llevar cuenta
};

int main() {
    srand(time(0));
    Barco barcos[3] = {{2,3,2,0}, {5,5,3,0}, {7,1,4,0}};
    int hundidos = 0;
    int x, y;
    
    // barcos en tablero simple
    int tablero[10][10] = {0};
    tablero[2][3] = 1; tablero[2][4] = 1;
    tablero[5][5] = 2; tablero[5][6] = 2; tablero[5][7] = 2;  
    tablero[7][1] = 3; tablero[7][2] = 3; tablero[7][3] = 3; tablero[7][4] = 3;
    
    cout << "Juego Batalla naval" << endl;
    
    while(hundidos < 3) {
        cout << "Coordenadas (fila columna): ";
        cin >> x >> y;
        
        if(tablero[x][y] > 0) {
            int barco = tablero[x][y] - 1;
            barcos[barco].impactos++;
            cout << "¡IMPACTO!" << endl;
            
            if(barcos[barco].impactos == barcos[barco].tam) {
                hundidos++;
                cout << "¡BARCO HUNDIDO!" << endl;
            }
            tablero[x][y] = -1;
        } else {
            cout << "agua" << endl;
        }
        
        cout << "Barcos hundidos: " << hundidos << "/3" << endl;
    }
    
    cout << "¡GANASTE!" << endl;
    return 0;
}
