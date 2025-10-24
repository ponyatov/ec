#pragma once

#include <assert.h>
#include <readline/history.h>
#include <readline/readline.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include <iostream>

/// @defgroup main main
/// @brief system startup
/// @{
extern int main(int argc, char *argv[]);  ///< POSIX entry point
extern void arg(int argc, char *argv);    ///< process command line argument
extern void signal_handler(int signal);   ///< system signals handler
/// @}

/// @defgroup syntax syntax
/// @brief command parser
/// @{
extern int yylex();                    ///< lexer
extern int yylineno;                   ///< line number
extern char *yyfile;                   ///< current file name
extern FILE *yyin;                     ///< file handler
extern char *yytext;                   ///< lexeme (token) string value
extern int yyparse();                  ///< parser
extern void yyerror(const char *msg);  ///< syntax error callback
#include "ec.yacc.hpp"
/// @}
