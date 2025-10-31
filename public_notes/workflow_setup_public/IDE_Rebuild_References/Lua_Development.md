# Overview

> Document for Learning Lua.

## Status

1. comfortable creating commands
2. Next Steps - get a CLI POC
3. Decide if you want to setup a DEV env

- [ ] Task -> 🗒️ refactor documentation including core_skills
- [ ] Read -> 📖 Consider long read on api and vimpscript docs

> Probably switch gears for a bit at this point then come back and attempt plugin development.

## General

- [ ] Read -> 📖 https://neovim.io/doc/user/api.html (Long - 127 pages)
- [ ] Parse -> 📚 https://neovim.io/doc/user/usr_41.html#function-list (vimscript)

### General - Dev Tasks

- [ ] Task -> 🗒️ print contexts into buffer `:lua =package` into a buffer/file
- [ ] Task -> 🗒️ print global scope into a buffer `:lua =_G`
- [ ] Task -> 🗒️ review if functions can accept type definitions
- [ ] Parse -> 📚 investigate `Telescope reloader`

## Ideation

### Ideation User Functions

- [ ] Task -> 🗒️ Extend copy match - line to containing block
- [ ] Task -> 🗒️ Extend copy match - line to Function
- [ ] Parse -> 📚 Ideate on `cex` command

### Ideation Plugins

- [ ] Task -> 🗒️ Create custom actions for telescope
- [ ] Parse -> 📚 https://www.youtube.com/watch?v=3RJ05hj23Vg
- [ ] Task -> 🗒️ build a random data generator

### Ideation Auto Commands

- [ ] Task -> 🗒️ setup the Lua `source %` keymaps as auto commands for lua files

### Ideation User Commands

- [ ] Parse -> 📚 external CLIs
- [ ] Task -> 🗒️ setup lorem

## Planning

- [ ] Task -> 🗒️ write a sample plugin

### Planning - User Functions

> I think I may want to generally wrap my functions in user commands

- [ ] Parse -> 📚 https://github.com/Piotr1215/dotfiles/tree/master/.config/nvim/lua/user_functions0
- [ ] Task -> 🗒️ How to make these queryable? `Leader f C` via telescope

### Planning - User Commands

- [ ] Task -> 🗒️ Create a command generator function?
- [ ] Task -> 🗒️ make sure completion works - for command Args

#### User Commands References nvim-ref-lua

- Command Name Completion works out of the box
- https://neovim.io/doc/user/lua-guide.html#lua-guide-commands-create
- NOTE: run small pieces of lua from EX don't reload nvim to test

> Read nvim settings into a file
> Run Time Path

```
:put = &rtp
```

> Global Scope

```

```

> Create user Commands

```Lua
-- user Commands - 1 most basic
vim.api.nvim_create_user_command("Test2", 'echo "It saves!"', {})
-- vim.cmd.Test()

-- user Commands - 2 as function + Arg Compeltions
-- :Upper CTRL+D on returns "foo bar baz"
vim.api.nvim_create_user_command("Upper", function(opts) print(string.upper(opts.fargs[1])) end, {
  nargs = 1,
  complete = function(ArgLead, CmdLine, CursorPos)
    -- return completion candidates as a list-like table
    return { "foo", "bar", "baz" }
  end,
})

```

> You can map functions from Lua modules via

```Lua
vim.keymap.set('n', '<Leader>pl1', require('plugin').action)
-- Defer loading until call
vim.keymap.set('n', '<Leader>pl2', function() require('plugin').action() end)
```

#### User Commands Implementation nvim-ref-lua

> Sample handling of string inputs

- note the usage of feedkeys

> [!IMPORTANT]
> This is an anti pattern. `call feedkeys` is vimscript and hard to use

```lua
-- ANTI PATTERN call feedkeys is BAD
function M.append_to_word_under_cursor() vim.cmd "call feedkeys(':%s/<C-r><C-w>/& /g<left><left>', 'n')"
```

```lua
-- ["<Leader>sa"] = { ":%s/<C-r><C-w>  /& /g<left><left>", desc = "Append to Word Under Cursor" },
function M.append_to_word_under_cursor()
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes(":%s/<C-r><C-w>/& /g<left><left>", true, false, true),
    "n", true)
end

```

> Import from another module

```Lua
local move_left = require("user_functions.lua_utils").move_left --comment
```

> Set a Mark and return to it (Keep Cursor Postion)

```Lua
  local bufnr = 0 --comment
  local pos = vim.api.nvim_win_get_cursor(0) -- Get current cursor position (row, col) --comment
  -- Set mark 'G' at the current cursor position
  vim.api.nvim_buf_set_mark(bufnr, "G", pos[1], pos[2], {})
  -- implement movements here
  -- Retrieve the mark position
  local mark_pos = vim.api.nvim_buf_get_mark(bufnr, "G") --comment
  -- Move back to the mark position
  vim.api.nvim_win_set_cursor(0, { mark_pos[1], mark_pos[2] })
```

> Ask for Confirmation

```lua
  -- Ask for confirmation
  local confirm = vim.fn.input "Copy quickfix? (y/n): "
  if confirm:lower() ~= "y" then
    print "Operation canceled"
    return
  end


```

##### Globals

- [ ] Remove Empty lines - on Selection

##### Markdown

- [ ] Append to Line of Match - Markdown headers

##### CLI

> some of :these probably work better as keymaps

##### Tasks

- [ ] Task -> 🗒️ create snippet for bug/pbi work

##### Quick Fix

> I think These should be functions with a keymap setup in `mappings.lua` ✅

- [ ] Learn -> ❔ Review basics of updating quickfix original files

- [ ] Text-case behavior on quickfix (not sure I'd use this much)

### Planning - Modules

## Tools

- [ ] Read -> 📖 https://github.com/yarospace/lua-console.nvim
- [ ] Task -> 🗒️ ~folke/neodev.nvim~
- [ ] Task -> 🗒️ "ii14/neorepl.nvim"

## Resources

- https://github.com/Piotr1215/dotfiles/tree/master/.config/nvim
- https://www.youtube.com/watch?v=yN04HCeOjmo&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=15&t=55s
- https://www.youtube.com/watch?v=R1ecY30YBVk&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=16&t=1111s
- https://www.youtube.com/watch?v=3RJ05hj23Vg&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=17&t=588s

- [ ] https://github.com/Piotr1215/youtube/blob/main/nvim-scripting/slides.md
- [ ] https://github.com/Piotr1215/dotfiles/tree/master/.config/nvim/lua/user_functions

[lua_File](/home/acudworth3/.config/nvim-astro/lua/plugins/learning_lua.lua)

- https://neovim.io/doc/user/lua-guide.html

## Completed Tasks

- [x] Task -> 🗒️ get a CLI POC
- [x] Task -> 🗒️ POC useage of a CLI tool - Keymap
- [x] Lorem commands - use ALT+E and map to an EX snippet `=system("lorem -p 5 | cowsay")`
- [x] ~UUID stuff~
- [x] ~Randome Generator~ (I'll build this into a separate project)
- [x] ~Delete duplicates - Couldn't I do sort uniq?~
- [x] Task -> 🗒️ finish up global mappings
- [x] Task -> 🗒️ finish up quick fix mappings
- [x] Read -> 📖 https://neovim.io/doc/user/options.html#'rtp'
- [x] Task -> 🗒️ refactor functions in `mappings.lua` into a separate file (unclear if these need to be functions or commands)
- [x] Task -> 🗒️ create a template and snippet
- [x] Task -> 🗒️ Implement global commands as user commands
- [x] Task -> 🗒️ set these up as keymaps
- [x] `cdo` + move line into new buffer
- [x] `cdo` + Send the list of files to a register
- [x] Build qf from TODO? - use Telescope + `CTRL+q`
- [x] `cdo` + delete line
- [x] `cdo` + insert a TODO above it `:cdo s/$/ \\r--TODO /`
- [x] `cdo` + replace word `:cdo s/PATTERN/REPLACEMENT / | update`
- [x] dump quickfix contents into a buffer (After a telescope search)
- [x] Parse -> 📚 write docs for planning
- [x] Task -> 🗒️ modify `init.lua` to load user functions
- [x] Read -> 📖 https://neovim.io/doc/user/lua-guide.html
- [x] Parse -> 📚 https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/neovim-lua-development
- [x] Read -> 📖 https://neovim.io/doc/user/api.html#nvim_feedkeys()
- [x] Read -> 📖 https://neovim.io/doc/user/api.html#nvim_replace_termcodes()
- [x] Parse -> 📚 Global Examples from core-skills
- [x] Read -> 📖 https://www.youtube.com/watch?v=yN04HCeOjmo&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=15&t=55s
- [x] Read -> 📖 https://www.youtube.com/watch?v=R1ecY30YBVk&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=16&t=1111s
- [x] Read -> 📖 https://www.youtube.com/watch?v=3RJ05hj23Vg&list=PLtYhjdNoBXMPfCmc20DlPtaJ9Fnq_hbuY&index=17&t=588s
- [x] Read -> 📖 :h nvim_create_user_command
- [x] Read -> 📖 https://neovim.io/doc/user/lua-guide.html#lua-guide-commands-create
- [x] Task -> 🗒️ Pass it a function
- [x] Task -> 🗒️ inline example
- [x] Task -> 🗒️ make sure completion works - in EX
- [x] Copy Matches - Line
- [x] Append to Line of Match
- [x] Inverse Match - Delete non matching lines
- [x] Delete Non Header Text - Markdown `GdeleteInverseMatch` achieves this
- [x] Task -> 🗒️ ~https://github.com/folke/lazydev.nvim~
- [x] Task -> 🗒️ https://github.com/yarospace/lua-console.nvim
