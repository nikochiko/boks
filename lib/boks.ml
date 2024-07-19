let bok_edge padlen text =
  Printf.sprintf "+%s+" (String.make (String.length text + 2 * padlen) '-')

let bok_core padlen text =
  let padding = String.make padlen ' ' in
  Printf.sprintf "|%s%s%s|" padding text padding

let arrow len =
  Printf.sprintf "<%s>" (String.make len '-')

let boks ?(padlen=3) ?(arrowlen=3) texts =
  let conn = arrow arrowlen in
  let conn_space = String.make (String.length conn) ' ' in
  let boks_edge = String.concat
    conn_space
    (List.map (bok_edge padlen) texts)
  in
  let boks_core = String.concat
    conn
    (List.map (bok_core padlen) texts)
  in
  Printf.printf "%s\n%s\n%s\n" boks_edge boks_core boks_edge
