# zsh switch notes

- [x] Task -> 🗒️ consider omyzsh https://ohmyz.sh/
- [ ] Task -> 🗒️ rename `bash_config` folder to shell config

- [x] Task -> 🗒️ move `.zshrc` and `.bashrc` into dotfiles; ALTERNATE move ~everting~ most things into the init commands
- [x] Task -> 🗒️ decide if you want to fully switch or keep backwards compatibility SWITCH

- [x] Task -> 🗒️ seems like command history is not persisted between sessions?
- [x] Task -> 🗒️ `sbb` alias needs to be rewritten
- [x] Task -> 🗒️ cleanup `.bashrc`
- [x] Task -> 🗒️ get vi mode working
- [x] Task -> 🗒️ reinstall node
- [x] Task -> 🗒️ move everything into dotfiles
- [x] Task -> 🗒️ POC making dotfile OS aware. --> see chris at machine video
- [ ] Task -> 🗒️ Consider reorg of bash_config folder
- [ ] Task -> 🗒️ review how/if to integrate fzf

- [ ] Read -> 📖 `man zshoptions`
- [ ] Parse -> 📚 `zshall man`
- [x] Task -> 🗒️ do a minimal styling poc
- [x] Task -> 🗒️ setup menu
- [x] Task -> 🗒️ reconcile zoxide and auto complete

## Completion

- `$fpath` contains where functions live
- functions starting with `_` are treated as autoloaded functions

> local config

```bash
/usr/local/share/zsh/site-functions
/usr/share/zsh/site-functions
/usr/share/zsh/5.9/functions
```

- [x] Task -> 🗒️ add brew to fpath?

### Dotfiles Setup - Completion

1. Ensure `autoload -Uz compinit && compinit` exists in `.zshrc`
2. create a dotfiles dir and add to `fpath`

```bash
## task: see if this can be moved into dot files
# Source all config files except completions
if [ -d "$HOME/.config/bash_config" ]; then
    for file in "$HOME/.config/bash_config"/*.sh; do
        if [ -f "$file" ] && [ "$(basename "$file")" != "completions.sh" ]; then
            source "$file"
        fi
    done
fi

# Source completions last
if [ -f "$HOME/.config/bash_config/completions.sh" ]; then
    source "$HOME/.config/bash_config/completions.sh"
fi
```

- get functions `print -l ${(k)_comps} | fzf`
- get brew managed cli tools `brew list --formula`

## fzf

> need to initcli programs differently. Examples include starship, atuin, fzf,
> fzf has a `~/.fzf/shell/completion.zsh` file that controls completion

## Init

> Many programs append to `.bashrc` or `.zshrc` when they install. I've mostly moved those to `init_commands.sh`

## PATH issues

> need to sync these or .zsh doesn't find commands like exa. I think there will be many more of these

- [x] removed from `.bashrc`
- [x] added to `env_vars.sh` ❌ these are machine specific

```sh
export PATH="$PATH :/opt/nvim-linux64/bin"
export PATH=/home/wsl_1/.cargo/bin:$PATH
export PATH="$PATH:/usr/local/bin:/snap/bin"
```
