# Neovim Habits

> not strictly tasks to complete

- [ ] Task -> 🗒️ consider renaming this to include all cli activity

## CLI

- [ ] Task -> 🗒️ replace use of grep with rg

## small

- [ ] Habit -> 🏃 favor `CTRL+z` and `fg` over new tabs
- [ ] Habit -> 🏃 use `ga` + letter for case conversion
- [ ] Habit -> 🏃 `!!` instead of `:r !COMMAND` PAUSED BECUASE OF BLINK use `ALT+e` instead
- [ ] Habit -> 🏃 use `r` instead of `insert` + `ESC` Sequences
- [ ] Habit -> 🏃 use `CTLR+h` instead of `backspace` insert mode --> (Also works in standard bash shell)
- [ ] Habit -> 🏃 use `o` to move to front and back of visual selection

- [ ] Habit -> 🏃 develop default folding actions
  - [ ] Task -> 🗒️ Sane Defaults by file type
  - [ ] Task -> 🗒️ visual selection + `zf`
  - [ ] Task -> 🗒️ `za` as needed

## medium

- [ ] Task -> 🗒️ figure out how to paste above and below a line
- [ ] Habit -> 🏃 adopt change then repeat via `.` Pattern

- [ ] Habit -> 🏃 Tree based navigating in editor `leader + f + s` works pretty well
- [ ] Task -> 🗒️ cyclical review of fundamentals
- [ ] Habit -> 🏃 Begin using grep-able tags example `nvim-ref` and build a system around this
- [ ] Task -> 🗒️ use `mm` regularly (inside a file) and `learder + M + mark` to return

- [ ] Habit -> 🏃 multi-cursor based find and replace
- [x] Habit -> 🏃 use vi keys on CLI
  - [x] Task -> 🗒️ add `set -o vi` in shell setup
  - [x] Task -> 🗒️ set editor to vim
  - [x] Task -> 🗒️ set pager to vim
  - [x] Task -> 🗒️ setup starship to display vim mode

## Hard

## Lua Development

> Add this to the toolkit

- [ ] Task -> 🗒️ write some telescope actions/pickers
- [ ] Task -> 🗒️ lua development environment
- [ ] learn -> ❔ learn basics of the lua nvim api

## LSP Review

- [ ] Task -> 🗒️ [lsp doc](../IDE_Rebuild_References/nvim_ref_LSP_Info.md)

## build_strategy v2

- [ ] learn -> ❔ ctrl keys for insert mode
- [ ] learn -> ❔ register use cases - MACROs and scripting
  - [ ] Task -> 🗒️ use `norm@ALPHA` on a visual selection to run a single line macro on each
- [ ] learn -> ❔ edit via find using :g/<pattern>/ norm gets most complicated editing tasks done

- [ ] learn -> ❔ review discoverability by types (telescope + ctrl+d etc)
- [ ] task -> 🗒️ replace vimscript in config with lua

- [ ] parse -> 📚 https://github.com/charlax/professional-programming?tab=readme-ov-file#vim

## Completed

- [x] Habit -> 🏃 ~access previous commands with `:Telescope command_history` - how to copy this~
- [x] ~Fuzzy Refine in telescope `CTRL+SPACE`~ doesn't work in lazy
- [x] Habit -> 🏃 `CTRL+W` to delete word in EX or INSERT mode (Also works in standard bash shell)
- [x] Habit -> 🏃 `CTRL+U` to delete line in EX or INSERT mode (Also works in standard bash shell)
- [x] habit -> 🏃 utilize marks
- [x] learn -> ❔ ~use alt key in insert mode (does a normal action ) -~ not as useful as i thought
- [x] learn -> ❔ utilize marks
- [x] learn -> ❔ ~utilize tags~
- [x] learn -> ❔ find and replace across files - Grug Far
- [x] habit -> 🏃 ~utilize tags~
- [x] Habit -> 🏃 Develop Lua Scripting basics
- [x] habit -> 🏃 ~rely on tabs and windows less (use marks and jump lists to move around)~
- [x] Task -> 🗒️ expand `/home/wsl_1/.config/nvim-astro/lua/plugins/learning_lua.lua`
- [x] learn -> ❔ quick fix list
- [x] learn -> ❔ telescope feature (good sucess with `leader + F`)
- [x] Habit -> 🏃 `viBRACKET` + `vaBRACKET` useful as `vi"` `va"`
- [x] habit -> 🏃 quick fix list (going pretty well)
- [x] parse -> 📚 review a more telescope + cli focused workflow
- [x] Habit -> 🏃 ~Disable Arrow Keys in insert mode; learn the esc hotkeys~ (interferes with telescope)
- [x] Habit -> 🏃 ~Practice `[Action` `]Action` Navigation~ Uncomfortable
- [x] habit -> 🏃 keep text in center of the screen (zz) https://github.com/rlychrisg/keepcursor.nvim
- [x] habit -> 🏃 use windows to do quick file edits (doing pretty well on this)
- [x] habit -> 🏃 navigate with treesitter (space + l + s)
- [x] habit -> 🏃 prefer grep nav over keybind or file explore
- [x] learn -> ❔ learn "to" vs "at" (example f,t and b,w,e)
- [x] task -> 🗒️ setup a tab based "everything session"
- [x] habit -> 🏃 reduce usage of j and k with motions and ctrl+d/u ()
  - [x] task -> 🗒️ use training plugin
  - [x] task -> 🗒️ hardtime does this
- [x] ~habit -> 🏃 use ctrl+[ instead of esc to exit insert~
- [x] habit -> 🏃 telescope more
  - [x] use tab to select multiple files
- [x] learn -> ❔ consider tabs for standard work over sessions
