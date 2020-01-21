#include<stdio.h>
int n, l, u, i, a[100], item, pos, m;
int binarySearch(int l, int u, int item, int a[100]);
int main(){
    printf("Enter number of elements: ");
    scanf("%d",&n);
    printf("Enter elements:\n");
    for(i = 0; i < n; i++){
        printf("[%d]: ",i+1);
        scanf("%d",&a[i]);
    }
    printf("Enter Element to be searched: ");
    scanf("%d", &item);
    l = 0;
    u = n-1;
    pos = binarySearch(l, u, item, a);
    if (pos == -1)
        printf("Element not found\n");
    else
        printf("Element %d, found at Position %d",a[pos] , pos+1);
    return 0;
}
int binarySearch(int l, int u, int item, int a[100]){
    while(l <= u){
        m = (l+u)/2;
        if(a[m] == item)
            return m;
        else if(item < a[m])
            u = m-1;
        else
            l = m+1;
    }
    return -1;
}