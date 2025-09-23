%{
#include <stdio.h>
%}

%%


"if"                   {printf("Keyword: %s\n",yytext);}
"else"                 {printf("Keyword: %s\n",yytext);}
"while"|"for"          {printf("Keyword: %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-0_]* {printf("Identifier: %s\n",yytext);}
[ \n\t]                {/*skip Whitespaces*/}
.                      {printf("Invalid: %s\n",yytext);}
[0-9]+                 {printf("Valid Intiger: %s\n",yytext);}
[0.0-9.9]+       {printf("Float: %s\n",yytext);}

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