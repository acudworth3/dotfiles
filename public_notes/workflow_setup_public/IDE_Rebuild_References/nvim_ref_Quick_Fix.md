# Quick Fix

## Quick Fix -- References

- `Alt q` to toggle `alt .` and `alt ,` to navigate
- `q]` and `q[` can move between items quickly
- in telescope `ctrl+q` > `:cexpr` Create a quickfix list using the result of `{expr}` (Also `cgetexpr` if you don't want to jump to it)

- Populate from Telescope `ALT+q` for selection `CTRL+q` for all
- Combine with a dot operator

### Quick Fix -- References - cdo examples - nvim-ref

1. delete row with results

- `:cdo %g/WORD/d`
- `:cdo %s/word/replace/i`

All global style commands work here [examples](#global-command-examples)

### Quick Fix -- References - Managing List - nvim-ref

- `call setqflist([], 'r')` or `:cex []` clears the quickfix list (good candidate for a keymap)
- `:cex` populates the qf list. Example `:cex system('ls')`

### Quick Fix -- References - Populate with shell commands - nvim-ref

> File Lists

- `:cex system('ls')`

> Env Vars

- `:cex system('printenv')`

> Working directory

- `:cex system('printenv')`

> CLI outputs

- `:cex system('dotnet --project list')` not a functioning command, but example


