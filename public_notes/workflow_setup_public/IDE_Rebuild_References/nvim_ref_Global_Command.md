# Global Command

- [ ] Task -> 🗒️ Combine with fold command for useful things
- [ ] Task -> 🗒️ Think of more examples for the vglobal command
- [ ] Task -> 🗒️ Maybe map `CTRL+SHIFT+l` to `:g/selection/` and put the cursor in ex to mimic multi-cursor

## Global Command -- References - nvim-ref

- [ ] Task -> 🗒️ refactor this into its own file

- Treat this as meaning "apply the command linewise to each match"
- The default range for the :global command is the entire file (%).
  - for `norm` and `/s` and `delete` the default range is a line
- All available EX commands https://vimhelp.org/index.txt.html#ex-cmd-index
- redirect results to separate files https://vim.fandom.com/wiki/Save_each_line_in_separate_numbered_files

---

The `:global` command allows us to run an Ex command on each line that matches
a particular pattern. Let's start by studying its syntax.

The `:global` command takes the following form (see `:h` `:g`):

`:[range]global[!]/{pattern}/[cmd]`

The `{pattern}` field integrates with search history. That means we can leave it
blank and Vim will automatically use the current search pattern.
The `[cmd]` could be any EX command except for another `:global` command.

> not that EX is very nearly a UNIX cli most UNIX motions are supported but aliased differently

---

---

> INVERT the global command

This time we'll switch things around. The `:vglobal` command, or `:v` for short,
does the opposite of the `:g` command. That is, it executes a command on each
line that does not match the specified pattern.

"This deletes all lines not containing href"

`:v/href/d`

---

Operate on offsets (Still working on this)

- [ ] Task -> 🗒️ try to construct commands to move markdown sections around this way

`:global/{pattern}/ OFFSET [cmd]`

OFFSET can be + or - a number AABBCCC

> - and minus representing adding the current line so + moves a line down and - moves it up

example

`:g/AABBCCC/+2 move 0` will move the match starting with `>` to the top of file (line 0)
`:g/AABBCCC/-2 move 0` will move the match with the `:global` pattern to the top of file (line 0)

---

## Global Command -- Examples - nvim-ref

> Remember that all of these can be applied to multiple files via `arg`
> Remember that all of these can be applied to quickfix lists via `cdo`

- [ ] Task -> 🗒️ consider turning these into user commands/functions

1. Copy all lines that match a pattern; This appends to the "a" register (because of A not a)

- [ ] Task -> 🗒️ Map this into the substitute window

`:g/Task/yank A`

- To paste a register `"a p`

--- SAMPLE
{
abc
}

{
123
456
}

--- SAMPLE

1.1 Extend copying into new window

- add `command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a`
- Call Filter after a search command - will redirect to a new window
- Try to make it a vertical split

2. Delete all lines NOT containing Read task

`:vglobal/\V- [ ] Read/d`

3. Delete all blank lines

> `^` is start of line `$` is end of line `\s*` is regex for all whitespace
> effectively this is vim short hand for line start+end and regex for whitespace

`:g/^\s*$/d`

4. Moving lines around

> note that t$ and m$ are EX commands

- copy to end of file
- move to end of file

`:g/pattern/copy$`
`:g/pattern/move$`

> see - https://vim.fandom.com/wiki/Power_of_g

5. Reverse a file

`:g/^/m0`

6. Append to lines matching a pattern

> in the below examples `^` indicates start of line meaning pattern is at the start of line
> `s/$/mytext` is using substitute to find the end of the line and substitute it with `mytext`

> This might be easier with multi-cursor but allows for things like only selecting if pattern is at start of line

`:g/^pattern/s/$/mytext`

- example append to all titles in markdown

`:g/^#/s/$/ This is a Title`

7. Delete duplicate lines

`:%!uniq`

8. Delete Empty lines

`:g/^$/d`

9. Write Matches to a file
   `:g/Task/ . write >> full_path.md`
   `:g/#/ . write >> full_path.md`

10. Mark every line

> combine with + - or ++ -- to do things
> `:g/^/ACTION` > `:g/^/+ delete` deletes every other line

11. Multiple Patterns

> `\|` separates the patterns; Some regex knowledge is useful here example `[pP]` matches upper or lowercase P
> `g/PATTERN1\|PATTERN2\|PATTERN3/ACTION`

12. Move all matching lines to end of file

> `:% g/foo/m$`

13. For every line containing "foo" substitute all "bar" with "zzz."

> `:% g/foo/s/bar/zzz/g`

14. Move all Completed tasks to end of file

> `g/\v\[x\] (Read|Task|Parse|Learn|Habit)\>/m$`

15. Delete all non title tex

> `g/\/[^#]\|l#\|Task/delete` - this will remove all non title results
