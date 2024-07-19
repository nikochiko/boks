# boks

CLI for making ASCII boxes with text in OCaml.

## Usage

To put something in a box,

```shell
$ boks moo
+---------+
|   moo   |
+---------+
```

To put multiple things in connected boxes,

```shell
$ boks apps dbms data
+----------+     +----------+     +----------+
|   apps   |<--->|   dbms   |<--->|   data   |
+----------+     +----------+     +----------+
```

Use `-a` to customize length of arrows, `-p` to customize padding.

## Installation

If you have `dune` installed,

```shell
$ git clone https://github.com/nikochiko/boks && cd boks
$ dune install
```

## License

MIT. See [LICENSE](LICENSE).
