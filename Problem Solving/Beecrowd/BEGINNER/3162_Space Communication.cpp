#include <iostream>
#include <cmath>
#include <cstring>

using namespace std;

int min(int a, int b) {
    return a < b ? a : b;
}

double dist(int m[][3], int a, int b) {
    return sqrt(pow((m[a][0] - m[b][0]), 2) + pow((m[a][1] - m[b][1]), 2) + pow((m[a][2] - m[b][2]), 2));
}

int main() {
    int n;
    cin >> n;
    int m[11][3];

    memset(m, 0, sizeof(m));

    for (int i = 0; i < n; ++i) {
        cin >> m[i][0] >> m[i][1] >> m[i][2];
    }

    for (int i = 0; i < n; ++i) {
        int minimum = 0xFFFF;
        for (int j = 0; j < n; ++j) {
            if (i != j) {
                minimum = min(minimum, dist(m, i, j));
            }
        }

        if (minimum < 20) {
            cout << 'A' << endl;
        } else if (minimum < 50) {
            cout << 'M' << endl;
        } else {
            cout << 'B' << endl;
        }
    }

    return 0;
}
