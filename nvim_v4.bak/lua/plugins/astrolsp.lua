-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      signature_help = true, -- enable automatic signature help popup globally on startup
      -- inlay_hints = false,
    },
    -- NOTE: how to adjust format on save
    --
    -- formatting = {
    --   timeout_ms = 3200, -- adjust the timeout_ms variable for formatting
    --   format_on_save = {
    --     enabled = true,     -- enable or disable
    --     allow_filetypes = { -- only allow formatting on save for these filetypes
    --       "lua",
    --       "python",
    --     },
    --   },
    -- },
  },
}
