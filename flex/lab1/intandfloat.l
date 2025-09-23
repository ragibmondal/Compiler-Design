%{
#include <stdio.h>
%}

%%
[0-9]+       {printf("Intiger: %s\n",yytext);}
[0-9]+\.[0-9]+    {printf("Float: %s\n",yytext);}
[ \n\t]                {/*skip Whitespaces*/}
.                      {printf("Invalid: %s\n",yytext);}


%%

int main()
{
    printf("Enter Input:\n");
    yylex();
    return 0;

}
int yywrap(){ 
    /*end of input*/
    return 1;

}