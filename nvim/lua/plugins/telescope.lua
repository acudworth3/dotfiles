return {
  -- add telescope extensions here
  "nvim-telescope/telescope.nvim",
  "rishabhjain9191/telescope-monorepos",
  requires = {
    "rishabhjain9191/telescope-monorepos",
  },
  config = function() require("telescope").load_extension "monorepos" end,
}
