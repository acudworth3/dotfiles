return {
  "iamcco/markdown-preview.nvim",
  -- run these to use
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  ft = { "markdown" },
  -- vim.keymap.set(
  --   "n",
  --   "<leader>jj",
  --   ":lua require('toggle-checkbox').toggle()<CR>",
  --   { noremap = true, silent = true, desc = "Toggle Checkbox" }
  -- ),
}
