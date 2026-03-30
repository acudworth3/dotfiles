## Programs to install
sudo apt install bat btop cargo cmatrix fd-find stow tree gh pv

npm install -g tldr lorem-ipsum-cli

## TODO: add atuin, lazygit, neovim

# something broke here
# TODO: pass the -y flag
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

# Television
curl -fsSL https://alexpasmantier.github.io/television/install.sh | bash

# Starship
curl -sS https://starship.rs/install.sh | sh

# Postings
curl -LsSf https://astral.sh/uv/install.sh | sh

# install Posting (will also quickly install Python 3.12 if needed)
uv tool install --python 3.12 posting

# yazi
apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
cargo install --locked --git https://github.com/sxyazi/yazi.git yazi-fm yazi-cli

# Cargo

sudo snap install jqp
sudo apt install cargo
cargo install exa
cargo install trippy --locked
cargo install tokei
cargo install bob

## Install Nvim
bob use latest

# cargo install systemctl-tui --locked -- replaced with Television
# cargo install somo -- replaced with Television
## Bash Settings to apply

## fix fd issue
# export PATH="$PATH:$HOME/.local/bin"
# ln -s $(which fdfind) ~/.local/bin/fd
