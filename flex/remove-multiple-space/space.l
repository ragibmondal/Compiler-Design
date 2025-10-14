%{
#include <stdio.h>
%}

%%

[ ]+    { printf(" "); }
[^\n ]+  { printf("%s",yytext); }
[\n]    { printf("\n"); }

%%

int main(){
    printf("Enter Your Input: ");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}