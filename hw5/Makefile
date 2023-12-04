INCLUDES= util,x86,grading,ll
LIBS = unix,str
SUBMIT := frontend.ml typechecker.ml team.txt

HWNAME := hw05
ZIPNAME := $(HWNAME)-submit.zip


all: main.native

.PHONY: test
test: main.native
	./main.native --test

.PHONY: main.native
main.native: 
	ocamlbuild -pkg num -Is $(INCLUDES) -libs $(LIBS) main.native -use-menhir -yaccflag --explain

zip: $(SUBMIT)
	zip '$(ZIPNAME)' $(SUBMIT)

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf output a.out

