-- See Cookbook https://github.com/MagicDuck/grug-far.nvim?tab=readme-ov-file#-cookbook
return {
  "MagicDuck/grug-far.nvim",
  config = function()
    require("grug-far").setup {
      disableBufferLineNumbers = false,
      startInInsertMode = false,
      -- options, see Configuration section below
      -- there are no required options atm
      -- engine = 'ripgrep' is default, but 'astgrep' can be specified
    }
  end,

  vim.api.nvim_set_keymap(
    "v",
    "<leader>sr",
    ":lua require('grug-far').with_visual_selection(opts)<CR>",
    { noremap = true, silent = true, desc = "Find + Replace Selection" }
  ),
  vim.api.nvim_set_keymap(
    "n",
    "<leader>sr",
    ":GrugFar<CR>",
    { noremap = true, silent = true, desc = "Find + Replace Across Files" }
  ),
}
