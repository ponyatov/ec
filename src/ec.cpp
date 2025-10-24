#include "ec.hpp"

int main(int argc, char *argv[]) {  //
    arg(0, argv[0]);
    signal(SIGINT, signal_handler);
    for (int i = 1; i < argc; i++) {  //
        yyfile = argv[i];
        arg(i, argv[i]);
        assert(yyin = fopen(yyfile, "r"));
        yyparse();
        fclose(yyin);
        yyfile = nullptr;
    }
    REPL::repl();
}

void arg(int argc, char *argv) {  //
    std::cerr << "arg[" << argc << "] = <" << argv << ">\n";
}

void signal_handler(int signal) {
    switch (signal) {
        case SIGINT:  // Ctrl+C
            std::cerr << "\nInterrupted! (Ctrl+C pressed)\n";
            // REPL::restart();
            // break;
        case SIGSTOP:
        case SIGKILL:
        case SIGTERM:  // async stop program
            exit(0);
    }
}

void REPL::restart() {
    if (active) {
        rl_free_line_state();
        rl_cleanup_after_signal();
        rl_replace_line(ps, 0);
        rl_redisplay();
    }
}

bool REPL::active = false;
int REPL::queryId = 0;

REPL repl;

char REPL::ps[] = "\n123> ";

void REPL::incId() { sprintf(ps, "\n%.3i> ", ++queryId); }

void REPL::repl() {
    char *command;
    while (true) {
        active = true;
        incId();
        command = readline(ps);
        if (!command) break;
        active = false;
        if (strlen(command)) {
            add_history(command);
            parse(command);
        }
        free(command);
    }
}

void yyerror(const char *msg) {  //
    std::cerr << "\n\n"
              << yyfile << ':' << yylineno << ' ' << msg << " [" << yytext
              << "]\n\n"
              << std::flush;
    REPL::restart();
    // exit(-1);
}
