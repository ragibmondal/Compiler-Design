%{
#include <stdio.h>
%}


%%

[a-z0-9%+-_]+@diu\.edu\.bd  { printf("Valid Email: %s\n",yytext);}
[ \n\t]   {}
.   { printf("Invalid: %s\n",yytext);}
%%


int main(){
    printf("Enter the Input:");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}