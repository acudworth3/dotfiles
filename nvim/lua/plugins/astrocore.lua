-- if true then return {} end REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
local mappings = require "mappings"
local options = require "options"

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true,                                 -- enable autopairs at start
      cmp = true,                                       -- enable completion at start
      diagnostics_mode = 3,                             -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true,                              -- highlight URLs at start
      notifications = true,                             -- enable notifications at start
      -- Configure project root detection, check status with `:AstroRootInfo`
      rooter = {
        -- list of detectors in order of prevalence, elements can be:
        --   "lsp" : lsp detection
        --   string[] : a list of directory patterns to look for
        --   fun(bufnr: integer): string|string[] : a function that takes a buffer number and outputs detected roots
        detector = {
          "lsp",                                            -- highest priority is getting workspace from running language servers
          { ".git", "_darcs",   ".hg",          ".bzr",   ".svn" }, -- next check for a version controlled parent directory
          { "lua",  "MakeFile", "package.json", ".csproj" }, -- lastly check for known project root files
        },
        -- ignore things from root detection
        ignore = {
          servers = {}, -- list of language server names to ignore (Ex. { "efm" })
          dirs = {},    -- list of directory patterns (Ex. { "~/.cargo/*" })
        },
        -- automatically update working directory (update manually with `:AstroRoot`)
        autochdir = false,
        -- scope of working directory to change ("global"|"tab"|"win")
        scope = "global",
        -- show notification on every working directory change
        notify = false,
      },
      -- Configuration table of session options for AstroNvim's session management powered by Resession
      sessions = {
        -- Configure auto saving
        autosave = {
          last = true, -- auto save last session
          cwd = true,  -- auto save session for each working directory
        },
        -- Patterns to ignore when saving sessions
        ignore = {
          dirs = {},                                -- working directories to ignore sessions in
          filetypes = { "gitcommit", "gitrebase" }, -- filetypes to ignore sessions
          buftypes = {},                            -- buffer types to ignore sessions
        },
      },
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    options = options,
    -- Options from a local file
    -- Mappings can be configured through AstroCore as well.
    mappings = mappings,
  },
}
