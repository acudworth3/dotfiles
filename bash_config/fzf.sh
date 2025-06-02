#!/bin/bash
fz_file_preview() {
  fzf --preview "batcat --style=numbers --color=always {}"
}

alias f='fz_minimal_ui'

fz_minimal_ui() {
  fzf --preview "batcat --style=numbers --color=always {}" \
    --bind "ctrl-v:change-preview-window(hidden|)" \
    --bind "ctrl-/:change-preview-window(right,70%|down,50%,border-horizontal|hidden|right)" \
    --header="ctr-v:preview | ctr-/:cycle view" \
    --header-first

  # --header-lines=5

  # Add a label
  # --header-label=AAAA \
  # --header-label-pos=top \
  # --header-border

}

fz_cd() {
  cd "$(find . -type d -not -path '*/.*' | fzf)" && lt
}

# # z integration https://junegunn.github.io/fzf/examples/directory-navigation/#integration-with-fzf
# unalias z 2>/dev/null
# z() (
#   local dir=$(
#     _z 2>&1 |
#       fzf --height 40% --layout reverse --info inline \
#         --nth 2.. --tac --no-sort --query "$*" \
#         --accept-nth 2..
#   ) && cd "$dir"
# )

# fz_nvim() {
#   nvim "$(find . -type f -not -path '*/.*' | fzf --multi)"
# }

# FZF_CTRL_R_COMMAND=eval "$(fzf --bash)" NOTE: If you reset shell atuin will be disabled
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

code_search() (
  RELOAD='reload:rg --column --color=always --smart-case {q} || :'
  OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
            nvim {1} +{2}     # No selection. Open the current line in nvim.
          else
            nvim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
  fzf --disabled --ansi --multi \
    --bind "start:$RELOAD" --bind "change:$RELOAD" \
    --bind "enter:become:$OPENER" \
    --bind "ctrl-o:execute:$OPENER" \
    --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
    --delimiter : \
    --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
    --preview-window '~4,+{2}+4/3,<80(up)' \
    --query "$*"
)
