return {
  "opdavies/toggle-checkbox.nvim",
  vim.keymap.set(
    "n",
    "<leader>jj",
    ":lua require('toggle-checkbox').toggle()<CR>",
    { noremap = true, silent = true, desc = "Toggle Checkbox" }
  ),
  vim.keymap.set("n", "<leader>jc", "^i- [ ] <Esc>", { noremap = true, silent = true, desc = "Insert Checkbox" }),
}
