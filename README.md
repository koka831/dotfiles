.

### target
currently it's only for linux

### install

**please backup your dotfiles before run this command,**

**I haven't implement `make backup` & `make restore` yet**
`make install`

### details
#### zsh
autocomplete, git env, , vim keybind, command highlight.
will setup with `.bash_profile` and `.zshrc`.
- zplug: plugin manager, config file -> `conf/plugins.zsh`
#### vim
syntax highlight, Quick run program, async linter, tag jump tool.
- dein: plugin manager, config file -> `dein/dein.toml` for basic configuration, `dein/dein_lazy.toml` for language specific settings.

### TODO
- [ ] add `make backup`, `make restore`, and `make try`
- [ ] add `.config` dir

### LICENSE
- MIT
