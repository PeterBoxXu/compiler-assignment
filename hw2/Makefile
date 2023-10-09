DIRS := util,grading,x86
LIBS := unix,str
SUBMIT := simulator.ml team.txt
OTHER := gradedtests.ml studenttests.ml main.ml 
HWNAME := hw02
ZIPNAME := $(HWNAME)-submit.zip

.PHONY: all test clean zip

main.native: $(SUBMIT) $(OTHER)
	ocamlbuild -use-ocamlfind -Is $(DIRS) -libs $(LIBS) main.native

main.byte: $(SUBMIT) $(OTHER)
	ocamlbuild -use-ocamlfind -Is $(DIRS) -libs $(LIBS) main.byte

all: main.byte main.native

test: main.native
	./main.native --test

zip: $(SUBMIT)
	zip '$(ZIPNAME)' $(SUBMIT)


clean:
	ocamlbuild -clean
