#include <bits/stdc++.h>
using namespace std;

int main() {
    long long int N;
    cin >> N;
    vector<long long int> star(N), sheep(N);
    
    long long int sum_trak = 0, sum_sheep = 0;
    
    for(int i = 0; i < N; i++) {
        cin >> sheep[i];
        star[i] = 0;
    }
    
    int i = 0;
    while(1) {
        if(i == 0 && sheep[i] % 2 == 0) {
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            break;
        } else if(i == N - 1 && sheep[i] % 2 == 1) {
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            break;
        } else if(sheep[i] % 2 == 1) {
            sheep[i]--;
            star[i] = 1;
            i++;
        } else if(sheep[i] % 2 == 0) {
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            i--;
        }
    }

    for(i = 0; i < N; i++) {
        sum_sheep += sheep[i];
        sum_trak += star[i];
    }

    cout << sum_trak << " " << sum_sheep << endl;
    return 0;
}
