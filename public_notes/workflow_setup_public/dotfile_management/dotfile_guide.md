# Dot file Notes

## TODOs

- [x] Task -> ◽ Spell File Syncing
- [ ] Task -> ◽ Alias git commands to sync dotfiles

## Install Tricks -- Dotfile Repo

Plan:

- use stow for symlinking
- create repo in gihtub folder
  - symlink from github repo to ~/.config
    - link is from gh to .config
  - review what to include
  - test this a few times
    - validate with vim-experiment

#### Install Tricks -- Dotfile Repo -- References

- https://www.youtube.com/watch?v=WpQ5YiM7rD4
  - source https://github.com/omerxx/dotfiles
- from repo dotfile folder `stow -t ~ dotfiles/`
- add a .stowrc file

#### Install Tricks -- Dotfile Repo -- TODO

- symlink bash
- symlink wezterm
