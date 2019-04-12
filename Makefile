

all: calc.exe
run: calc.exe
	_build/default/calc.exe
calc.exe: env.ml parser.mly lexer.mll calc.ml Makefile
	ocamlc -c env.ml
	ocamllex lexer.mll
	menhir --explain parser.mly
	ocamlc -c parser.mli
	ocamlc -c lexer.ml
	ocamlc -c parser.ml
	dune build calc.exe
debug: env.ml parser.mly lexer.mll calc.ml Makefile
	ocamlc -g -c env.ml
	ocamllex lexer.mll
	menhir --explain parser.mly
	ocamlc -g -c parser.mli
	ocamlc -g -c lexer.ml
	ocamlc -g -c parser.ml
	dune build calc.exe
