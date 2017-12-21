DOTPATH		:= $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES 	:= $(wildcard .??*) bin
EXCLUDE		:= .git .travis.yml
DOTFILES	:= $(filter-out $(EXCLUDE), $(CANDIDATES)) 

all:

backup:
	@echo 'TODO: will backup existed your dotfiles'

restore:
	@echo 'TODO: will restore your backup dotfiles'

list:
	@$(foreach file, $(DOTFILES), /bin/ls -dF $(file);)

install:
	@$(foreach file, $(DOTFILES), ln -sfnv $(abspath $(file)) $(HOME)/$(file);)

clean:
	@-$(foreach file, $(DOTFILES), rm -vrf $(HOME)/$(file);)
