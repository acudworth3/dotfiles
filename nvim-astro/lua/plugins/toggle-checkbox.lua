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
  vim.keymap.set(
    { "n", "v" },
    "<leader>jo",
    ":%s/\\V- [x]/- [ ]<CR>",
    { noremap = true, silent = true, desc = "Reset Checkboxes" }
  ),
}
