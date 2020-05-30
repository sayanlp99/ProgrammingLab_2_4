#include <stdio.h>
int sum_of_natural_numbers(int);
int main(){
    int n;
    printf("Enter the number: ");
    scanf("%d", &n);
    printf("Sum of %d Natural Numbers is %d\n", n, sum_of_natural_numbers(n));
    return 0;
}
int sum_of_natural_numbers(int n){
    if(n == 0)
        return 0;
    return (n + sum_of_natural_numbers(n-1));
}
