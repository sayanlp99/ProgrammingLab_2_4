#include<stdio.h>
#include<limits.h>
int main(){
    int n,i;
    int j, k, L, q;
    printf("Enter number of matrices: ");
    scanf("%d",&n);
    n++;
    int arr[n];
    printf("Enter dimensions:\n");
    for(i=0;i<n;i++){
        printf("[d%d]: ",i+1);
        scanf("%d",&arr[i]);
    }
    int size = sizeof(arr)/sizeof(arr[0]);
    int m[size][size];
    for (i=1; i<size; i++)
        m[i][i] = 0;
    for (L=2; L<size; L++){
        for (i=1; i<size-L+1; i++){
            j = i+L-1;
            m[i][j] = INT_MAX;
            for (k=i; k<=j-1; k++){
                q = m[i][k] + m[k+1][j] + arr[i-1]*arr[k]*arr[j];
                if (q < m[i][j]){
                    m[i][j] = q;
                }
            }
        }
    }
    printf("Minimum number of multiplications is %d \n", m[1][n-1]);
    return 0;
}