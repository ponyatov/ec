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

/// @defgroup repl repl
/// @brief interactive command line
/// @{
/// @}
class REPL {
    static int queryId;  ///< autoincremented command/query id
    static bool active;  ///< @ref repl in command entry mode
    static char ps[];    ///< @ref quaryId `>`
   public:
    static void repl();     ///< interactive command console
    static void incId();    ///< increment @ref queryId & reformat @ref ps
    static void restart();  ///< restart active REPL
};

extern REPL repl;  ///< singleton: command line shell


/// @defgroup syntax syntax
/// @brief command parser
/// @{
extern int yylex();                    ///< lexer
extern int yylineno;                   ///< line number
extern char *yyfile;                   ///< current file name
extern FILE *yyin;                     ///< file handler
extern char *yytext;                   ///< lexeme (token) string value
extern void parse(char *);             ///< parse string
extern int yyparse();                  ///< parser
extern void yyerror(const char *msg);  ///< syntax error callback
#include "ec.yacc.hpp"
/// @}
