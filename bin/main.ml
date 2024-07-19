open Boks

let usage_msg = "boks -p <padding size> -a <arrow size> <text1> [<text2>] ..."
let padlen = ref 3
let arrowlen = ref 3
let texts = ref []

let accept_text t =
  texts := !texts @ [t]

let speclist = [
  ("-p", Arg.Set_int padlen, "Padding size");
  ("-a", Arg.Set_int arrowlen, "Arrow size");
]

let () =
  Arg.parse speclist accept_text usage_msg;
  let padlen = !padlen in
  let arrowlen = !arrowlen in
  let texts = !texts in
  boks ~padlen ~arrowlen texts
