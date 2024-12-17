return ---@type LazySpec
{
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- 👇 in this section, choose your own keymappings!

    {
      -- Open in the current working directory
      "<leader>ty",
      "<cmd>Yazi cwd<cr>",
      desc = "Open yazi in cwd",
    },
    {
      "<leader>by",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at current file",
    },
  },
  ---@type YaziConfig
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
}
