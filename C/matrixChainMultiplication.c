#include<stdio.h>
#include<limits.h>
int main(){    
    int n,m[10][10],p[10],l,j,k,q,i=0;
    printf("Enter number of matrices: ");
    scanf("%d",&n);
    printf("Enter dimensions of the matrices:\n");
    for(i=0;i<=n;i++){
        printf("[d%d]:",i+1);
        scanf("%d",&p[i]);
    }
    for(i=1;i<n;i++){
        m[i][i]=0;
    }
    for(l=2;l<n;l++){
        for(i=1;i<n-l+1;i++){
            j=i+l-1;
            m[i][j]=INT_MAX;
            for(k=i;k<=j-1;k++){
                q=m[i][k]+m[k+1][j]+(p[i-1]*p[k]*p[j]);
                if(q<m[i][j]){
                    m[i][j]=q;
                }
            }
        }
    }
    printf("The number of steps in the Multiplication: %d\n", m[1][n-1]);
    return 0;
}