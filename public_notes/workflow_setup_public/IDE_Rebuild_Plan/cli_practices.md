# CLI

> This is a draft note; may not keep. Its a play for planning usgae of CLI tools that will be part of my workflow vs learning plan is for learning about them

## Habit Queue

- [ ] Habit -> 🏃 use `shuf` and `seq` more

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
