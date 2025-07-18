# Atuin
# . "$HOME/.atuin/bin/env"

# [[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
# eval "$(atuin init bash --disable-up-arrow)"
# . "$HOME/.cargo/env"
#
# Starship
# export STARSHIP_CONFIG=~/.config/starship/starship.toml
# eval "$(starship init bash)"

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

## Enable vi mode
bindkey -v

# Atuin
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh --disable-up-arrow)"

# must run auto complete commands first
# To reset autocomplete + enable fzf
# https://github.com/ajeetdsouza/zoxide
# rm ~/.zcompdump*; compinit
eval "$(zoxide init zsh)"
