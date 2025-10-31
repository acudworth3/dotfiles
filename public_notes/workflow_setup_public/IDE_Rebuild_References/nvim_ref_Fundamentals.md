# Fundamentals

> This should be core features of vim mostly

## General Navigation

> Motion action repeat mindset. 1 Keystroke puts cursor where it needs to be. 1 Keystroke applies the change/action. Bonus if it is repeatable

- ~in neo tree `.` will set the working directory of your session~ this is no longer used
  - `cd` from EX mode is beter
- `^` will take you to the first non white space character in the line
  - "repeating the f+ command, but there's a better way. The `;` command will repeat the last search that the `f` command performed. So instead of typing f+ four times, we can use that command once and then follow up by using the `;` command three times."

- [x] Task -> 🗒️ use `*` key to move between words (basically searches for word under cursor)
- [ ] Task -> 🗒️ Use INSERT to toggle between insert and replace mode
  - Combine with `;` and `,` for or `n` for nav
  - Combine with `.` command to repeat actions

### Motions - Moving Lines Around

- [ ] Task -> 🗒️ find a way to use `alt +j` and `alt+k` for multiple line wise vertical movements

Examples

#### Motions - Move command - nvim-ref

> Move to a mark is an interesting idea
> why are + and minus reversed here? --> + means add to line number
> line 5 +1 becomes line 6

- `:m0` moves current line to line 0
- `:m-5` moves current line to line up 5
- `:m+5` moves current line to line down 5

> Also plays well with visual selection

- after selecting lines `:'<,'>m+5`
- [ ] Task -> 🗒️ good candidate for a key map `Leader+m`

## Expression Register

- [ ] Task -> 🗒️ write a hello world function and test it

> From insert mode `CTRL+r =` allows expressions
> Similar to to `:r !COMMAND` but provides the `system()` interface which allows easier arg management

- MUCH more accessible to type out
- Stay in insert mode
- `CTRL+D` completion available
- seems like both have access to Linux binaries but not shell vars?

### Expression Register Examples - nvim-ref

- `=system("pwd")`
  /mnt/c/Users/Y891986/Documents/workspace_1_offline/knowledge-graph

- get help info from a cli `=system("dotnet run --help")`
- get env vars `=system("printenv")`

## Marks

- [ ] Task -> 🗒️ Use Marks throughout files
- [ ] Task -> 🗒️ Setup a session such that files are open with good marks
- [ ] Learn -> ❔ ~How to persist marks~ Not worth the trouble

### Marks -- References

- you can fzf marks with `leaedr + f + '`
- "Remember, you can set up to twenty-six global marks, which is more than you'll ever need. Use them liberally; set a global mark any time you see something that you might want to snap back to later."
- "The `mm` and `m commands make a handy pair. Respectively, they set the mark m and jump to it. "
- "Set a global mark before going code diving"

### Marks -- References -- Keystroke Patterns

- ` ` will take you to previous jump in file

## Tags

### Tags -- References

## Macro

- [ ] practice quick line edits

### Macro -- References;

> Useful for constructing operations mappings. Record the macro then copy its contents into a command/function

Use `@@` after recording one macro to keep reusing it

Apply Single Line Macros

- record macro to `a` register (or any)
- Select Lines (`SHIFT+V`)
- `:` will give `:'<,'>`
- apply `:'<,>'normal @a`

## Folds

- [ ] Habit -> 🏃 fold regularly (`za`)
- [ ] Task -> 🗒️ find a fold all command

### Folds - References

- `za`+`zo` for a native section (example markdown headers)

## Shorthand References - nvim-ref

- [ ] Task -> 🗒️ Slowly commit to memory + find use cases

`1` == First line of file
`$` == Last line of file
`%` == The entire file
`.` == Line where the cursor is placed
`'<` == start of visual selection
`^` start of line (non white space)

<!-- >' == End of visual selection -->
<!-- '<,>'normal @a -->

## Navigate Lists

### Jump list

### Change list

- [ ] Read -> 📖 `:help` change list
