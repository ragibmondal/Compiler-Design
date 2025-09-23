%{
#include <stdio.h>
%}

%%
[a-z0-9%+-]+@diu\.edu\.bd  {printf("Valid mail %s\n",yytext);}
[ \n\t]                {/*skip Whitespaces*/}
.                      {printf("Invalid: %s\n",yytext);}

%%
int main(){
    printf("Enter input:");
    yylex();

}

int yywrap(){ 
    return 1;

}