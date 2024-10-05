# Setup

## Setup dotfile only

link to `~/.config/`

```bash
cd ..
stow -t ~/.config dotfiles/
```

- only setup for nvims

> In bash the following aliases assume the folders here

```bash
alias nv-lz="NVIM_APPNAME=nvim-lazy nvim"
alias nv-chd="NVIM_APPNAME=nvim-chad nvim"
alias nv-ast="NVIM_APPNAME=nvim-astro nvim"
alias nv-exp="NVIM_APPNAME=nvim-experiment nvim"
alias nv="NVIM_APPNAME=nvim nvim"
```

## Include Various Linux Tools

> run `install.sh`

```bash
## Evnentuall this will be configured in  ./install.sh

sudo apt install bat btop cargo cmatrix fd-find stow tree gh

npm install -g tldr
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

curl -sS https://starship.rs/install.sh | sh

# restow the files after this step
# cd ..
# stow -t ~/.config dotfiles/

# EXA
sudo apt install cargo
cargo install exa

```

Docker: https://docs.docker.com/engine/install/ubuntu/#installation-methods

### Linux Stable Bash Setup

> Need to reorganize bash profile to not expose private info. In the
> mean time this can be appended to '.bashrc' in '~/.bashrc'

```bash
# some more ls aliases
alias ll='exa -l --icons -a --sort=type --color=always'
alias llg='exa -l --icons -a --git --sort=type'
alias lt='exa --tree --level=2 --long --icons -a --sort=type'

alias cat='batcat'
alias bat='batcat'

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"
alias fzf='fzf --preview "batcat --style=numbers --color=always {}"'
## fzf functions; figure out how to refactor this
## fcd() { cd "$(find . -type d -not -path '*/.*' | fzf)" && lt; }
## fv() { nvim "$(find . -type f -not -path "*/.*" | fzf)" }

fcd() {
  cd "$(find . -type d -not -path '*/.*' | fzf)" && lt
}

fv() {
  nvim "$(find . -type f -not -path '*/.*' | fzf)"
}

## starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"


## yazi setup
function ycw() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
yazi_custom() {
    local folders=(
        ""
        ""
        ""
        ""
        ""
    )
    yazi "${folders[@]}"
}

```
