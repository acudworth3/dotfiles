# Language Setup

## Rush
## Cargo
# curl https://sh.rustup.rs -sSf | sh
brew install rustup

# Python
brew install python@3.13

# Node
## nvm
brew install nvm
nvm install node

## Programs to install - TUIs

brew install neovim lazygit
brew install noahgorstein/tap/jqp

### yazi
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font
brew install yazi --HEAD
## from source
# cargo install --locked --git https://github.com/sxyazi/yazi.git yazi-fm yazi-cli


## Programs to install - cli
brew install bat btop cmatrix stow tree gh pv 

# TODO: validate brew version works
brew install tlrc

# something broke here
# TODO: pass the -y flag
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

# Starship
# curl -sS https://starship.rs/install.sh | sh
brew install starship

cargo install exa
cargo install trippy --locked
cargo install tokei

# npm install -g tldr
npm install -g lorem-ipsum-cli

## Atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

## Bash Settings to apply
# TODO: review swapping .bashrc for .zsh
