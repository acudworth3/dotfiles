# CLI

> This is a draft note; may not keep. Its a play for planning usgae of CLI tools that will be part of my workflow vs learning plan is for learning about them

## fzf

- [ ] Task -> 🗒️ explore fzf for exploring more
- [ ] Task -> 🗒️ begin writing small functions + aliases for easier nav

## zsh

- [x] Task -> 🗒️ switch wsl to `zsh` eventually
- [x] Task -> 🗒️ remove bash `!` command from sh scripts
- [ ] Learn -> ❔need to construct a process for cli auto completions

## Terminal Emulator

> Need something I can use across MAC + WSL
> Ideally it supports kitty graphics protocal as well

### Wezterm

- [x] Task -> 🗒️ Install on Slalom Macbook (FAILING)
- [x] Task -> 🗒️ get config working on NEE laptop
- [x] Task -> 🗒️ bring in public configs
- [x] Task -> 🗒️ get window in dark mode
- [x] Task -> 🗒️ ~Strikethrough~ in neovim not working
- [x] Task -> 🗒️ configure on Slalom Laptop
- [x] Read -> 📖 learn copy mode
- [x] Parse -> 📚 command pallete options
- [ ] Task -> 🗒️ add symlink to install script (Do this on the WSL Side)
- [ ] Task -> 🗒️ ~move `~/.term` folder into dotfiles (Do this on the WSL Side)~ Add notes to wezterm setup
- [ ] Task -> 🗒️ write a spellbook

- [ ] Learn -> ❔autocompletion

- [ ] Task -> 🗒️ figure out undercurl issue in WSL (FAILURE)

#### Spellbook

- `CTRL+SHIFT+M` --> copy/mark mode. Follows vim keybindings. `Y` exits mark mode
- mark mode works best with visual selection

- `CMD+R` to reload configuraiton (should happen automatically)

#### Command Parsing

- [ ] Task -> 🗒️ figure out how to move tabs around (maybe map a key binding)

#### Strike through

- `echo -e "\e[9mtest\e[0m"` renders in shell

- ran locally `tempfile=$(mktemp) && curl -o $tempfile https://raw.githubusercontent.com/wezterm/wezterm/main/termwiz/data/wezterm.terminfo && tic -x -o ~/.terminfo $tempfile && rm $tempfile
`
- add `config.term = "wezterm"` to `.wezterm`

- [ ] Task -> 🗒️ move `~/.term` folder into dotfiles

- https://wezterm.org/config/lua/config/term.html?h=term#term-xterm-256color

### Kitty

> might be a good option
