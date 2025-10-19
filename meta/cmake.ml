(** CMake cross-compiler file set *)

let lists () =
  let f = open_out "CMakeLists.txt" in
  close_out f

let presets () =
  let f = open_out "CMakePresets.json" in
  close_out f

  Sys.mkdir "cmake" 0o755 ;
 open_out "cmake/.gitignore" |> close_out
