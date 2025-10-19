(** CMake cross-compiler file set *)

let lists () =
  let f = open_out "CMakeLists.txt" in
  close_out f

let presets () =
  let f = open_out "CMakePresets.json" in
  close_out f

let cmake () = files.mkdir "cmake"
