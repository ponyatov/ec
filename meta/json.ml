(** JSON parser

    - from: lib/sample.json
    - tutorial:
      https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html *)

type token =          (**)
  | NULL              (* null   *)
  | INT of int        (* int    *)
  | FLOAT of float    (* float  *)
  | TRUE | FALSE      (* bool:  true|fase *)
  | STRING of string  (* str    *)
  | LQ | RQ           (* []     *)
  | LC | RC           (* {}     *)
  | COMMA | COLON     (* , :    *)
  | EOF               (* end-of-file *)
