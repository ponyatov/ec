(** C++/POSIX code generation *)

let hpp () =
  let hpp = open_out "inc/ec.hpp" in
  close_out hpp

let cpp () =
  let cpp = open_out "inc/ec.cpp" in
  close_out cpp

let lex () =
  let lex = open_out "inc/ec.lex" in
  close_out lex

let yacc () =
  let yacc = open_out "inc/ec.yacc" in
  close_out yacc

let ini () =
  let ini = open_out "lib/ec.ini" in
  close_out ini
