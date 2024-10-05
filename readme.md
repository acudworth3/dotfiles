# Setup

> These are dotfiles I use for my personal development environment. Heavily inspired by the following
> Suggestions are welcome

- https://github.com/hendrikmi/dotfiles
- https://github.com/linkarzu/dotfiles-latest
- https://github.com/omerxx/dotfiles/tree/master/zshrc

## Setup Dotfiles

> from the top folder of this direct run

```bash
cd ..
stow -t ~/.config ./
```

## Install Linux Dependencies

> UNDER DEVELOPMENT

```bash
## Eventually this will be configured in  ./install.sh

sudo apt install bat btop cargo cmatrix fd-find stow tree gh

npm install -g tldr
# something broke here
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

curl -sS https://starship.rs/install.sh | sh

# EXA
sudo apt install cargo
cargo install exa

```

## Bash Setup

> UNDER DEVELOPMENT. Contents of ./bash.temp.sh will be added

## Tool Examples

> Things I think are neat
> /TODO add a collapse here

### exa

### atuin

### tldr

### yazi

### Astro Nvim

### Multi Distribution Nvim
