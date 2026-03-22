# CLI

> This is a draft note; may not keep. Its a play for planning usgae of CLI tools that will be part of my workflow vs learning plan is for learning about them

## Habit Queue

- [ ] Habit -> 🏃 use `shuf` and `seq` more
- [ ] Habit -> 🏃 in yazi use `;` to run shell commands (like `mkdir Folder_{01..05}`)

## Readme Rebuild

## Television (EXPLORATION)

- [x] Read -> 📖 read docs
- [x] Task -> 🗒️ fix `bat` issue
- [x] Task -> 🗒️ ? fix text issue?

- [ ] Task -> 🗒️ Put Atuin back
- [ ] Task -> 🗒️ POC https://alexpasmantier.github.io/television/getting-started/quickstart#ad-hoc-channels
- [x] Task -> 🗒️ update theme

- [x] Parse -> 📚 https://alexpasmantier.github.io/television/community/channels-unix#npm-packages
- [x] Parse -> 📚 https://alexpasmantier.github.io/television/community/channels-unix#path
- [x] Parse -> 📚 https://alexpasmantier.github.io/television/community/channels-unix#ports
- [x] Parse -> 📚 https://alexpasmantier.github.io/television/community/channels-unix#python-venvs
- [x] Parse -> 📚 https://alexpasmantier.github.io/television/community/channels-unix#ssh-hosts

- [ ] Habit -> 🏃 nvim + `ctrl+z` to `tv` to `fg` flow

### Telvision Projects

- [x] Task -> 🗒️ update less to be NVIM in the `config.toml` file
- [ ] Task -> 🗒️ figure out preview coloring (via bat) see `/home/wsl_1/.config/television/cable/text.toml`
- [ ] Task -> 🗒️ demo `--preview-word-wrap` pane
- [ ] Task -> 🗒️ fix the alias command
- [ ] Task -> 🗒️ write at least one update action
- [ ] Task -> 🗒️ POC the source toggle feature

### Television Install

- [x] Task -> 🗒️ rerun `tv update-channels` after fixing bat
- [x] Task -> 🗒️ build from source

- [ ] Task -> 🗒️ add to dotfiles fd setup (if ubunutu) see `TELEVISION_CONFIG`
- [ ] Task -> 🗒️ move channels into dotfiles and run sym link commands

### Telvision Misc Notes

- reinstall `curl -fsSL https://alexpasmantier.github.io/television/install.sh | bash`
- replaced tldear with `pipx` version

- fixup fd install

```sh
export PATH="$PATH:$HOME/.local/bin"
ln -s $(which fdfind) ~/.local/bin/fd
```

## Bash vs PATH

> Currently you source all config from you `.zshrc` with the following

- It might make sense to move away from aliases towards independent shell scripts
  - Then you would those to a dir like `.local/bin` and put that in the PATH

### Pros

- write functions here
  - could add a lot more complex tools overtime
- put binaries here

### Cons

- Additional symlink step
- Not sure it is much different than sourcing the scripts
- No immediate use case for this

### Use Cases

- complex `fzf` functions with flags

### Current

```sh
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

### Proposed

See [image](https://keep.google.com/u/0/#NOTE/13JkHhkbA1O8VTzYmXdcSqTDZC8FbYxFYVvki5zBGaTzXXOQpJUEeQdOHx_GPTTIKTUxsZORR)

1. Stow shell scripts and binaries into `.local/bin`
2. include the following in `.zshrc`

```sh

if [ -d "$HOME/.local/bin" ];
  then PATH="$HOME/.local/bin:$PATH"
fi

```

## fzf

- [ ] Task -> 🗒️ explore fzf for exploring more

## zsh

- [x] Task -> 🗒️ switch wsl to `zsh` eventually

## Terminal Emulator

> Need something I can use across MAC + WSL
> Ideally it supports kitty graphics protocal as well

### Wezterm

- [ ] Task -> 🗒️ figure out undercurl issue in WSL (FAILED)

### Kitty

> might be a good option
