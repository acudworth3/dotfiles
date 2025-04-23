return {
  "yarospace/lua-console.nvim",
  lazy = true,
  specs = {
    {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        mappings = {
          n = {
            ["<Leader>tL"] = { function() require("lua-console").toggle_console() end, desc = "Toggle Lua Console" },
            -- TODO: try to understand this
            -- ["<Leader>`"] = {

            --   function() require("lua-console.utils").attach_toggle() end,
            --   desc = "Lua-console - attach to buffer",
            -- },
          },
        },
      },
    },
  },
  keys = {
    -- { "`",         desc = "Lua-console - toggle" },
    { "<Leader>tL", desc = "Toggle Lua Console" },
  },
  opts = {},
}
