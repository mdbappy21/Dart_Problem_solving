#include <bits/stdc++.h>

using namespace std;

int main() {
    int alturaPlaca, larguraPlaca, qtsPedidos;
    while (cin >> alturaPlaca) {
        cin >> larguraPlaca >> qtsPedidos;

        for (int i = 0; i < qtsPedidos; ++i) {
            int alturaPci, larguraPci;
            cin >> alturaPci >> larguraPci;

            if ((alturaPci <= alturaPlaca && larguraPci <= larguraPlaca) ||
                (alturaPci <= larguraPlaca && larguraPci <= alturaPlaca)) {
                cout << "Sim\n";
            } else {
                cout << "Nao\n";
            }
        }
    }
    return 0;
}
