#include<stdio.h>
int g[100][100];
void floyd(int n){
    int i,j,k;
    for(k=1;k<=n;k++){
        for(i=1;i<=n;i++){
            for(j=1;j<=n;j++){
                if((g[i][k]+g[k][j])<(g[i][j]))
                    g[i][j]=g[i][k]+g[k][j];
            }
        }
    }
}
int main(){
    int n,e,i,j,u,v,w;
    printf("Enter number of vertices: ");
    scanf("%d",&n);
    for(i=1;i<=n;i++){
        for(j=1;j<=n;j++){
            if(i==j)
            g[i][j]=0;
            else
            g[i][j]=9999;
        }   
    }
    printf("Enter number of edges: ");
    scanf("%d",&e);
    for(i=1;i<=e;i++){
        printf("Enter the starting vertex: ");
        scanf("%d",&u);
        printf("Enter the ending vertex: ");
        scanf("%d",&v);
        printf("Enter the corresponding weight: ");
        scanf("%d",&g[u][v]);
    }
    floyd(n);
    for(i=1;i<=n;i++){
        for(j=1;j<=n;j++){
            printf("%7d",g[i][j]);
        }
    printf("\n");
    }
    return 0;
}