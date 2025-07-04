# First Draft of CLI tooling

## Install

- ✅ starship

- fzf
- fd
- jqp
- ✅ tdlr
- just 
- atuin
- ✅ exa
- ncdu
- pet

```bash 
sudo apt install fd-find exa fzf jqp

wget https://github.com/knqyf263/pet/releases/download/v0.3.6/pet_0.3.6_linux_amd64.deb
dpkg -i pet_0.3.6_linux_amd64.deb

npm install -g tldr
```
watch:
- [ ] Task  -> ◽ Try starship https://www.youtube.com/watch?v=e34qllePuoc

- [ ] Read  -> 📖 https://www.youtube.com/watch?v=530qqHOGesg
- [ ] Read  -> 📖 https://www.youtube.com/watch?v=mmqDYw9C30I
- [ ] Read  -> 📖 https://www.youtube.com/watch?v=fU8HB1cvG9w


- publish dotfiles

### fzf

> must be greater than defautl ubuntu version

```bash
# Install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

## add to bash file

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias fzf='fzf --preview "batcat --style=numbers --color=always {}"'

## fzf functions; figure out how to refactor this
fcd() {
  cd "$(find . -type d -not -path '*/.*' | fzf)" && lt
}

fv() {
  nvim "$(find . -type f -not -path '*/.*' | fzf)"
}


```

### Starship Install

```bash
curl -sS https://starship.rs/install.sh | sh
```

### Exa

#### Exa Install Notes

> Had to install with cargo for the git options to work. Removed them due to 

``` bash
# some more ls aliases
alias ll='exa -l --icons -a --sort=type --color=always'
alias llg='exa -l --icons -a --git --sort=type'
alias lt='exa --tree --level=2 --long --icons -a --sort=type'

```


### References

- https://github.com/junegunn/fzf?tab=readme-ov-file#linux-packages
- https://github.com/knqyf263/pet?tab=readme-ov-file#debian-ubuntu
- https://github.com/sharkdp/fd?tab=readme-ov-file
- https://github.com/tldr-pages/tldr
- https://github.com/ogham/exa
- https://www.josean.com/posts/7-amazing-cli-tools
- https://docs.atuin.sh/guide/installation/
- https://github.com/knqyf263/pet?tab=readme-ov-file#debian-ubuntu
