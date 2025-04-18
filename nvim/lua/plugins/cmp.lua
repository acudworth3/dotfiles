return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
  },
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    cmp.register_source("easy-dotnet", require("easy-dotnet").package_completion_source)
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp",    priority = 1000 },
      { name = "buffer",      priority = 500 },
      { name = "path",        priority = 250 },
      { name = "luasnip",     priority = 150 },
      -- { name = "emoji",       priority = 700 }, -- add new source
      { name = "easy-dotnet", priority = 700 },
    }
  end,
}
