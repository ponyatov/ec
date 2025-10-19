(** VSCode integration *)

let mkd name = 
  if (not Sys.file_exists name) then Sys.mkdir name 0

let vscode () =
  Sys.file_exists 
  Sys.mkdir ".vscode" 0

let json name =
  let f = open_out (".vscode/" ^ name ^ ".json") in
  output_string f "{\n}\n";
  close_out f

let c_cpp_properties () = (**)
  json "c_cpp_properties"

  let launch () =  (**)
  json "launch"

  let extensions () =  (**)
  json "extensions"

  let tasks () =  (**)
  json "tasks"

  let settings () =  (**)
  json "settings"
