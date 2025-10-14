%{
 #include <stdio.h>
 int single=0;
 int d=0;
%}

%%
\"[^"]*\" { printf("String Literal: %s\n",yytext);single++; }
\'[^']*\' { printf("String: %s\n",yytext);d++;}
.|[ \t\n]     { }

%%

int main(){
    yylex();
    printf("String: %d\n",single);
    printf("String literal: %d\n",d);
    return 0;

}
int yywrap(){
    return 1;
}