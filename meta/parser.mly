// E lang parser

%{
  open AST
%}

/* Token declarations */
%token <unit> NULL VOID UNIT
%token <int> INT
%token <float> NUM
%token <bool> BOOL
%token <string> STR
%token <string> ID
%token LET IN EQUALS
%token PLUS MINUS STAR SLASH PERC
%token EXCL AND BAR
%token COMMA COLON
%token EOF

%start <AST.expr> syntax

%%

syntax:
| e = expr; EOF { e }
;

expr:
  | i = INT  { Int i  }
  | f = NUM  { Num i  }
  | b = BOOL { Bool b }
;
