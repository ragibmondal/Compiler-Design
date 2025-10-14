%{
#include <stdio.h>
%}                                       
%%

"if"|"else"|"for"|"while"|"int"|"float" {  printf("Keyword: %s \n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*              {  printf("Identifier: %s \n",yytext);}
(\+|\-|\*|\/|=|<|>|==|<=|>=)        {  printf("Operator: %s \n", yytext);}
[0-9]+                              {  printf("Integer: %s \n", yytext);}
[0-9]+\.[0-9]+                      {  printf("Float: %s \n", yytext);}
[;{}(),]+                           {  printf("Delimeter: %s \n", yytext);}

%%

int main(){
       yylex();
       return 0;
}
int yywrap(){
    return 1;
}