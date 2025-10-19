(** VSCode integration *)


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
