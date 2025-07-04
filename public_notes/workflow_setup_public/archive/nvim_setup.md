# Nvim Setup

> Organization of Learning and Seting Up Neovim; First Draft

TODO move this into Archive

- [x] Refactor Nvim Setup documentation
- [x] Create IDE document
  - [x] Switch to ~~Lazy Vim?~~ astronvim
  - [x] Read ~~Lazy Vim~~ Docs astronvim
- [x] Implement as an IDE (IN PROGRESS)
- [x] Rewrite IDE doc as habits (IN PROGRESS)

## Astro Nvim

- [x] Task -> ◽ Update install doc to reflect out of box capabilities

- [x] Parse -> 📚 https://astronvim.com/
- [x] Task -> ◽ Disable arrow keys
- [x] Task -> ◽ add mode to status bar https://docs.astronvim.com/recipes/status/
- [x] Task -> ◽ Enable settings (see .lua files)
- [x] Task -> ◽ Repeat Install process
- [x] Task -> ◽ Persist across machines (review share location)
- [x] Task -> ◽ Remap nvim alias
- [x] Task -> ◽ Replace nightly with release https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2
- [x] Parse -> 📚 Review 'ensure_installed' choices
- [ ] Task -> ◽ ~~(maybe) vscode winbar https://docs.astronvim.com/recipes/status/~~

adjust cihttps://astronvim.com/

## Setup Tasking

- [x] Task -> ◽ Find a spellchecker `:help spell`
- [x] Task -> ◽ ~~Find a cheat sheet `:help quickref`~~ rely on which key
- [x] Learn -> ❔ Understand how to reload lua configs --> restart astro nvim
- [x] Parse -> 📚 https://github.com/Piotr1215/youtube/tree/main
- [x] Task -> ◽ do vimbegood

- [ ] Learn -> ❔ ~file manipulation from command mode~
- [ ] Parse -> 📚 https://github.com/nvim-treesitter/nvim-treesitter

### Setup Tasking -- Reading List

- [ ] Read -> 📖 `:help windows -> buffer` reread buffsection
- [ ] Read -> 📖 `:help tab-page`
- [ ] Read -> 📖 `:help lsp-vs-treesitter`
- [ ] Read -> 📖 `:help ins-completion`
- [ ] Read -> 📖 `:help nvim-treesitter`
- [ ] Read -> 📖 `:help spell`
- [ ] Read -> 📖 `:help tag`
- [ ] Read -> 📖 `:help terminal`
- [ ] Read -> 📖 `:help lua-guide-autocommands`
- [ ] Read -> 📖 `:help vim.keymap.set()`
- [ ] Read -> 📖 `:help visual-multi`
- [ ] Read -> 📖 read :map setup
- [ ] Read -> 📖 lua-guide.html
- [ ] Read -> 📖 usr_01.txt

- [ ] Read -> 📖 help-section --> ABOUT NVIM

### Setup Tasking -- Neovim

- [ ] Habit -> 🏃 Everything in this video https://www.youtube.com/watch?v=m8C0Cq9Uv9o

### Setup Tasking -- Neovim -- Lua

- [ ] Read -> 📖 lua-guide.html
- [ ] Read -> 📖 `:help lua-guide-autocommands`
- [ ] Read -> 📖 `:help lua-guide`
- [ ] Learn -> ❔ vim.opt syntax from command mode

### Setup Tasking -- Neovim -- Plugins

- [x] Read -> 📖 ~~help lazy.nvim-lazy.nvim-structuring-your-plugins~~ (Achieved with AstroNvim)

### Setup Tasking -- Neovim -- LSPs

- [x] .Net setup
- [x] webdev setup
- [x] markdown setup

## Bash Tasks

- [x] Task -> ◽ setup alias in bash for workspace (Achieved with AstroNvim)
- [x] Learn -> ❔ Why :read !ll type commands don't load bash aliases (not a terminal use F7)

## Setup Wish list

- [ ] Task -> ◽ re-casing selection - see gc

## Commands to Learn

> Important usage of `:` operator

- :wq --> write and close in one step
- CTRL+z "then" fg --> Put vim in the background then return to it

- [x] Learn -> ❔ :args + :argsdo learn more about this
  - `:argdo %s/\<x_cnt\>/x_counter/ge | update`
  - udpate saves file if modified (I think this is vimscript)
  - :args \*.md appears to load all cwd results into buffers

### Commands to Learn -- File content to CLI (SUBSET)

## Key Strokes

> These are working lists that I will add and remove to as things become 2nd nature

### Key Strokes - Learn - View Manipulation

> generally this is achieved via plugins + distributions

- [ ] Learn -> ❔ alias things in command mode `wrap and no-wrap` (maybe favor command complete)
- [ ] Task -> ◽ remap end of line to something else (not $)
- [ ] Task -> ◽ consider ALT+ENTER for full screen mode and reset wezterm

- [ ] Habit -> 🏃 Begin using nvim windows not wt tabs (Not sure if htis it a good idea)
- [x] Habit -> 🏃 Fast change colorscheme :Telescope colorscheme
- [x] Learn -> ❔ Session manipulation (likely via plugin)

### View Manipulation (Folds)

- [ ] Learn -> ❔ Fold Manipulation (z + OTHER KEYS)
- [ ] Learn -> ❔ Figure out LSP Based automation
- [ ] Task -> ◽ Setup a deeply nested object and do a folder per section exercise
- [ ] Task -> ◽ Consider ":set foldclose=all"
- [ ] Task -> ◽ Consider "set foldmethod=indent"

### Key Strokes - Learn - View Tabs

> The advantage of tabs is organizing windows. No point in useing tabs over buffers

- :tab --> open current file in tab (find hotkey)
- \ t "on file" --> open file in tab from neo tree
- gt --> move between tabs

- [x] Learn -> ❔ how to open in tab from find file

### Key Strokes - Don't Do

### Key Strokes - Learn - General

- [x] Habit -> 🏃 Try to stay in normal mode
  - [x] Habit -> 🏃 favor 'x' for deletion
  - [ ] Habit -> 🏃 favor 'r' and 'R' for single line writes
    - [ ] Task -> ◽ ~chain with 'd+$' to delete line + start typing~ c and C (change) do this
- [ ] Learn -> ❔ window management https://github.com/folke/edgy.nvim
- [ ] Learn -> ❔ Insert mode hotkey map (CTRL+w, CTRL+D, CTRL+T)

### Key Strokes - Learn - Clipboard Basics

> y and yy are putting things into the clipboard

- :edit FILENAME allows 'p' to paste in FILENAME

### Key Strokes - Mappings to Setup

- "Surround with {}" :map <F5> i{<Esc>ea}<Esc>

### Key Strokes - Reference - Line Manipulation

- > > "use as tab in normal mode"

#### Key Strokes - Blank Lines

- [ ] Learn -> ❔how to insert a blank line in normal mode

- O --> "Add blank line above"
- o --> "Add blank line above"
- J --> "Combine 2 lines" + "delete an empty line"

#### Key Strokes - Deleting Lines

##### Normal Mode

- D --> "delete to end of line; alternative to d$"
- S --> "S delete line and go into insert mode"
- C --> "change to end of line - delete rest of line and go into insert mode"

- yy p --> "duplicate line"
- d$ --> "delete to end of line"
- d$a --> "delete to end of line and begin editing"
- d0 --> "delete to start of line"

##### Insert Mode

- CTRL+U --> "delete whole line"
- CTRL+O --> "run a normal mode command and return to insert mode. example CTRL+O dd"

#### Key Strokes - Multi Line Edits

> visual block follwoed by edits then esc. This si close to multi cursor. Edits
> will be applied to each line selected

### Key Strokes - Reference - Character Manipulation

- ~~ea --> "e 'end' puts you at the end of the word"
  --> "a 'append' puts you in insert mode"~~

- A --> Puts you at the end of the line in append mode
- R --> "REPLACE Begin Overwriting the text where you are"

> "e puts you at the end of the next word w puts you at the start
> of the next word useful when combined with i (insert), a (append), R (replace)"

### Key Strokes - Reference - Common Commands

> For permanent setting modify init.lua
> To do it without reloading run the following

> Autocompletion
> "rely on CTRL+P" while in insert mode

- [ ] Read -> 📖 read "Completing Specific Items"
- g CTRL+G --> summarize line words etc in the file (CTRL+G applied to selection)

### Key Strokes - Reference - Navigation - Across files

- 'gf' will take you straight to a file definition
- figure out how to read in the current file more easily

### Key Strokes - Reference - Navigation

-- This will expand snippets if the LSP sent a snippet.~~u

- end of line --> $ + alternate use END
- start of line --> 0 alternate use HOME

- use fx/Tx to jump to character x in a line
  - combine with ; or , to nav mutiples

### Suggested Patterns

>

## IDE Features

### IDE Features --> Distrbutions

- [ ] Parse -> 📚 LazyVim https://www.lazyvim.org/
- [ ] Parse -> 📚 3 LunarVim https://www.lunarvim.org/
- [x] Parse -> 📚 1 AstroNvim https://github.com/AstroNvim/AstroNvim
- [ ] Parse -> 📚 2 NvChad https://github.com/NvChad/NvChad
- [ ] Parse -> 📚 self setup candidate https://www.youtube.com/watch?v=6pAG3BHurdM

### ✅ Find and Replace

### ✅ Color Themes

> Achieved with Astro Nvim

### ✅ Snippets

> ~Achieved with Astro Nvim~

### ✅ Git Integration

> Achieved with Astro Nvim

### ✅ File Search

> Achieved with Astro Nvim

- [ ] 📖 Figure out how to arrange file name better (>/< + [/])

### ✅ Terminal Integration

> Achieved with Astro Nvim

- [ ] 📖 Learn :terminal "navigate without leaving terminal"
- [x] Task -> ◽ Fast terminal access

### File Transfer

- [ ] Task -> ◽ Find how to get files from the internet see 'gf'

## Placeholder

> windo does things to all windows

- example `windo w` "Window do"saves all windows
  Also see |:tabdo|, |:argdo|, |:windo|, |:cdo|, |:ldo|, |:cfdo| and |:lfdo|.

- :wall will save all files

> Put things here that are interesting, but not well
> Categorized yet

`vim -o file1 file2 file3` open 3 files split horizontally

- Splitting Windows + open file in 1 command
  These command modifiers can be combined to make a vertically split window
  occupy the full height. Example: >
  :vertical topleft split tags
  Opens a vertically split, full-height window on the "tags" file at the far
  left of the Vim window.
