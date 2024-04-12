#include <iostream>
using namespace std;

int main() {
    int a, b;
    while (scanf("%d:%d", &a, &b) != EOF) {
        cout << "Atraso maximo: ";
        if (a < 7 || (a == 7 && b == 0))
            cout << "0" << endl;
        else
            cout << ((a + 1) - 8) * 60 + b << endl;
    }
    return 0;
}
