return {
  -- TODO: add more functionality
  -- TODO: remap tab stop or disable tab in completion menu
  "L3MON4D3/LuaSnip",
  -- TODO: review if you want this
  dependencies = { "rafamadriz/friendly-snippets" },

  config = function(plugin, opts)
    require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    -- add more custom luasnip configuration such as filetype extend or custom snippets
    require("luasnip.loaders.from_vscode").lazy_load {
      paths = { vim.fn.stdpath "config" .. "/snippets" },
    }
    local luasnip = require "luasnip"
    luasnip.filetype_extend("javascript", { "javascriptreact" })
  end,
}
