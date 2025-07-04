# Normal Command

- [ ] Read -> 📖 `:help normal`

## Normal Command -- References

> `":%normal A;`

The `%` symbol is used as a range representing the entire file. So `:%normal A;` instructs Vim to append a semicolon at the end of every line of the file. Making this change involves switching into Insert mode, but Vim automatically reverts Normal mode afterward."

General Pattern to apply a command linewise via normal

## Normal Command -- Examples

### Keep Cursor Position - nvim-ref

> After executing a command return the cursor to where it originally was

Vim script Example:

```shell
-- set mark
normal mz
-- run various commands.
%s/- \\[x\\]/- [ ]/g
normal `z -- go back to mark set at z
```

Lua Example:

```lua
  vim.keymap.set({ "n", "v" }, "<leader>jo", function()
    local pos = vim.api.nvim_win_get_cursor(0) -- Save cursor position
    vim.cmd "%s/- \\[x\\]/- [ ]/g" -- Perform substitution
    vim.api.nvim_win_set_cursor(0, pos) -- Restore cursor position
  end, { noremap = true, silent = true, desc = "Reset Checkboxes" }),
```
