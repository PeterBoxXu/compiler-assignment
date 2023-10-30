all: main.native

.PHONY: test
test: main.native
	./main.native --test

main.native:
	ocamlbuild -Is util,x86,ll,grading -libs unix,str,nums main.native -use-menhir

main.byte:
	ocamlbuild -Is util,x86,ll,grading -libs unix,str,nums main.byte -use-menhir

.PHONY: utop repl
utop: main.byte
	utop -require unix,str,num

repl: utop

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf output a.out
