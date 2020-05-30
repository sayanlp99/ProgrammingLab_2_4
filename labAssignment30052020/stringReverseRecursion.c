#include<stdio.h>
void reverse(char* begin, char* end){
    if(begin > end)
        return ;
    else{
        char temp = *begin;
        *begin = *end;
        *end = temp;
        reverse(begin+1,end-1);
    }
}

void reverse_word(char* start, char* begin ,char* end){
    if(*end=='\0'){
        reverse(begin,end-1);
        begin = end+1;
        reverse(start,end-1);
        return ;
    }
    if(*end==' '){
        reverse(begin,end-1);
        begin =end+1;
    }
    reverse_word(start,begin,end+1);
}
int main(){
    char s1[100];
    gets(s1);
    reverse_word(s1,s1,s1);
    puts(s1);
    return 0;
}
