#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int main() {
    srand(time(0));
    int tortuga = 0, liebre = 0;
    int turno = 0;
    
    cout << "CARRERA: TORTUGA VS LIEBRE" << endl;
    cout << "Pista de 100 casillas" << endl;
    cout << "Iniciando carrera..." << endl << endl;
    
    while(tortuga < 99 && liebre < 99) {
        turno++;
        
        int movTortuga = rand() % 10 + 1;
        switch(movTortuga) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                tortuga += 3;
                break;
            case 6:
            case 7:
            case 8:
                tortuga += 1;
                break;
            case 9:
            case 10:
                tortuga -= 6;
                break;
        }
        
        int movLiebre = rand() % 10 + 1;
        switch(movLiebre) {
            case 1:
            case 2:
                liebre += 0;  
                break;
            case 3:
            case 4:
                liebre += 9;   
                break;
            case 5:
                liebre -= 12; 
                break;
            case 6:
            case 7:
            case 8:
                liebre += 1;  
                break;
            case 9:
            case 10:
                liebre -= 2;   
                break;
        }
        
        if(tortuga < 0) tortuga = 0;
        if(liebre < 0) liebre = 0;
        if(tortuga > 99) tortuga = 99;
        if(liebre > 99) liebre = 99;
        
        cout << "Turno " << turno << ": ";
        cout << "Tortuga=" << tortuga << ", Liebre=" << liebre << endl;
        

        cout << "T:";
        for(int i = 0; i < tortuga; i++) cout << " ";
        cout << "T" << endl;
        
        cout << "L:";
        for(int i = 0; i < liebre; i++) cout << " ";
        cout << "L" << endl << endl;
    }
    

    cout << "Se acaba la carrera" << endl;
    if(tortuga >= 99 && liebre >= 99) {
        cout << "¡Empataron!" << endl;
    } else if(tortuga >= 99) {
        cout << "¡Gana la tortuga!" << endl;
    } else {
        cout << "¡Gana la liebre!" << endl;
    }
    
    return 0;
}
