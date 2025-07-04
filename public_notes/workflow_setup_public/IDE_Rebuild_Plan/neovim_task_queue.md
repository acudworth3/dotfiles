# Task Queue

> Things to work on (not references)
> neovim only; no LSP setup
> Generally avoid "learn this" types of tasks

## Misc

- [ ] Task -> 🗒️ do json editing fundamentals

- [ ] Task -> 🗒️ ftplugin approach in nvim POC
- [x] Task -> 🗒️ map EDITOR be neovim
- [ ] Task -> 🗒️ map the system pager to be neovim
- [ ] Task -> 🗒️ set editor in git config
- [ ] Task -> 🗒️ figure out how to copy from command history
- [ ] Task -> 🗒️ yazi previews images but nvim yazi does not

- [ ] Task -> 🗒️ How to install a specific version of nvim (hard)

- [ ] Read -> 📖 https://www.lazyvim.org/
- [ ] Read -> 📖 `:h motions`

### Docs Refactoring

- [x] Task -> 🗒️ move Lua Development into their own files

### Misc - Lua Adoption

> moved to [Lua_Development](../IDE_Rebuild_References/Lua_Development.md)

## Key Maps

> Key map only. Attempt to do more in lua and less in vimscript

- [ ] Task -> 🗒️ Extend 'move to eof' to keep cursor position See `toggle-checkbox.lua`
- [ ] Task -> 🗒️ review mappings that need keep cursor position
- [ ] Task -> 🗒️ Resolve conflict `tab` is overloaded for completion and snippet tab stop
- [ ] Task -> 🗒️ Multi cursor pasting (currently it over writes)
- [ ] Task -> 🗒️ update search key maps to user functions

- [x] Task -> 🗒️ normal movde duplicate line (like `alt+shift+j` in vscode)
- [x] Task -> 🗒️ duplicate selection (like `alt+shift+j` in vscode)

### Key Maps Ideas

> These are maybes

- [ ] Task -> 🗒️ ~Text-case behavior on quickfix~
- [ ] Task -> 🗒️ Create a menu for computer diagnostics --> btop, netscanner, gdu, others

## Habit Building

> add to [habtis doc](./neovim_habits_v2.md)

## Plugins

### Plugin Removal/Rewrite Candidates

- [ ] auto-restore-sessions.lua

### Plugin Queue

> Potential Plugins

- [ ] Read -> 📖 https://github.com/stevearc/quicker.nvim
- [ ] Read -> 📖 https://github.com/mistweaverco/kulala.nvim?tab=readme-ov-file
- [ ] ~https://github.com/maskudo/devdocs.nvim~

### Telescope

### Markdownlinter

- [ ] Task -> 🗒️ Finish Markdownlint setup

### Text-case

https://github.com/johmsalas/text-case.nvim?tab=readme-ov-file

- [ ] Task -> 🗒️ Write An Ex Command With These (maybe; seems like visual multi can handle this)
- [ ] Task -> 🗒️ Apply to a search result (maybe; seems like visual multi can handle this)
- [ ] Task -> 🗒️ Apply to a search result across files

### VIM visual Multi

> Hey awesome video. Love the channel. Do you know if there is a way to apply EX commands to each cursor? for example I want to run :r !uuidgen and put a uuid at each cursor

- see nvim_ref_plugin_MultiCursor.md

### nvim-cmp

> removed in astronvimv5

### Oil.nvim

- [ ] Read -> 📖 https://github.com/stevearc/oil.nvim
- [ ] Task -> 🗒️ try https://github.com/stevearc/oil.nvim

### Octo

- [ ] Task -> 🗒️ Review PR workflows
- [ ] Task -> 🗒️ breing astrocommunity.git.octo-nvim into local config
- [ ] Task -> 🗒️ setup fzf action in a sub list ???
- [ ] Task -> 🗒️ improve UI of editing - relative line numbers
- [ ] Task -> 🗒️ attempt this https://github.com/pwntester/octo.nvim?tab=readme-ov-file#-faq "Can I use treesitter markdown parser with octo buffers?"
- [ ] Task -> 🗒️ Practice on kickstarter https://github.com/nvim-lua/kickstart.nvim

## Completed Tasks

- [x] Task -> 🗒️ adjust search to include .github by default
- [x] Task -> 🗒️ upgrade neovim
- [x] Task -> 🗒️ upgrade astronvim
- [x] Parse -> 📚 review options `CTRL+/` for most
- [x] Read -> 📖 ~https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources~
- [x] Read -> 📖 ~https://docs.astronvim.com/recipes/cmp/~
- [x] Task -> 🗒️ ~add css vars~
- [x] Task -> 🗒️ figure out how to load your bash profile on `!` commands (FAILED)
- [x] Task -> 🗒️ ~extend checkbox actions to visual selection (add/check checkbox to each line) (consider lua rewrite)~ use vim multi for this
- [x] Task -> 🗒️ Replace selection in Visual Mode (SKILL ISSUE?) use vim multi + `R` and extended (region) mode
- [x] Task -> 🗒️ do not close tab on terminal exit (use buffer close instead)
- [x] Task -> 🗒️ figure out how to pipe cli output into multiple cursors
- [x] Parse -> 📚 see [notes](/mnt/c/Users/Y891986/Documents/workspace_1_offline/knowledge-graph/project_notes/workflow_setup/IDE_Rebuild_References/nvim_ref_plugin_MultiCursor.md) - Multi Cursor -- Plugin
- [x] Read -> 📖 :help visual-multi
- [x] Task -> 🗒️ ~remap multi cursor with `CTRL+<Up>/<Down>` to `CTRL+j/k`~ Generally not the best way to create multi cursors; rely on visual selection and `\\c`
- [x] Task -> 🗒️ add `octo pr search` to one of the find menus
- [x] Task -> 🗒️ add `octo issue search` to one of the find menus
- [x] Task -> 🗒️ Map an Increment action (previously `CTRL+a`)
- [x] Task -> 🗒️ Logging snippets https://github.com/Goose97/timber.nvim
- [x] Task -> 🗒️ Seems useful https://github.com/meznaric/key-analyzer.nvim
- [x] Parse -> 📚 `Leader +F`
- [x] Parse -> 📚 Octo Menus
- [x] Task -> 🗒️ refactor large sections to their own file Core Skills
- [x] Task -> 🗒️ choose a file name indications `_ref `
- [x] Task -> 🗒️ add gitSigns settings - toggleLineBlame
- [x] Task -> 🗒️ Disable `leader + q`
- [x] Task -> 🗒️ dump quickfix contents into a buffer (After a telescope search)
- [x] Task -> 🗒️ `cdo` + delete line
- [x] Task -> 🗒️ `cdo` + move line into new buffer
- [x] Task -> 🗒️ `cdo` + insert a TODO above it
- [x] Task -> 🗒️ `cdo` + replace word -- ~Use Grug Far~
- [x] Task -> 🗒️ remap title for discoverability [core_skills_v0](./neovim_core_skills_v0.md)
- [x] Task -> 🗒️ Identify vimscript to be replaced in mappings files
- [x] Task -> 🗒️ copy path only
- [x] better-escape
- [x] treesitter.lua
- [x] spectre.lua
- [x] neo-tree.lua
- [x] alpha-nvim.lua
- [x] Task -> 🗒️ list PRs
- [x] Task -> 🗒️ list Issues
- [x] Task -> 🗒️ POC opening an issue
- [x] Task -> 🗒️ review and remove existing plugins
- [x] Task -> 🗒️ Add keep cursor position to Core Skills
- [x] Task -> 🗒️ map the expression register + `system` command to something INSERT mode
- [x] Task -> 🗒️ Commands
- [x] Task -> 🗒️ autocommands
- [x] Task -> 🗒️ keymaps
- [x] Task -> 🗒️ notifications
- [x] Task -> 🗒️ vim_options
- [x] Habit -> 🏃 Default to Telescope for nav
- [x] Habit -> 🏃 Utilized `:` + `Ctrl+D` more;
- [x] Learn -> ❔ Learn how to execute lua on each position (`cdo`)
- [x] Learn -> ❔ Learn how to manage this (Telescope can't remove records)
- [x] Parse -> 📚 https://github.com/nvim-telescope/telescope.nvim/wiki/Extensions
- [x] Parse -> 📚 ~QuickFix Customizations (search community `quickfixtextfunc` `qftf`)~ Rely on Telescope instead
- [x] Read -> 📖 `:h cdo` `:h cfdo`
- [x] Read -> 📖 `:h system`
- [x] Read -> 📖 `:h systemlist`
- [x] Read -> 📖 https://github.com/mikavilpas/yazi.nvim (Probably enable)
- [x] Read -> 📖 https://neovim.io/doc/user/quickfix.html
- [x] Read -> 📖 https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim
- [x] Task -> 🗒️ Attempt neo-tree replacement
- [x] Task -> 🗒️ Create a Telescope doc
- [x] Task -> 🗒️��� Figure out why `CTRL+I` isn't working
- [x] Task -> 🗒️ Fix recession failing to save (FIXED?)
- [x] Task -> 🗒️ Make this faster (`cnext` seems slow compared to `[q`)
- [x] Task -> 🗒️ Map `:NeoTree reveal ` to set working directory to current file path
- [x] Task -> 🗒️ Map `ALT+. and ALT+,` to `:cnext and :cprev`
- [x] Task -> 🗒️ Map `ALT+q` to toggle quickfix
- [x] Task -> 🗒️ Map `ys$~` (strike through whole line) Maybe don't rely on nvim-surround
- [x] Task -> 🗒️ Map copy all matches to registers (see Global Command Example) -? is quickfix better for this? ( I Think So )
- [x] Task -> 🗒️ Move completed items to end of file (see https://github.com/acudworth3/workspace-notes/blob/862434ad592af11815367368e8eefaf915c4430d/project_notes/workflow_setup/IDE_Rebuild_Plan/neovim_core_skills_v0.md?plain=1#L563)
- [x] Task -> 🗒️ Send deleted character to black hole when using `x`
- [x] Task -> 🗒️ add `tcd` to current file keymap
- [x] Task -> 🗒️ add keymaps to user.lua under the Octo menu for gist plugin
- [x] Task -> 🗒️ clear quick fix
- [x] Task -> 🗒️ consider a vim settings section
- [x] Task -> 🗒️ define some workflow paths
- [x] Task -> 🗒️ diagnostics (`leader + l + D`)
- [x] Task -> 🗒️ disable unused mappings https://docs.astronvim.com/recipes/mappings/
- [x] Task -> 🗒️ grep string - searches for word under cursor for grep word
- [x] Task -> 🗒️ how to remove mapping from astro
- [x] Task -> 🗒️ make checkbox reset put you back in your original cursor position (see keep note example)
- [x] Task -> 🗒️ map `ALT+Up` and `Alt+Down` to increment and decrement (Seems like i can't do this with Hardtime) maybe do `Alt+Shift+j` or `Alt+Shift+k` 2
- [x] Task -> 🗒️ map cut action to `CTRL+x`
- [x] Task -> 🗒️ map telescope
- [x] Task -> 🗒️ map telescope
- [x] Task -> 🗒️ map the expression register + `system` command to something Normal Mode
- [x] Task -> 🗒️ move info from [core_skills_v0](./language_setups.md) to references
- [x] Task -> 🗒️ move reference info from this file to core skils (in progress)
- [x] Task -> 🗒️ remap `CTRL+a` to select all
- [x] Task -> 🗒️ remap `SHIFT+Tab` to `<<` and `TAB` to `>>`
- [x] Task -> 🗒️ remap fzf marks to `leader + f + m`
- [x] Task -> 🗒️ remap telescope to `m`
- [x] Task -> 🗒️ remap this to something?
- [x] Task -> 🗒️ replace `leader+e` with yazi in cwd `leader + t + y`
- [x] Task -> 🗒️ replace `leader+o` with yazi in current buffer `leader + b + y`
- [x] Task -> 🗒️ run `:telescope +CTRL+D` or`:telescope builtins` and map things you want
- [x] Task -> 🗒️ search config files (~1 min in) https://www.youtube.com/watch?v=xdXE1tOT-qg&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=9
- [x] Task -> 🗒️ setup a floating terminal
- [x] Task -> 🗒️ swap cursor tracking for smear https://github.com/sphamba/smear-cursor.nvim
- [x] Task -> 🗒️ symbol search
- [x] Task -> 🗒️ try this https://github.com/rishabhjain9191/telescope-monorepos
- [x] Task -> 🗒️ work with `:copen`
- [x] Task -> 🗒️ ~disable esc in insert mode. to force `ALT` usage (BAD IDEA)~
- [x] Task -> 🗒️ ~map `leader+m` such that you can easier do +-/5 to move a line/selection that many up/down~
- [x] Task -> 🗒️ ~remap `tabnew` to something~ practice EX usage instead `:tab` then use auto complete `CTRL+d`
- [x] replace `leader+e` with yazi ALT use yazi float more
