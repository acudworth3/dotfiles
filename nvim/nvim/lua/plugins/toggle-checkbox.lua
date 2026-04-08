-- TODO: write your own command that is dot repeatable

return {
  -- maybe replace with https://github.com/nfrid/markdown-togglecheck/tree/main for . operations
  "opdavies/toggle-checkbox.nvim",
  vim.keymap.set(
    { "n", "v" },
    "<leader>jj",
    ":lua require('toggle-checkbox').toggle()<CR>",
    { noremap = true, silent = true, desc = "Toggle Checkbox" }
  ),
  vim.keymap.set(
    { "n", "v" },
    "<leader>jc",
    "^i- [ ] <Esc>",
    { noremap = true, silent = true, desc = "Insert Checkbox" }
  ),
  vim.keymap.set({ "n", "v" }, "<leader>jo", function()
    local pos = vim.api.nvim_win_get_cursor(0) -- Save cursor position
    vim.cmd "%s/- \\[x\\]/- [ ]/g"             -- Perform substitution
    vim.api.nvim_win_set_cursor(0, pos)        -- Restore cursor position
  end, { noremap = true, silent = true, desc = "Reset Checkboxes" }),
}
