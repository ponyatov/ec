.PHONY: install update
install: doc ref gz ocaml
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.Debian`
