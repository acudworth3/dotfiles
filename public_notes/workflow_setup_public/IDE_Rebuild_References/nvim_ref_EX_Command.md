# Command Mode

> pipe things to/from the shell to/from the buffer

## EX : usage - Completion

- `:` then `CTRL+D` to see all commands
- `:help PART_OF_WORD` then tab to see many options example `:help quick` then tab
- `COUNT >> or <<` will indent/unindent COUNT lines
  - `:args *.md` appears to load all cwd results into buffers

## Commands Files - nvim-ref

- open things in a new tab `tabedit FILE` or `tabe FILE` or `tabedit **.md`

## Commands : usage - (External + Pipes) - nvim-ref

### read

> `r` command reads to something combine with `!` to call commands

- `:r !ls`

### run command (!) - nvim-ref

> runs a command

- `:r !ls`
- `:r! find / -name "filenmae"` search for a file return results
- `%!sort -u` sort all lines in file
- `:'<,'>!sort -u` sort selected lines and make unique

> runs a command through python (assume file is there)

- `:!python3 hello.py`
- `:r !python3 hello.py` Reads output into file

- [ ] Task -> 🗒️ figure out how to load your bash profile
- [ ] Task -> 🗒️ see if you can pipe outputs into telescope
- [ ] Parse -> 📚 https://vimhelp.org/index.txt.html#ex-cmd-index

## Commands (EX) -- Pattern Matching

> Similar to ranges the pattern matching is a general piece of `EX` mode worth learning independently

## Commands (EX) -- Ranges

> Worth understanding that range construction in `EX` mode is a general definition that will work for `search`, `substitute`, `global`, or any command

> horizontal and vertical line operators in normal mode generally work as EX line ranges as well

- `0` is first line `$` is last line
- `0,100 delete` will delete 100 lines
- `0,$ delete` will operate on the whole file for example

## Commands (EX) -- References

> Combining these with the normal and global command can do many things

- [full list](https://vimhelp.org/index.txt.html#ex-cmd-index)

### Misc EX commands

`:>` will indent a line
~`CTRL+G` will echo the file name into EX~
`CTRL+R+w` will echo the current word
`CTRL+R+l` will echo the current line
