Sys.mkdir "mk"

let touch name = 
  if not (Sys.file_exists name) then
    open_out name |> close_out

let linux () = 
    touch "mk/linux.mk"

let gz () = 
    touch "mk/gz.mk"

let version () = 
    touch "mk/version.mk"

let cross () = 
    touch "mk/cross.mk"

let all () = 
    touch "mk/all.mk"

let net () = 
    touch "mk/mk.mk"

let pkg () = 
    touch "mk/mk.mk"

let doc () = 
    touch "mk/mk.mk"

let dotnet () = 
    touch "mk/mk.mk"

let format () = 
    touch "mk/mk.mk"

let llvm () = 
    touch "mk/mk.mk"

let debstrap () = 
    touch "mk/mk.mk"

let tool () = 
    touch "mk/mk.mk"

let src () = 
    touch "mk/mk.mk"

let libc () = 
    touch "mk/mk.mk"

let .gitign () = 
  touch "mk/mk.mk"

let var () = 
    touch "mk/mk.mk"

let docker () = 
    touch "mk/mk.mk"

let python () = 
    touch "mk/mk.mk"

let clean () = 
    touch "mk/mk.mk"

let qucs () = 
    touch "mk/mk.mk"

let ts () = 
    touch "mk/mk.mk"

let debug () = 
    touch "mk/mk.mk"

let boot () = 
    touch "mk/mk.mk"

let go () = 
    touch "mk/mk.mk"

let dir () = 
    touch "mk/mk.mk"

let ref () = 
    touch "mk/mk.mk"

let pcpp () = 
    touch "mk/mk.mk"

let ocaml () = 
    touch "mk/ocaml.mk"

let rule () = 
    touch "mk/rule.mk"

let install () = 
    touch "mk/install.mk"

let patch () = 
    touch "mk/patch.mk"

let ai () = 
    touch "mk/ai.mk"

