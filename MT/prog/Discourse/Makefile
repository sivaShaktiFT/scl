SHELL=/bin/bash

include ../../../paths.sh

#################################################
# Makefile of graph preparatoy program in Ocaml #
#################################################

FILES = discourse.ml bank_lexer.ml relations.ml

INTERFACES = pada_structure.mli
SYNTAX = .ocamlinit
ZEN=$(ZENDIR)
HPATH=../kAraka/Prepare_Graph/Heritage_ML

all: discourse

COMPILE=ocamlopt -pp "camlp4r pa_extend.cmo" -I $(ZEN)  -I $(HPATH) -I +camlp4 -c

COMPILEI=ocamlc -pp "camlp4r pa_extend.cmo" -I $(ZEN)  -I $(HPATH) -I +camlp4 -c

LINK=ocamlopt -I $(ZEN) -I +camlp4 dynlink.cmxa camlp4lib.cmxa

ZENSOURCES=gen.ml list2.ml word.ml share.mli share.ml unshare.ml trie.ml \
mini.ml deco.ml lexmap.ml minimap.mli minimap.ml $(HPATH)/min_lexer.ml

SOURCES= $(INTERFACES) $(FILES) $(HPATH)/min_lexer.ml $(HPATH)/transduction.ml

CORE=$(ZEN)/list2.cmx $(ZEN)/ascii.cmx $(ZEN)/gen.cmx $(ZEN)/trie.cmx $(ZEN)/zen_lexer.cmx

EXECS=$(HPATH)/min_lexer.cmx $(HPATH)/transduction.cmx 

VPATH=$(ZEN) $(HPATH)

discourse: pada_structure.cmi bank_lexer.cmx ascii.cmx trie.cmx min_lexer.cmx transduction.cmx relations.cmx discourse.cmx 
	$(LINK) unix.cmxa bank_lexer.cmx relations.cmx $(CORE) $(EXECS) discourse.cmx -o discourse 

debug: ascii.cmo trie.cmo debug.ml
	(cat debug.ml; cat -) | ocaml -I +camlp4 -I . -I $(ZEN)

.depend depend:: $(SOURCES)
	> .depend.new
	for i in $(ZENSOURCES); do \
	ocamldep -pp camlp4rf -I $(ZEN) -I . $(ZEN)/$$i >> .depend.new ; done
	for i in $(SOURCES); do \
	 ocamldep -pp camlp4rf -I $(ZEN) -I .  $$i >> .depend.new ; done
	mv .depend.new .depend
.SUFFIXES: .ml .mli .cmx .cmo .cmi

.ml.cmo:
	$(COMPILEI) $<

.mli.cmi:
	$(COMPILEI) $<

.ml.cmx:
	$(COMPILE) $<

include .depend

clean:
	rm -f *.cmo *.cmi *.cmx *.ppi *.ppo *.o $(HPATH)/*.o $(HPATH)/*.cmx $(HPATH)/*.cmi
