# IDE Rebuild

> This document outlines plans and steps for adopting Neovim as an IDE

## Work Streams

> General Approach

- [ ] Read -> 📖
- [ ] Task -> ◽
- [ ] Parse -> 📚
- [ ] Learn -> ❔

### AstroNvim Refactor

- [ ] Learn -> ❔ Figure out how to bring default configs in
- [x] Task -> ◽Plugin Folder
- [x] Task -> ◽Per Plugin Refactor
- [x] Task -> ◽Options File
- [x] Task -> ◽Keymap File

### long Tail

### Learning Consumption

- [x] Task -> ◽ review .session file from YT video (also see user manual 021 go away and come back)
- [x] Task -> ◽ https://www.youtube.com/watch?v=m8C0Cq9Uv9o
- [x] Task -> ◽ https://www.youtube.com/watch?v=435-amtVYJ8&t=31s
- [x] Task -> ◽ https://www.youtube.com/watch?v=6pAG3BHurdM
- [x] Task -> ◽ https://www.youtube.com/watch?v=b7OguLuaYvE
- [x] Task -> ◽ https://www.youtube.com/watch?v=RdyfT2dbt78
- [x] Task -> ◽ https://www.youtube.com/watch?v=KYDG3AHgYEs

-- [X] Parse -> 📚 https://github.com/Piotr1215/youtube

### Nvim + Linux Tooling

> Specific to IDE Usage. See [nvim_setup](../nvim_setup.md) for full details

#### Linux

> see [learning plan](../../../learning_plan_v2.md) for more details

- [ ] Task -> ◽Refactor .bashrc into work/personal

##### Clipboard

> select register and paste from it see " then SELECT REGISTER then p

- [x] Task -> ◽ Multi Clipboard -- Copying/Yanking (see register note)
- [x] Task -> ◽ Multi Clipboard -- Pasting
- [x] Task -> ◽ ~Separate yank and delete registers~ use yankbank
- [x] Task -> ◽ Copy remote URL (GIT)

#### Neovim

- [x] Task -> ◽Create a Reference Document
- [x] Task -> ◽Organize Key Stroke References
- [x] Task -> ◽Setup Vscode + ~Neovim~ Vim Extension

##### NVM Scaffolding

- [x] Task -> ◽Setup Modular config (achieved with Astro Vim)
- [x] Task -> ◽Adjust search to include .gitignore files (see Astro nvim leader + f + F)
- [x] Task -> ◽Setup organization of options, plugins, etc
- [ ] Task -> ◽add time to the status bar
- [ ] Task -> ◽Expose all keymaps through telescope (https://github.com/folke/which-key.nvim)

###### ✅ Sessions

- [x] Task -> ◽ launch settings - split pane (nv-ast leader+S)
- [x] Task -> ◽ ~~Explore Plugins for this~~
- [x] Task -> ◽ Dashboard plugin (see setup YTs) (achieved with nv-ast)
- [x] Learn -> ❔ Save views with ':mkview' and 'loadview' commands. (nv-ast leader+S)

- [x] Task -> ◽ ~Attempt harpoon based nav over session~ (Tabs instead)

##### NVM Snippets

- [ ] Task -> ◽ get some lua snippets see init.lua line 685
- [ ] Task -> ◽ Setup a global (non language specifc) snippet
- [x] Learn -> ❔ Setup Custom Snippets https://docs.astronvim.com/recipes/snippets/
- [x] Task -> ◽ Port vscode snippets
- [x] Task -> ◽ Docs PR (note vue file type) https://docs.astronvim.com/recipes/snippets/

##### NVM Options

- [x] Task -> ◽ Format on save (not syncing across machines)

##### Find and Replace

> Note that vscode is way more intuitive for this. However, nvim can apply commands to
> results that it finds. As well as operate across files

- [ ] Task -> ◽ in file (/s command)
- [ ] Task -> ◽ across files
- [ ] Task -> ◽ Write a strategy doc for this (account for multi cursor alternative)
- [ ] Task -> ◽ Maybe ask the community why do this
- [ ] Learn -> ❔ Advanced Search Functionality

##### Key Maps

> See [future_keymaps](../IDE_Rebuild_References/future_key_maps.md)

##### Plugin

- [ ] Read -> 📖 help lazy.nvim-lazy.nvim-structuring-your-plugins
- [ ] Parse -> 📚 https://github.com/stars/acudworth3/lists/neovim
- [ ] Parse -> 📚 https://github.com/AstroNvim/astrocommunity

  > ~~Review the Following; Dedicate time to exploring the ecosystem. ~~
  > Replacing task with read because of astro nvim

- [x] Parse -> 📚 https://github.com/AstroNvim/astrocommunity/tree/main
- [x] Task -> ◽ split astrovim .lua files into separate files
- [x] Task -> ◽ https://github.com/mg979/vim-visual-multi
- [x] Read -> 📖 https://github.com/mattn/vim-gist
- [ ] ~Read -> 📖 ~~https://github.com/neoclide/coc.nvim~~ Seems old~
- [ ] ~Read -> 📖 https://github.com/kdheepak/lazygit.nvim~
- [ ] ~Read -> 📖 toggleterm~ use astro configs
- [ ] ~Read -> 📖 NVimTree use astro~ configs

##### Training Tools

- [ ] Read -> 📖 https://github.com/Weyaaron/nvim-training (games)
- [ ] Task -> 🗒️ implement https://github.com/antonk52/bad-practices.nvim?tab=readme-ov-file
- [x] Task -> 🗒️ https://github.com/m4xshen/hardtime.nvim

### General IDE Tools

#### Telescope

- [ ] Learn -> ❔ Keybindings
  - (TAB to select)
  - (find key to view actions)
- [ ] Parse -> 📚 Review options
- [ ] Task -> 🗒️ Create habit list from options
  - search commands via SPACE+f+C

#### Github Integration

- [ ] Learn -> ❔ Octo Toolkit
- [ ] Learn -> ❔ Improve git blame
- [ ] Task -> 🗒️ Open PR from file
- [x] Task -> 🗒️ Copy branch name (from lazy git CTRL+O on the local branch)
- [ ] Read -> 📖 https://github.com/pwntester/octo.nvim
- [ ] Read -> 📖 Review mappings https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/git/octo-nvim

#### Git tooling

> Rely on lazy git

- [x] Task -> 🗒️ switch branches quickly via search
- [x] Task -> 🗒️ display branch name in status line

### API Development

> Standard Language Playbook. Plan to rely on AstroNvim community. Possibly include specifc opt files.
> Possibly update .lua file with 'ensure installed'

<!-- - [ ] Task -> ◽Add LSP -->
<!-- - [ ] Task -> ◽Confirm Auto Completion -->
<!-- - [ ] Task -> ◽Confirm Folding -->
<!-- - [ ] Task -> ◽Setup Auto Formatter -->
<!-- - [ ] Task -> ◽Add language specific opt file -->
<!-- - [ ] Task -> ◽Perform basic terminal action -->

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Setup jsonc parser
- [ ] Task -> ◽Define Programming exercises
- [ ] Task -> ◽Validate behavior

#### CSharp

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
- [ ] Task -> ◽Validate behavior
- [ ] Task -> ◽Peek References

#### Dotnet Builds

- [x] Learn -> ❔ Query the ecosystem Will rely on AstroNvim community
- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
  - Build via toggle term
  - Clean Localhost Launches
- [ ] Task -> ◽Validate behavior

#### Docker Usage

> Mostly achieved with Lazy Docker

- [x] Learn -> ❔ Query the ecosystem Will rely on AstroNvim community
- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
  - Build via toggle term
  - Cli based container status
- [ ] Task -> ◽Validate behavior

#### Postgres Query

- [ ] Task -> ◽install Dadbod UI
- [ ] Learn -> ❔ Query the eco system
- [ ] Task -> ◽Define Programming exercises
- [ ] Task -> ◽Add community pack
- [ ] Task -> ◽Validate behavior

### Web Development

#### JavaScript

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
  - Folding via key
- [ ] Task -> ◽Validate behavior

#### TypeScript

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
  - Folding via key
- [ ] Task -> ◽Validate behavior

#### ✅ Terminal Integration

- [ ] Task -> ◽Run Test+Build+etc in CLI

### Devops

#### YAML

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
  - Folding via key
  - Github Action Itegration
    - View and Run workflows via floating terminal
    - Syntax Validation
- [ ] Task -> ◽Validate behavior

#### Bash

- [x] Task -> ◽Add community pack
- [ ] Task -> ◽Define Programming exercises
- [ ] Task -> ◽Validate behavior

### Note Taking

#### Markdown

- [x] Task -> ◽ Setup markdown folds
- [x] Task -> ◽ Create todo toggling
- [x] Learn -> ❔ Previews
- [ ] Task -> ◽ Snippets from Lazy https://keep.google.com/u/0/#NOTE/1lTuwyrTQR4mkbzbk9VijPiRTtkRZcjJ1y-Gt1ihw2ogB6UDCHVaBWnzA94afR9Ta4huVOyyI
- [ ] Task -> ◽ Setup Markdown Lint - Install via Mason markdown-cli2
- [ ] Task -> ◽ setup global markdown file https://github.com/linkarzu/dotfiles-latest/blob/ac074f9d7859b3eb59f76d8201eedc1ce248add8/neovim/neobean/lua/plugins/nvim-lint.lua#L26
- [ ] Task -> ◽ Handle link formatting better
- [ ] Task -> ◽ Tune prettier formatting
- [ ] Learn -> ❔ Figure out LSP Based automation
- [ ] Learn -> ❔ Replace Markdown Community With Something Manual

#### General Text Editing

- [ ] Task -> ◽ Ignore urls in spellcheck
- [x] Task -> ◽ Find a way to do title case (https://github.com/johmsalas/text-case.nvim)
- [x] Task -> ◽ Surround text actions
- [x] Learn -> ❔ Wrap selection in ( ) or { } https://docs.astronvim.com/recipes/autopairs/
