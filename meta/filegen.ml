(** generate project structure *)

let mk () =
  let mf = open_out "Makefile" in
  mf |> close_out

let giti () =
  let giti = open_out ".gitignore" in
  (* for i in ["*~";"*.swp";"*.log"]: output_string giti i; *)
  output_string giti "*~\n";
  output_string giti "*.swp\n";
  output_string giti "*.log\n";
  output_string giti "!.gitignore\n";
  giti |> close_out
;;

giti ()

let cf () =
  let cf = open_out ".clang-format" in
  cf |> close_out

let ofmt () =
  let ofmt = open_out ".ocamlformat" in
  ofmt |> close_out
