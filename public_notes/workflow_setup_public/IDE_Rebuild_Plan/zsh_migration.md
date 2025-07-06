# zsh switch notes

- [x] Task -> 🗒️ consider omyzsh https://ohmyz.sh/
- [ ] Task -> 🗒️ rename `bash_config` folder to shell config

- [x] Task -> 🗒️ move `.zshrc` and `.bashrc` into dotfiles; ALTERNATE move ~everting~ most things into the init commands
- [x] Task -> 🗒️ decide if you want to fully switch or keep backwards compatibility SWITCH

- [ ] Task -> 🗒️ seems like command history is not persisted between sessions?
- [x] Task  -> 🗒️ `sbb` alias needs to be rewritten
- [x] Task -> 🗒️ cleanup `.bashrc`
- [x] Task -> 🗒️ get vi mode working
- [x] Task -> 🗒️ reinstall node

## fzf

> need to init cli programs differently. Examples include starship, atuin, fzf,
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

