%{
    #include <stdio.h>
%}

identifier [a-zA-Z_][a-zA-Z0-9_]*
%%

{identifier} { printf("Valid Identifier: %s\n",yytext);}
[ \n\t]+ ;
.     {printf("Invalid: %s\n",yytext);}

%%

int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
    }