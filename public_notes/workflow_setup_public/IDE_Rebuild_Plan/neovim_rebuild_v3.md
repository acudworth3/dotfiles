# Keep Note Parsing

- [ ] Task -> 🗒️ How to do text transform on all matches (currently would need multicursor)
- [ ] Task -> 🗒️ consider shortening `z=1` you use this a lot
- [ ] Task -> 🗒️ validate this "if you want to search a regular expression use `/\v` if you want to use verbatim use `/\V` else escape Characters"

## Read

## Menu Review

- [ ] Task -> 🗒️ how to change the order for which key
- [ ] remove/Replace `leader + p` ?

## KeyMaps

- [ ] Habit -> 🏃 use `leader + b + s` occasionally (buffer sort)
- [ ] Habit -> 🏃 in Insert mode `CTRL + SPACE` opens auto complete
- [ ] Habit -> 🏃 `leader f + c` word under cursor --> then subsearch
- [ ] Habit -> 🏃 `Alt + m` when picking with snacks to maximize
- [ ] Habit -> 🏃 `Alt + h` + `Alt + i` to toggle hidden and ignored files

### 2 stroke Keymap

~25 to display
~22 used

lower
ikmrvwxz

Upper

AIKMRVWXZ

## Completion

- [ ] Habit -> 🏃 In EX mode use `ctrl+y` to accept first suggestion
- [ ] Habit -> 🏃 In `/` context use `Tab` to complete the current match onto the search (if partial)

## Substitute Commands

- [ ] Task -> 🗒️ prepopualte a literal (verbatim) search `/\V`

### Copy Search Results (Under Review)

> You have to figure out how to clear the register or it will always append

- [ ] Task -> 🗒️ map a copy results command. Use the default yank register https://keep.google.com/u/0/#NOTE/1C_d8ux-dxf39sklvu-Nge2fvwgeo09iL2VuZBiwPpIMpkhK3hzVIdqNuEnHrCrROA8t6JhJh
- [ ] Task -> 🗒️ Copy all lines that match a pattern `:g/Task/yank P` paste with `"p`

### Regexes

`/[0-9]%` - any number followed by %
`/[a-z]%` - any lowercase letter followed by %
`/[A-Z]%` - any uppercase letter followed by %
`/\v[A-Z]{2}` - any 2 uppercase letters
`/\v[A-Z]{2}\%` - any 2 uppercase letters followed by a %
`[abc]` represents 'any of' a b or c

## Global Commands

> see `nvim_ref_Global_Command`

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

## Habits

- [ ] Task -> 🗒️ test out `d{motion}` with Search
  - Maybe `dap` or `di{` inside source code?
  - Maybe `*` + `dw` + `.`

- [ ] Habit -> 🏃 delete rather than append if change is small and you want `.` repetition (high mental overhead)
- [ ] Habit -> 🏃 need to internalize range selection `%` full file and `'<,>'` visual selection

## Completed Tasks

- [x] Task -> 🗒️ ~do basic `leader + g` commands~
- [x] Read -> 📖 https://docs.astronvim.com/mapping
- [x] Read -> 📖 picker keybindings
- [x] Task -> 🗒️ find the equivalent of `ctrl+f` on EX commands for search command --> it is `ctrl+f`
- [x] Task -> 🗒️ setup the sidekick plugin
- [x] Task -> 🗒️ survey current menu choices
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
- [x] ~remove/Replace `leader + g` ?~
- [x] Replace `leader + P`
- [x] remove `leader + R`
- [x] remove/Replace `leader + S`
- [x] Task -> 🗒️ remove copilot plugins
- [x] remove/Replace `leader + t + y` ?
- [x] Habit -> 🏃 replace over selection `'<,'>s/Task/abc/g`
- [x] Task -> 🗒️ prepopualte a regex search `/\v` with some examples `/\vRead|Task`
  - [x] Task -> 🗒️ Multiple Patterns `/\vRead|Task`
  - [x] Task -> 🗒️ Case Insensitive
- [x] Task -> 🗒️ maybe build a menu out of these
- [x] Task -> 🗒️ inverted match "delete lines not matching" `:v/href/d`
- [x] Task -> 🗒️ ~Append to lines matching a pattern "maybe put in search"~
- [x] Task -> 🗒️ ~Write Matches to a new file `:g/Task/ . write >> full_path.md`~
- [x] Task -> 🗒️ ~Write Matches to a new buffer~
      ~- [x] Habit -> 🏃 use `\\A` more often~
- [x] Habit -> 🏃 - Improved: - VISUAL : make visual selection, then `\\c`: from visual mode you created a column of cursors.
- [x] Task -> 🗒️ ~find a way to make search based text transform easier~
- [x] Task -> 🗒️ ~make a keymap for region selection in visual mode~
- [x] Task -> 🗒️ ~make a keymap for region selection + vip~
- [x] Parse -> 📚 ~`\\` options after selection~
