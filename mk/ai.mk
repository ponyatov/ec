.PHONY: ai tmp/$(APP).ai.md
ai: tmp/$(APP).ai.md
tmp/$(APP).ai.md:
	cat README.md $(HOME)/metadoc/E/*.md $(HOME)/metadoc/OCaml/*.md $(M) > $@ ; touch $@
