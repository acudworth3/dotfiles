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

  -- == Examples of Overriding Plugins ==
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = true },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call

  {
    "eandrju/cellular-automaton.nvim",
  },
  {
    "mg979/vim-visual-multi",
  },
  -- gists
  {
    {
      "Rawnly/gist.nvim",
      cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
      config = true,
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
