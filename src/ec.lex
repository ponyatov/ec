%{
    #include "ec.hpp"
%}

%option noyywrap yylineno

%%
.       {yyerror("");}  // any undetected char

%%
char *yyfile = nullptr;
