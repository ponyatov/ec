%{
    #include "ec.hpp"
%}

%option noyywrap yylineno

%x comment                          

s  [+\-]
n  [0-9]

%%
\#!.*               {}                  // #! shebang
\/\/.*              {}                  // # line comment

{s}?{n}+\.{n}+      {yylval.f = atof(yytext); return _NUM;}
{s}?{n}+            {yylval.n = atoi(yytext); return _INT;}

"repl"              {return _REPL;}

[ \t\r\n]+          {}                  // drop spaces
.                   {yyerror("");}      // any undetected char

%%
char *yyfile = nullptr;

void parse(char *source) {
    std::cerr << "\n[" << source << "]\n";
    YY_BUFFER_STATE buffer = yy_scan_string(source);
    yy_switch_to_buffer(buffer);
    yyparse();
    yy_delete_buffer(buffer);
}
