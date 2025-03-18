%{
#include <stdio.h>
%}

%option noyywrap

%%
"//.*"                                  { printf("COMMENT/n  "); }
f [A-Za-z]+                             { printf("floatdcl id/n "); }
i [A-Za-z]+                             { printf("intdcl id/n "); }
[A-Za-z]+=[0-9]+                        { printf("id assign inum/n "); }
[A-Za-z]+=[A-Za-z]+\+[0-9]+\.[0-9]+     { printf("id assign id plus fnum/n"); }
p [A-Za-z]+                             { printf("print id/n "); }
[ \t]+                                  /* no cuenta tabs ni espacios */
\n                                      { printf("\n"); }

%%

int main() {
    yylex();
    return 0;
}


