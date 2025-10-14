%{
#include <stdio.h>
int v = 0, c = 0;
%}

%%

[aeiouAEIOU] { v++; printf("Vowel: %s\n", yytext); } /* Count vowels */
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] { c++; printf("Consonant: %s\n", yytext); } /* Count consonants */
[\n\r]+ { printf("Newline detected, stopping\n"); return 0; } /* Stop on newline or carriage return */
[^a-zA-Z\n\r] { printf("Ignored: %s\n", yytext); } /* Ignore non-alphabetic characters */
<<EOF>> { printf("EOF detected, stopping\n"); return 0; } /* Stop on EOF */

%%

int main() {
    printf("Enter a string (press Enter to finish):\n");
    printf("Starting yylex\n");
    yylex();
    printf("Finished yylex\n");
    printf("Vowels: %d\n", v);
    printf("Consonants: %d\n", c);
    return 0;
}

int yywrap() {
    return 1;
}