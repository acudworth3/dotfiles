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
## Programs to install

### yazi
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font
brew install yazi --HEAD
## from source
# cargo install --locked --git https://github.com/sxyazi/yazi.git yazi-fm yazi-cli

brew install bat btop cmatrix stow tree gh pv jq
brew install noahgorstein/tap/jqp

# TODO: validate brew version works
brew install tlrc
# npm install -g tldr
npm install -g lorem-ipsum-cli

# something broke here
# TODO: pass the -y flag
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

# Starship
# curl -sS https://starship.rs/install.sh | sh
brew install starship

# sudo apt install cargo
# sudo snap install jqp
cargo install exa
cargo install systemctl-tui --locked
cargo install trippy --locked
cargo install tokei
## Bash Settings to apply
