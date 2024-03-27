#include<bits/stdc++.h>
using namespace std;
int main()
{
    
    char input[20];
    while (~scanf("%s", input))
    {

        unsigned long long sum = 0;
        for (int i = strlen(input) - 1, j = 0; i >= 0; --i, ++j)
            sum += (input[i] - 'A' + 1) * (unsigned long long)pow(26, j);

        if (sum <= 16384)
            printf("%llu\n", sum);
        else
            puts("Essa coluna nao existe Tobias!");
    }

    return 0;
}