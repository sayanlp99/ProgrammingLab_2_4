#include<stdio.h>
int isWeighable(int n, int a[50], int d){
    int s = 0;
    for(int i=0; i<n; i++)
        s = s + a[i];
    if(d <= s)
        return 1;
    else
        return 0;
}
int main(){
    int n, a[50], d;
    scanf("%d", &n);
    for(int i=0; i<n; i++)
        scanf("%d", &a[i]);
    scanf("%d", &d);
    if(isWeighable(n, a, d))
        printf("YES\n");
    else
        printf("NO\n");
}
