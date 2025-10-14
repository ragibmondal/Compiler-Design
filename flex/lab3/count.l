%{
#include <stdio.h>
int word_count=0;
int char_count=0;

%}

%%
[a-zA-Z0-9]+   { word_count++; char_count=char_count+yyleng; }
[^a-zA-Z0-9]+  {  }
%%

int main(){
    printf("Enter Input: \n");
    yylex();
    printf("\n Total WOrd Count: %d\n",word_count);
    printf("\n Total Character Count: %d\n",char_count);
    return 0;
}
int yywrap(){
    return 1;
}