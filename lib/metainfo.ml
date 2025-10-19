(** project metainfo *)

let app = "ec"
let version = "0.0.1"
let title = "E-lang Compiler"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"
let year = 2025
let license = "MIT"
let github = "https://github.com/ponyatov/"

let readme () =
  let readme = open_out "README.md" in
  output_string readme
    ("# `" ^ app ^ "` " ^ version ^ "\n## " ^ title ^ "\n\n" ^ "(c) " ^ author
   ^ " <<" ^ email ^ ">> " ^ string_of_int year ^ " " ^ license ^ "\n\ngithub: "
   ^ github ^ app ^ "\n");
  close_out readme

(* readme () *)
