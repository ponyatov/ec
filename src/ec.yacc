%{
    #include "ec.hpp"
%}

%defines %union { int n; float f; std::string *s; }

%token<n> _INT
%token<f> _NUM
%token<s> _STR
%token<s> _ID
%token    _REPL

%%
syntax: | syntax expr | syntax repl

expr    : _INT          { std::cerr << "int:" <<  $1 << "\n"; }
        | _NUM          { std::cerr << "num:" <<  $1 << "\n"; }
        | _STR          { std::cerr << "num:" <<  $1 << "\n"; }
        | _ID           { std::cerr << "num:" <<  $1 << "\n"; }

repl    : _REPL         { REPL::repl();                       }
