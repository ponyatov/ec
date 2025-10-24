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
}

void arg(int argc, char *argv) {  //
    std::cerr << "arg[" << argc << "] = <" << argv << ">\n";
}

void signal_handler(int signal) {
    switch (signal) {
        case SIGINT:  // Ctrl+C
            std::cerr << "\nInterrupted! (Ctrl+C pressed)\n";
        case SIGKILL:
        case SIGTERM:  // async stop program
            exit(0);
    }
}

extern void yyerror(const char *msg) {  //
    std::cerr << "\n\n"
              << yyfile << ':' << yylineno << ' ' << msg << " [" << yytext
              << "]\n\n";
    exit(-1);
}
