(* E-lang operators *)

token Operator = 
  | '-' of minus
  | '+' of plus
  | '*' of star
  | '/' of slash
  | '%' of perc
  | '<' of less
  | '>' of great
  | '(' of lp
  | ')' of rp
  | '!' of excl
  | "asl" of asl
  | "asr" of asr
  | '&' of and
  | '|' of bar
  | '^' of pow

grammar Expr =
  | Par of lp Expr rp            (* (e)  *)
  | Int of int                   (* n    *)
  | Num of float                 (* f    *)
  | Neg of minus Expr            (* -e   *)
  | Pos of plus  Expr            (* +e   *)
  | Add of Expr plus        Expr (* e+e  *)
  | Sub of Expr minus       Expr (* e-e  *)
  | Mul of Expr star        Expr (* e*e  *)
  | Pow of Expr star star   Expr (* e**e *)
  | Div of Expr slash       Expr (* e/e  *)
  | Mod of Expr perc        Expr (* e%e  *)
  | Not of      excl        Expr (* !e   *)
  | ShL of Expr less  less  Expr (* e<<e *)
  | ShR of Expr great great Expr (* e>>e *)
  | And of Expr and         Expr (* e&e  *)
  | Or  of Expr bar         Expr (* e|e  *)
  | Xor of Expr pow         Expr (* e^e  *)
  | AsL of Expr asl         Expr (* e asl e *)
  | AsR of Expr asr         Expr (* e asr e *)
