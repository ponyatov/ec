(** project metainfo *)

let app = "ec"
let version = "0.0.1"
let title = "E-lang Compiler"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"
let year = 2025
let license = "MIT"
let github = "https://github.com/ponyatov/${APP}"

let readme () = 
  print_endline ("# `" ^ app ^ "` " ^ version ^ "\n## " ^ title ^ "\n\n")