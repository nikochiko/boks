(lang dune 3.13)

(name boks)

(generate_opam_files true)

(source
 (github nikochiko/boks))

(authors "Kaustubh M")

(maintainers "Kaustubh M")

(license MIT)

(documentation https://git.kaustubh.page/kaustubh/boks)

(package
 (name boks)
 (synopsis "Box maker in OCaml")
 (description "CLI tool to make boxes with text in OCaml")
 (depends ocaml dune)
 (tags "cli"))
