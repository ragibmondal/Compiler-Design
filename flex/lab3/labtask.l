%{
#include <stdio.h>
int key=0;
int id=0;
int op=0;
int num=0;
int fl=0;
int del=0;
%}

%%

"if"|"else"|"for"|"while"|"int"|"float" {  printf("Keyword: %s \n",yytext); key++; }
[a-zA-Z_][a-zA-Z0-9_]*              {  printf("Identifier: %s \n",yytext); id++;}
(\+|\-|\*|\/|=|<|>|==|<=|>=)        {  printf("Operator: %s \n", yytext); op++;}
[0-9]+                              {  printf("Integer: %s \n", yytext);num++;}
[0-9]+\.[0-9]+                      {  printf("Float: %s \n", yytext);fl++;}
[;{}(),]+                           {  printf("Delimeter: %s \n", yytext); del++;}
[ \t\n]+                            {  /* ignore whitespace */ }
.                                   {  /* ignore other characters */ }

%%

int main(){
       yylex();
       printf("Keyword : %d\n", key);
       printf("Identifier: %d\n", id);
       printf("Operation: %d\n", op);
       printf("Integer: %d\n", num);
       printf("Float: %d\n", fl);
       printf("Delimeter: %d\n",del);
       return 0;
}
int yywrap(){
    return 1;
}