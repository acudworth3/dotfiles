return {
  "rlychrisg/keepcursor.nvim",
  opts = {
    enabled_on_start_v = "middle", -- options are "top", "middle" and "bottom".
    enabled_on_start_h = "none",   -- options are "left" and "right".
  },
  vim.api.nvim_set_keymap(
    "n",
    "<leader>u1t",
    ":ToggleCursorTop<CR>",
    { noremap = true, silent = true, desc = "ToggleCursorTop" }
  ),
  --

  vim.api.nvim_set_keymap(
    "n",
    "<leader>u1m",
    ":ToggleCursorMid<CR>",
    { noremap = true, silent = true, desc = "ToggleCursorMid" }
  ),
}
