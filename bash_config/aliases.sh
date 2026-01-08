# cd aliases
alias ..='cd ..'

#Nvim Aliases
# alias nv-ast="NVIM_APPNAME=nvim-astro nvim"
# alias nv="NVIM_APPNAME=nvim nvim"
# alias EDITOR="nvim"

# alias nvim="NVIM_APPNAME=nvim-astro nvim"

# CLI Short Cuts
# alias sbb='source ~/.bashrc'
alias sbb='source ~/.zshrc'

alias ff='find . -type f -name'
alias cat="batcat"
alias hh='cd ~'
alias vv='nv-ast ~/.bashrc'
alias cowflood='ls /usr/share/cowsay/cows | xargs -I {} cowsay -f {} its a cow flood'
alias randcow='cowsay -f $(ls /usr/share/cowsay/cows | shuf -n1)'
alias mkdir='mkdir -pv'

# misc
# alias zython='python3'
alias python='python3'
alias lzg='lazygit'
alias lzpr='gh dash'
alias lzd='lazydocker'
alias ghe='gh copilot explain'

#git Aliases
## removes any branches not in remote
alias gclearlocal="git branch | grep -v 'main' | xargs git branch -D"
alias gcleanlog='git log --no-merges --pretty=format:"%h %ad %s" --date=format-local:"%a %Y-%m-%d %H:%M"'
## Auto commit
alias gsavegame='git add --all && git commit -m "Auto-commit $(date)" && git push'
alias gplog='git log --abbrev-commit --pretty=oneline'
alias gpl='git pull'

## docker aliases
alias dkr-clean='echo -e "\nStop and Remove Containers+Volumes"; docker ps -a --format "{{.ID}} {{.Status}} {{.Image}}"; echo "stopping........"; docker stop $(docker ps -a -q); echo "removing........"; docker rm -v $(docker ps -a -q); docker volume rm -f $(docker volume ls -q)'
alias dkr-lnx='docker run --name=ubunutu_from_bash --rm -it ubuntu'
alias dkr-lnx-keep='docker run --name=ubunutu_from_bash -it ubuntu'
alias dkr-alp-keep='docker run --name=apline_from_abash -it apline'

## Exa
alias ll='exa -l --icons -a --sort=type --color=always'
alias llg='exa -l --icons -a --git --sort=type'
alias lt='exa --tree --level=2 --long --icons -a --sort=type'

## Cargo Commands
alias trip='~/.cargo/bin/trip'
alias st='~/.cargo/bin/systemctl-tui'

# some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
#
