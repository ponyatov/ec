(** generate project structure *)

let mk () =
  let mf = open_out "Makefile" in
  mf |> ignore mk

let giti () =
  let giti = open_out ".gitignore" in
  giti |> ignore giti

let cf () =
  let cf = open_out ".clang-format" in
  cf |> ignore

let ofmt () =
  let ofmt = open_out ".ocamlformat" in
  ofmt |> ignore
