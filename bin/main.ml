open Boks

let usage_msg = "boks -p <padding size> -a <arrow size> <text1> [<text2>] ..."
let padlen = ref 3
let arrow = ref "<--->"
let texts = ref []

let accept_text t =
  texts := !texts @ [t]

let speclist = [
  ("-p", Arg.Set_int padlen, "Padding size");
  ("-a", Arg.Set_string arrow, "Arrow");
]

let () =
  Arg.parse speclist accept_text usage_msg;
  let padlen = !padlen in
  let arrow = !arrow in
  let texts =
    if List.is_empty !texts then ["moo"] else !texts
  in
  boks ~padlen ~arrow texts
