--- lazy.nvim
return {
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function() require("easy-dotnet").setup() end,
  keys = { { "<Leader>fD", "<cmd>Dotnet<CR>", mode = { "n" }, desc = "dotnet Picker" } },
  -- add some key mappings for build and run
}
