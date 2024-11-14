#TODO consider moving this into the ../yazi folder

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
    "/home/acudworth3/repos"
    "/home/acudworth3/repos/supply-app-mod-app-api"
    "/home/acudworth3/repos/supply-app-mod-app-core"
    "/mnt/c/Users/Y891986/Documents/workspace_1_offline/knowledge-graph"
    "/mnt/c/Users/Y891986/Documents/workspace_1_offline/knowledge-graph/dotfiles"
  )
  yazi "${folders[@]}"
}

alias y='yazi_custom'
