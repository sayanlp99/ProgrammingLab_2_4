#include<stdio.h>
int main(){
    int n, m[10][10], p[10], i, l, j, k, q;
    printf("Enter number of matrices: ");
    scanf("%d",&n);
    for(i=1,i<=n,i++){
        m[i][j] = 0;
    }
    for(i=1, i<n, i++){
        for(i=1, i<=n-1, i++){
            j=j+1;
            m[i][j]=9999;
            for(k=1;k<=j-1;k++){
                q=m[i][j]+m[k+i][j]+(p[i-1]*p[k]*p[j]);
                if(q<m[i][j]){
                    m[i][j]=q;
                }
            }
        }
    }
    return 0;
}