all: calc.o
run: calc.o
	./calc.o
calc.o: parser.mly lexer.mll calc.ml
	ocamllex lexer.mll
	menhir parser.mly
	ocamlc -c parser.mli
	ocamlc -c lexer.ml
	ocamlc -c parser.ml
	ocamlc -c calc.ml
	ocamlc -o calc.o lexer.cmo parser.cmo calc.cmo
