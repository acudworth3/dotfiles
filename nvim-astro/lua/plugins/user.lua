-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function() require("gitsigns").setup { current_line_blame = true } end,
  },

  -- == Examples of Overriding Plugins ==
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call

  {
    "eandrju/cellular-automaton.nvim",
  },
  {
    "mg979/vim-visual-multi",
    enabled = true,
  },
  -- gists
  {
    {
      "Rawnly/gist.nvim",
      cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
      config = true,
      vim.keymap.set("n", "<leader>Og", "", { noremap = true, silent = true, desc = "Gists" }),
      vim.keymap.set("n", "<leader>Ogl", ":GistsList<CR>", { noremap = true, silent = true, desc = "GistsList" }),
      vim.keymap.set("n", "<leader>Ogc", ":GistCreate<CR>", { noremap = true, silent = true, desc = "GistCreate" }),
    },
    -- `GistsList` opens the selected gif in a terminal buffer,
    -- nvim-unception uses neovim remote rpc functionality to open the gist in an actual buffer
    -- and prevents neovim buffer inception
    {
      "samjwill/nvim-unception",
      lazy = false,
      init = function() vim.g.unception_block_while_host_edits = true end,
    },
  },
}
