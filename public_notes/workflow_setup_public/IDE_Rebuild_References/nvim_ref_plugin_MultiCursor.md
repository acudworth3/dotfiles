# Multi Cursor

> You have to find a way
> noting that `:<,> norm I TEXT` gets pretty close

## Reading

## Tasking

- [ ] Habit -> 🏃 alternate `Ctrl-N` and `q` when making selections (pattern) `Q` removes cursors
- [ ] Task -> 🗒️ practice replace with `R`
- [ ] Learn -> ❔ understand copy and paste
- [ ] Task -> 🗒️ POC align and markdown tables
- [x] Task -> 🗒️ bring these into the habit folder

### Tutorial Notes - nvim-ref multicursors-ref multi-ref

- "Cursor mode" is equivalent to Normal Mode
  - vim motions move the cursors
- "Extended mode" (initiated by `TAB`) is equivalent to visual mode
  - vim motions change the selection
  - Useful for operating on selection: `\\R`

### Efficient Selection

> Cursor per line patters

- Simple: `Ctrl-N` and `Ctrl- <DOWN>/<UP>`
- `\\A` equivalent to vscode `CTRL+SHFT+L` select all of a given word
- Improved: - VISUAL : make visual selection, then `\\c`: from visual mode you created a column of cursors.

- Select and unselect combine `n` `N` `q` and `Q` to make precise sets of cursors after entering VM
  - depends on pattern shown in status bar

- Advanced trick is to create cursors via regex `\\/` example: searchtext[1-9]

#### Region Selection

> Generally use if you want to do find and replace over a selection
> Note subtle difference between region selection and visual mode.

- Regions allow you to perform multicursor command directly on the selection
- All `VM-action` are available on regions

- Simple: make visual selection. `\\A` or `\\a`
- More Precise: begin with cursors. `TAB` select with standard vim motions + `si(BRACKET)` activity
- [ ] Task -> 🗒️ put an `si(BRACKET)` example here

### Efficient Editing

#### Duplicate

- `\\d` not complicated but simpler than copy and pasting
- this lets you keep your system clipboard available
- make a region selection

#### Alignment

- [ ] Task -> 🗒️ document section on Alignment from tutorial

~`vip\\c<tab>f"\\a`~

> Aligns " `\\a` - this uses the cursor to guide alignment

1. visual selection
2. `\\c` create cursors
3. `$` end of line
4. `F"` backward Find
5. `\\a` align

> Align x `\\<` - this uses a char search to guide alignment

```vimscript

    Let g:VM_maps = {}            x" some text
    Let g:VM_maps["Select l"] = '<S-Right>x'   " some text
    Let g:VM_maps["Select h"] = x'<S-Left>'      " some text

```

#### Find and Replace `R`

> Must be in region/cursor mode (multiple ways to get there)

> great for replacing `_` `-` and `/` type chars

- `vip\\aR`

1. make visual selection
2. `\\a` creates a selection region
3. `R` calls the replace function

```text

Proin poop amet nisl purus. In pretium at libero in tempor.Nunc odio eros,
sollicitudin cursus eros at,
finibus sollicitudin nisi. Aenean ut est eget mi dignissim blandit et vel neque. Pellentesque dignissim turpis nisl. Curabitur finibus scelerisque euismod. Mauris quis ante ac velit vestibulum porttitor et dignissim est. Vestibulum bibendum interdum nibh,
congue bibendum leo posuere nec.Suspendisse tellus eros,
maximus pharetra sollicitudin a,
vulputate quis nisi. Cras pretium eget nisl at consectetur. Lorem ipsum dolor poop amet,
consectetur adipiscing elit. Etiam eget pellentesque turpis,
non scelerisque diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras blandit felis ut eleifend elementum. Pellentesque volutpat nisi a velit pulvinar, ut venenatis elit malesuada. Nam aliquam ut libero vitae rhoncus. Morbi id ex nisi.

```

#### Numbering

> generally cursor based not region based

`vip\\ci<space><left>\\n`

```

Nam ex lorem, blandit sit amet rhoncus sed, varius id tellus.
Curabitur convallis a est sed consectetur.
Proin vel ipsum eget tellus varius aliquet.
Nullam et orci fermentum, suscipit nulla eu

```

#### Ex Commands

> Straight forward; enter `\\x` to enter EX mode.

- generally rely on `:r !COMMAND` pattern

#### Transpose Example

> Sort of confusing when this is more than 2 lines, but works like a scroll

`2V\\a\\t`

```
Nam ex lorem, blandit sit amet rhoncus sed, varius id tellus.
Curabitur convallis a est sed consectetur.
Proin vel ipsum eget tellus varius aliquet.
Nullam et orci fermentum, suscipit nulla eu

```

#### Text Case work

> Plugin works better on a selection

`CTRL+nwww\\CS`

1. Select
2. `\\C`
3. Letter from ref

```
Consectetur Adipiscing Elit  Etiam eget pellentesque turpis,

```

##### Ref

u lowercase
U UPPERCASE
C Captialize
t Title Case
c camelCase
P PascalCase
s snake_case
S SNAKE_UPPERCASE - dash-case
. dot.case
<space> space case

---

> Generally utilize the `\\` operator

- visual mode has which key available for `\\`
- `Ctrl-N` after `Ctrl- <down>` will select the word where the cursor was created
- `enter` is requried for many operations
- small detail: you always have a cursor at the crosshairs, but it won't be red

> Selecting Regions is very powerful when combined with Replace `R` operator

- After creating multicursors use the `s` operator (not `v`) with vim builtins ex `s$` to select to end of line
- `r` operates like a replace action on every character in the selection

- [x] Task -> 🗒️ review ways to quickly create selection (`Ctrl-N`)

## ARCHIVE Multi Cursor -- Plugin -- ARCHIVE

- `CTRL+n` to enter across selection
- `CTRL+arrow keys` to add more cursors
- enter visual mode for less than full word selection. Combine with `CTRL+n`

  > Rule of thumb visual mode is much easier for lines next to each other

SAMPLE

```json
    "body": [
      "abc deft 4",:
      "abc deft 3",:
      "abc deft 5",:
      "abc 22 deft",:
      "abc deft",:
      "abc deft",:
      "abc 33 deft",
      "abc deft",
      "abc `deft`",
      "abc `deft`",
      "abc `deft`",
      "abc `deft`"
    ]

```

- Switching modes `TAB`
  - ex mode - (default here for a natural feeling) more like multi cursor
    - [ ] Task -> 🗒️ attempt to apply global type commands for this test

  - cursor mode - effectively visual mode test

- copying across multiple lines - EX mode
  - ( Note that highlight on yank doesn't really work )
  - This allows things like 3yw
- copying across multiple lines
  - need to be in ex mode for some commands
  - contents are copied into the `"` register
    - easiest way to work with this is `leader f r <Enter>` also `" " p`
    - [x] Task -> 🗒️ consider mapping a past command here mapped to `\\p`
    - edit with `tab (to select) then CTRL+e` to directly edit register
  - will populate the yankbank per yank command
    > this means you can copy all or individual pieces depending on preference

SAMPLE

```json
    "body": [
      "abc deft 4",:
      "abc deft 3",:
      "abc deft 5",:
      "abc 22 deft",:
      "abc deft",:
      "abc deft",:
      "abc 33 deft",
      "abc deft",
      "abc `deft`",
      "abc `deft`",
      "abc `deft`",
      "abc `deft`"
    ]

```

## Completed Tasks

- [x] Task -> 🗒️ Set `VMTheme` in settings
- [x] Read -> 📖 Consider moving this to a new document
- [x] Read -> 📖 /home/acudworth3/.local/share/nvim-astro/lazy/vim-visual-multi/doc/visual-multi.txt
- [x] Read -> 📖 /home/acudworth3/.local/share/nvim-astro/lazy/vim-visual-multi/doc/vm-ex-commands.txt
- [x] Read -> 📖 /home/acudworth3/.local/share/nvim-astro/lazy/vim-visual-multi/doc/vm-faq.txt
- [x] Read -> 📖 /home/acudworth3/.local/share/nvim-astro/lazy/vim-visual-multi/doc/vm-mappings.txt
- [x] Read -> 📖 /home/acudworth3/.local/share/nvim-astro/lazy/vim-visual-multi/doc/vm-settings.txt
- [x] Task -> 🗒️ do tutorial 2x + document fundamentals (curr: line 180)
- [x] Task -> 🗒️ repeat tutorial with `\` Disabled
- [x] Task -> 🗒️ write a fundamentals docs
- [x] Task -> ���️ Parse the `\\` menu
- [x] Task -> 🗒️ setup smart case cycling "Press `\\c`: this allows you to cycle the case setting of the current pattern. Press"
- [x] Task -> 🗒️ disable `\` in `mappings.lua` to allow `\\` usage
- [x] Task -> 🗒️ see if you can figure out highlighting - Adjust VMTheme see `:h VMTheme`
- [x] Task -> 🗒️ ~document some examples of this Find with Regex `\\/`~
- [x] Task -> 🗒️ document and practice ex command
- [x] Task -> 🗒️ document `\\N`
- [x] Task -> 🗒️ document `\\a` from VM mode
- [x] Task -> 🗒️ document `\\/`
- [x] Task -> 🗒️ document region + `\\t`
