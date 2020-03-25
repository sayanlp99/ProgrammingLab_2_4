#include<stdio.h>
#include<math.h>
#include<stdlib.h>
int arr[20];
int count;
void write(int n){
	int i,j;
	printf("Solution %d:\n",++count);
	for(i=1;i<=n;++i)
		printf(" %d",i);
	for(i=1;i<=n;++i){
		printf("\n%d",i);
		for(j=1;j<=n;++j){
			if(arr[i]==j)
				printf(" Q");
			else
				printf(" _");
		}
	}
	printf("\n");
}
int place(int row, int column){
	int i;
	for(i=1;i<=row-1;++i){
		if(arr[i]==column)
			return 0;
		else
			if(abs(arr[i]-column)==abs(i-row))
				return 0;
	}
	return 1;
}
int nQueens(int row, int n){
	for(int i=1;i<=n;++i){
		if(place(row,i)){
			arr[row]=i;
			if(row==n)
		    	write(n);
			else
		    	nQueens(row+1,n);
	  	}
	}
}
int main(){
	int n, i, j;
	printf("Enter number of queens: ");
	scanf("%d",&n);
	nQueens(1,n);
	return 0;
}