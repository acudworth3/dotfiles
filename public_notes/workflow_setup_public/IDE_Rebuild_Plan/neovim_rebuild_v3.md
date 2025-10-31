# Keep Note Parsing

- [ ] Task -> 🗒️ validate this "if you want to seach a regular expression us `/\v` if you want to use verbatim use `/\V` else escape Characters"
- [x] Task -> 🗒️ find the equivalent of `ctrl+f` on EX commands for search command --> it is `ctrl+f`
- [ ] Task -> 🗒️ consider shortening `z=1` you use this a lot
- [ ] Task -> 🗒️ ~do basic `leader + g` commands~
- [ ] Task -> 🗒️ setup the sidekick plugin
- [ ] Task -> 🗒️ How to do text transform on all matches (currently would need multicursor)

## Read

- [x] Lua_Development.md
- [x] nvim_ref_plugin_Telescope.md
- [x] nvim_ref_Quick_Fix.md
- [x] nvim_ref_Clipboard.md
- [x] nvim_ref_Fundamentals.md
- [x] nvim_ref_EX_Command.md
- [x] nvim_ref_Global_Command.md
- [x] nvim_ref_Normal_Command.md
- [x] nvim_ref_Search.md
- [x] nvim_ref_Visual_Mode.md
- [x] nvim_ref_plugin_MultiCursor.md

## Completion

- [ ] Habit -> 🏃 In EX mode use `ctrl+y` to accept first suggestion
- [ ] Habit -> 🏃 In `/` context use `Tab` to complete the current match onto the search (if partial)

## Substitute Commands

- [ ] Task -> 🗒️ prepopualte a literal (verbatim) search `/\V`
- [ ] Task -> 🗒️ replace over selection
- [ ] Task -> 🗒️ prepopualte a regex search `/\v` with some examples `/\vRead|Task`
  - [ ] Task -> 🗒️ Multiple Patterns
  - [ ] Task -> 🗒️ Case Insensitive

- [ ] Task -> 🗒️ map a copy results command. Use the defualt yank register https://keep.google.com/u/0/#NOTE/1C_d8ux-dxf39sklvu-Nge2fvwgeo09iL2VuZBiwPpIMpkhK3hzVIdqNuEnHrCrROA8t6JhJh

## Global Commands

> see `nvim_ref_Global_Command`

- [ ] Task -> 🗒️ maybe build a menu out of these

- [ ] Task -> 🗒️ inverted match "delete lines not matching" `:v/href/d`
- [ ] Task -> 🗒️ Copy all lines that match a pattern
- [ ] Task -> 🗒️ Append to lines matching a pattern "maybe put in search"
- [ ] Task -> 🗒️ Write Matches to a new buffer

## Dot Operator

> Focus more on `.` efficiency

## Normal Command

> combine with range more often

- [ ] Habit -> 🏃 combine normal command with the `.` operator
- [ ] Habit -> 🏃 combine with the `@macro`
- [ ] Habit -> 🏃 use VISUAL SELECTION operations followed by `:'<,'>norm ACTION` favor `.` or `@macro` for the Action (major benefit; it will train `.` operations)
- [ ] Task -> 🗒️ test some combine normal command with the `.` operator test patterns out
- [ ] Task -> 🗒️ test some combine normal command with the `.` operator + visual Selection patterns out
- [ ] Task -> 🗒️ write out samples into normal docs

> `%norm LINWISE ACTION` will apply to whole file linewise
> Example `%norm i //`

## Mutli Cursor

> Goal --> get to region selection quicker. Internalize Options

- [ ] Habit -> 🏃 use `\\A` more often
- [ ] Habit -> 🏃 - Improved: - VISUAL : make visual selection, then `\\c`: from visual mode you created a column of cursors.

- [ ] Task -> 🗒️ find a way to make search based text transform easier
- [ ] Task -> 🗒️ make a keymap for region selection in visual mode
- [ ] Task -> 🗒️ make a keymap for region selection + vip
- [ ] Parse -> 📚 `\\` options after selection

## Habits

- [ ] Task -> 🗒️ test out `d{motion}` with Search
  - Maybe `dap` or `di{` inside source code?
  - Maybe `*` + `dw` + `.`

- [ ] Habit -> 🏃 delete rather than append if change is small and you want `.` repetation (high mental overhead)
- [ ] Habit -> 🏃 need to internalize range selection `%` full file and `'<,>'` visual selection
