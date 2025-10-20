(* E lang lexer *)
{
  open Parser  (* Gain access to Parser's token definitions *)
}

let dec = ['0'-'9']
let sign = ['+''-']
let space = [' ' '\t' '\r']+
let nl = '\n'

rule lexer = parse
    | space                 { lexer lexbuf  }
    | nl                    { EOL           }
    | sign? dec+ as lexeme  { INT(int_of_string lexeme) }
