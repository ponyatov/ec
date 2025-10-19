(** CMake cross-compiler file set *)

let lists () =
  let f = open_out "CMakeLists.txt" in
  close_out f

let lists () =
  let f = open_out "CMakePresets.json" in
  close_out f
