%{
#include <stdio.h>
%}

%%
abb { printf("Mached: 'abb' %s \n",yytext);}
a*b+ { printf("Mached: 'a*b+' %s \n",yytext);}
a+   { printf("Mached: 'a+' %s \n",yytext);}
.[ \n \t] { }
%%   
int main(){
    yylex();
    return 0;
    }

int yywrap(){
    return 1;
}