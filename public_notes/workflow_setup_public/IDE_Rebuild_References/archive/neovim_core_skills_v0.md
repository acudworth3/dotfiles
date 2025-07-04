# Overview

> Core development practices and learning plans are organized here.

## Easter Eggs

- `:smile`
- `1,10 global /^/ % copy $` like a zip bomb. Creates 10^10 lines (Lines 1-10 must exist first though)
  - Could this be passed from the command line and cause a memory exhaustion?
- `CTRL+x` then `CTRL+l` will look for whole lines to auto complete (Headers are a good use case)

- `g?` applies a cipher to the selected text

## Plugins

> This is for plugins actively being learned. Plugin planning goes in [Plugins](../IDE_Rebuild_References/plugins.md)

## Key Maps

- See [task_queue](../IDE_Rebuild_Plan/neovim_task_queue.md)

## Completed Tasks

- combine with normal command for super powers
- consider `leader s` as a menu choice
- [x] Task -> ��️ do an inventory of keymaps available in which key
- [x] Parse -> 📚 Parse Keep Notes
- [x] Parse -> 📚 neovim star list https://github.com/stars/acudworth3/lists/neovim
- [x] Parse -> 📚 [Plugins](./plugins.md)
- [x] Read -> core_skills_v0.md
- [x] Task -> 🗒️ break into task + habits doc vs ref doc
  - [x] Task -> 🗒️ This document becomes reference not tasks
- [x] Task -> 🗒️ Begin language specific writeups
  - [x] Task -> 🗒️ include plugins.md results here
  - [x] Task -> 🗒️ add github document
- [x] Task -> 🗒️ Consider full tool doc library
- [x] Task -> 🗒️ Combine `f` with `;` and `,` (flash.nvim handles as well)
  - [x] Task -> 🗒️ Look for examples of better ways to do this
- [x] Task -> 🗒️ Explore LSP Menu
- [x] Learn -> ❔ control available telescope actions
  - [x] Task -> 🗒️ Learn Copy Current Branch (Lazy Git is pretty good at this)
- [x] Learn -> ❔ Edit via find Using `:g/<pattern>/` norm gets most complicated editing tasks done
- [x] Read -> 📖 `: help search` take notes on flags
- [x] Task -> 🗒️ map visual searches https://vim.fandom.com/wiki/Keystroke_Saving_Substituting_and_Searching
      `:%s/\V- [X]/- [ ]`
- [x] Task -> 🗒️ Search for examples - maybe https://vim.fandom.com/wiki/Vim_Tips_Wiki
- [x] Read -> 📖 https://vim.fandom.com/wiki/Power_of_g
- [x] Task -> 🗒️ Collect useful global commands
- [x] Task -> 🗒️ Populate with Telescope Results (review keymaps)
- [x] Task -> 🗒️ Understand what populates it
- [x] Read -> 📖 :help quickfix
- [x] Task -> 🗒️ compare to `:r !ls`
- [x] Task -> 🗒️ Validate if the full shell is available (including Shell Variables)
- [x] Task -> 🗒️ sample with `luaeval` (too complicated)
- [x] Task -> 🗒️ Review flags
- [x] Task -> 🗒️ Maybe map this `:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/` https://vim.fandom.com/wiki/Search_and_replace_the_word_under_the_cursor
- [x] Task -> 🗒️ Propose Standard Pattern
- [x] Task -> 🗒️ Find away to do this across files (Grug Far)
- [x] Read -> 📖 :help substitute + take notes on flags
- [x] Read -> 📖 `:h backtick` expansion - tldr; some commands can take an arg formed by `` and a shell expression; Tend to think pipes will be better
- [x] Task -> 🗒️ collect pattern matching notes from `global` + `substitute` + `search` here
