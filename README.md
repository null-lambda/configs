# configs
Personal configurations & dotfiles.

* nvim : 
(Neovim)[https://github.com/neovim/neovim/blob/master/INSTALL.md]
* lvim :
(LunarVim)[https://www.lunarvim.org/docs/installation]


## Todos 
- [ ] Setup LSP + Autocompletion 
- [ ] Setup snippets 

## Download
To obtain the entire repository, enter the following command in your terminal.
```shell
git clone https://github.com/null-lambda/configs.git
```


## Generating Symbolic links
* Linux
```shell
for FN in nvim lvim; do ln -s ~/configs/$FN ~/.config; done
```
* Windows (Powershell)
```powershell
$DEST = "$env:USERPROFILE\AppData\Local"
$SRC = "$env:USERPROFILE\configs"
$FN = "nvim", "lvim"
foreach ($fn in $configs) {
    New-Item -ItemType SymbolicLink -Path "$DEST\$FN" -Value "$SRC\$FN"
}
```
