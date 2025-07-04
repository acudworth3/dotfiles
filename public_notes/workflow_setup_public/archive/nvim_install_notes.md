# Install Tricks -- Config Switcher

- from [kickstart](https://github.com/nvim-lua/kickstart.nvim)
  - git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
    - change /nvim to a different folder
    - set $NVIM_APPNAME to the folder name to run it
- https://github.com/neovim/neovim/pull/22128
- https://neovim.io/doc/user/starting.html#_nvim_appname
- https://gist.github.com/elijahmanor/b279553c0132bfad7eae23e34ceb593b
- https://www.youtube.com/watch?v=LkHjJlSgKZY&list=LL&index=2


- [ ] Parse -> 📚 LazyVim https://www.lazyvim.org/
- [ ] Parse -> 📚 ~~3 LunarVim https://www.lunarvim.org/~~
  - non standard install method
- [ ] Parse -> 📚 1 AstroNvim https://github.com/AstroNvim/AstroNvim
- [ ] Parse -> 📚 2 NvChad https://github.com/NvChad/NvChad



## Install Tricks -- Config Switcher -- Distro commands

git clone https://github.com/LazyVim/starter ~/.config/nvim-lazy
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim-astro

git clone https://github.com/NvChad/starter ~/.config/nvim-chad
git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim-experiment/

 - [ ] then remove the .git folders from each folder `rm -rf ~/.config/FOLDER/.git`

## Install Tricks -- Config Switcher -- Config +Commands


``` bash
# Make Folders inside the ~/.config folder
mkdir nvim-lazy nvim-chad nvim-astro nvim-experiment

# Clone distros
git clone https://github.com/LazyVim/starter ~/.config/nvim-lazy
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim-astro

git clone https://github.com/NvChad/starter ~/.config/nvim-chad
git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim-experiment/

# Remove Git folders

cd ~/config/nvim-lazy && rm -rf .git
cd ~/config/nvim-chad && rm -rf .git
cd ~/config/nvim-astro && rm -rf .git
cd ~/config/nvim-experiment && rm -rf .git

```

``` bash
# Add to bash file
alias nv-lz="NVIM_APPNAME=nvim-lazy nvim"
alias nv-chd="NVIM_APPNAME=nvim-chad nvim"
alias nv-ast="NVIM_APPNAME=nvim-astro nvim"
alias nv-exp="NVIM_APPNAME=nvim-experiment nvim"
alias nv="NVIM_APPNAME=nvim nvim"
```




