#!/usr/bin/env zsh

# ## Completion
# NOTE: This should run after all other sourcing. Include the following in .zshrc to achieve

# Source all config files except completions
# if [ -d "$HOME/.config/bash_config" ]; then
#     for file in "$HOME/.config/bash_config"/*.sh; do
#         if [ -f "$file" ] && [ "$(basename "$file")" != "completions.sh" ]; then
#             source "$file"
#         fi
#     done
# fi
#
# # Source completions last
#  completions.sh
# if [ -f "$HOME/.config/bash_config/completions.sh" ]; then
#     source "$HOME/.config/bash_config/completions.sh"
# fi

typeset -U fpath # Keep fpath entries unique

# NOTE: this is mac specific
case "$(uname)" in
Darwin)
  # echo "Running on macOS"
  fpath=($fpath /opt/homebrew/share/zsh/site-functions)
  ;;
Linux)
  echo "Running on Linux"
  ;;
CYGWIN* | MINGW* | MSYS*)
  echo "Running on Windows"
  ;;
esac

### Completion Menu

export LISTMAX=1000
# Menu selection
zstyle ':completion:*' menu select

# Group completions
## Controls group headers
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

zstyle ':completion:*:descriptions' format '[%d]'
# zstyle ':completion:*' list-colors 'ma=48;5;240;1;38;5;255'
# Show completion menu on second tab press
setopt AUTO_MENU
# Automatically list choices on ambiguous completion
setopt AUTO_LIST
# Move cursor to end of word after completion
setopt ALWAYS_TO_END

### Completion Init
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

## Misc
setopt CORRECT
