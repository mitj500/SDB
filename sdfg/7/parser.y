%{
#include int yylex();
void yyerror(const char *);
%}
%token NUM %% S : E '\n'
{
printf("The value of the expression is %d\n", $1);
}
| E { printf("The value of the expression is %d\n", $1); }
;
E : E '+' T { $$ = $1 + $3; }
| E '-' T { $$ = $1 - $3; }
| T { $$ = $1; }
;
T : T '*' F { $$ = $1 * $3; }
| T '/' F { $$ = $1 / $3; }
| F { $$ = $1; }
;
F : '(' E ')' { $$ = $2; }
| NUM { $$ = $1; }
;
%%
void yyerror(const char *s)
{
fprintf(stderr, "Error: %s\n", s);
}
