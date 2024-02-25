#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    int m;
    while(cin>>n)
    {
        int count=0;
        for(int i=0;i<n;i++)
        {
            cin>>m;
            if(m)
                count++;
        }
        float M=ceil(n*.666);
        int x=(int) M;
        if(count>=x)
            cout<<"impeachment\n";
        else cout<<"acusacao arquivada\n";
    }
    return 0;
}