Sys.mkdir "mk"

let touch name = 
  if not (Sys.file_exists name) then
    open_out name |> close_out

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

let src () = 
    touch "mk/mk.mk"

(*  *)

let var () = 
  touch "mk/var.mk"

let dir () = 
  touch "mk/dir.mk"

let tool () = 
    let mk = open_out "mk/tool.mk" in
    output_string mk "\
CURL   = curl -L -o
CF     = clang-format -style=file -i
GITREF = git clone -o gh --depth 1
#
OPAM   = /usr/local/bin/opam
OCAMLC = $(ODIR)/ocamlc
UTOP   = $(ODIR)/utop
DUNE   = $(ODIR)/dune
OFMT   = $(ODIR)/ocamlformat
OLSP   = $(ODIR)/ocamllsp
MENHIR = $(ODIR)/menhir
#
CC     = gcc
CXX    = g++
LD     = ld
";
    close_out mk

let rule () = 
  let mk =  open_out "mk/rule.mk" in
  output_string mk "\
$(BINFILE): $(C) $(CP) $(H) $(HP)
\t$(CXX) -o $@ $(C) $(CP) $(L)
";
  close_out mk

let ref () = 
    let mk = open_out "mk/ref.mk" in
    output_string mk "\
.PHONY: ref
ref: $(RF)
"; close_out mk

let gz () = 
    let mk = open_out "mk/gz.mk" in
    output_string mk "\
.PHONY: gz
gz: $(GZ)
"; close_out mk

let ocaml () = 
  touch "mk/ocaml.mk"

let install () = 
  let mk = open_out "mk/install.mk" in
  output_string mk "\
.PHONY: install update
install: doc ref gz ocaml
\t$(MAKE) update
update:
\tsudo apt update
\tsudo apt install -uy `cat apt.Debian`
"; close_out mk

let ai () = 
  touch "mk/ai.mk"

let patch () = 
  touch "mk/patch.mk"

let makefile =
  let mk = open_out "Makefile" in
  output_string mk "\
include mk/var.mk
include mk/dir.mk
include mk/rule.mk
include mk/ref.mk
include mk/gz.mk
include mk/ocaml.mk
include mk/install.mk
";
  close_out mk