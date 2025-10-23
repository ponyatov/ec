let apt () =
  let apt = open_out "apt.Debian" in
  output_string apt "\
git make curl fzf
code meld doxygen clang-format
g++ gdb cmake
flex bison ragel libreadline-dev
";
  close_out apt
