-- Default Config https://github.com/m4xshen/hardtime.nvim/blob/main/lua/hardtime/config.lua
-- You can view the most frequently seen hints with :Hardtime report.
return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    -- Disable in normal mode only
    disabled_keys = {
      ["<Up>"] = { "n" },
      ["<Down>"] = { "n" },
      ["<Left>"] = { "n" },
      ["<Right>"] = { "n" },
    },
    -- Notify after max count for these keys resets after max time
    max_count = 5,
    max_time = 1000,
    restricted_keys = {
      ["h"] = { "n", "x" },
      ["j"] = { "n", "x" },
      ["k"] = { "n", "x" },
      ["l"] = { "n", "x" },
      ["-"] = { "n", "x" },
      ["+"] = { "n", "x" },
      ["gj"] = { "n", "x" },
      ["gk"] = { "n", "x" },
      ["<CR>"] = { "n", "x" },
      ["<C-M>"] = { "n", "x" },
      ["<C-N>"] = { "n", "x" },
      ["<C-P>"] = { "n", "x" },
    },
    -- force_exit_insert_mode = false,
    -- max_insert_idle_ms = 5000,
  },
  -- keys = {
  --   { "<leader>uZ", "<cmd>Hardtime toggle<CR>", mode = { "n" }, desc = "Toggle Hardtime Hints" },
  -- },
}
