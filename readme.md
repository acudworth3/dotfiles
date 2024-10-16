# Setup

> These are dotfiles I use for my personal development environment. Heavily inspired by the following
> Suggestions are welcome

- https://github.com/hendrikmi/dotfiles
- https://github.com/linkarzu/dotfiles-latest
- https://github.com/omerxx/dotfiles/tree/master/zshrc

## Setup Dotfiles

> From the top folder of this repo run the following command.

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

## Neovim

> ./nvim-astro is the primary configuration used

[AstroNvim](https://astronvim.com/)

<a href="https://dotfyle.com/acudworth3/dotfiles-nvim-astro"><img src="https://dotfyle.com/acudworth3/dotfiles-nvim-astro/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/acudworth3/dotfiles-nvim-astro"><img src="https://dotfyle.com/acudworth3/dotfiles-nvim-astro/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/acudworth3/dotfiles-nvim-astro"><img src="https://dotfyle.com/acudworth3/dotfiles-nvim-astro/badges/plugin-manager?style=flat" /></a>

<details>
<summary>Setup Instructions</summary>

### dotfiles/nvim-astro

#### Install Instructions

> Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:acudworth3/dotfiles/nvim-astro ~/.config/acudworth3/dotfiles/nvim-astro
```

Open Neovim with this config:

```sh
NVIM_APPNAME=acudworth3/dotfiles/nvim-astro nvim
```

#### Plugins

##### editing-support

- [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)
- [ptdewey/yankbank-nvim](https://dotfyle.com/plugins/ptdewey/yankbank-nvim)

##### git

- [linrongbin16/gitlinker.nvim](https://dotfyle.com/plugins/linrongbin16/gitlinker.nvim)

##### keybinding

- [max397574/better-escape.nvim](https://dotfyle.com/plugins/max397574/better-escape.nvim)

##### lsp

- [ray-x/lsp_signature.nvim](https://dotfyle.com/plugins/ray-x/lsp_signature.nvim)
- [nvimtools/none-ls.nvim](https://dotfyle.com/plugins/nvimtools/none-ls.nvim)

##### media

- [andweeb/presence.nvim](https://dotfyle.com/plugins/andweeb/presence.nvim)

##### motion

- [gen740/SmoothCursor.nvim](https://dotfyle.com/plugins/gen740/SmoothCursor.nvim)

##### nvim-dev

- [kkharji/sqlite.lua](https://dotfyle.com/plugins/kkharji/sqlite.lua)

##### plugin-manager

- [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)

##### preconfigured

- [AstroNvim/AstroNvim](https://dotfyle.com/plugins/AstroNvim/AstroNvim)

##### snippet

- [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)

##### startup

- [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)

##### syntax

- [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
- [kylechui/nvim-surround](https://dotfyle.com/plugins/kylechui/nvim-surround)

##### terminal-integration

- [samjwill/nvim-unception](https://dotfyle.com/plugins/samjwill/nvim-unception)

#### Language Servers

- bashls
- dockerls
- eslint
- html
- jsonls
- lua_ls
- marksman
- pyright
- yamlls

This readme was generated by [Dotfyle](https://dotfyle.com)

</details>

## Tool Examples

> Things I think are neat
> /TODO add a collapse here

### exa

### atuin

### tldr

### yazi

### lazygit

### lazydocker
