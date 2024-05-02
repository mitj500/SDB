%
{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}
%%
[0-9]+ { yylval = atoi(yytext);
return NUM;
}
[-+*/\(\)\n]
{
return yytext[0];
}
[ \t] ; // Ignore whitespace .
{
fprintf(stderr, "Error: Invalid character %s\n", yytext); }
%% int yywrap()
{
return 1;
}
