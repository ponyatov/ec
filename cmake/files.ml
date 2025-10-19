(** file generation snippets *)

let touch name = open_out name |> close_out

let mkdir name =
  Sys.mkdir name 0o755;
  let f = open_out (name ^ "/.gitignore") in
  output_string f ".gitignore\n";
  close_out f
