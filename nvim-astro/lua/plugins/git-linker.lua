return {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    { "<leader>gy", "<cmd>GitLink<cr>",  mode = { "n", "v" }, desc = "Yank Remote URL" },
    { "<leader>go", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open Remote URL" },
  },
}
