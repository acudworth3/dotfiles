# TODO r[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"
alias fzf='fzf --preview "batcat --style=numbers --color=always {}"'
## fzf functions; figure out how to refactor this
## fcd() { cd "$(find . -type d -not -path '*/.*' | fzf)" && lt; }
## fv() { nvim "$(find . -type f -not -path "*/.*" | fzf)" }

fzcd() {
  cd "$(find . -type d -not -path '*/.*' | fzf)" && lt
}

fzvm() {
  nvim "$(find . -type f -not -path '*/.*' | fzf)"
}
