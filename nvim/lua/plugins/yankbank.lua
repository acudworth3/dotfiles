return {
  "ptdewey/yankbank-nvim",
  dependencies = "kkharji/sqlite.lua",
  config = function()
    require("yankbank").setup {
      -- other options...
      persist_type = "sqlite",
      max_entries = 20,
      -- registers.yank_register = "+" default register to yank from popup to
    }
  end,
}
