-- if true then return {} end REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: Consider moving to lua/plugins/mappings
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

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
      notifications = false,                            -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    -- TODO: Move options to separate file
    options = {
      opt = {                  -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true,         -- sets vim.opt.number
        spell = false,         -- sets vim.opt.spell
        signcolumn = "yes",    -- sets vim.opt.signcolumn to yes
        wrap = false,          -- sets vim.opt.wrap
        cursorcolumn = true,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    -- TODO: Move mappings to separate file
    -- TODO: Add tables for other modes
    mappings = {
      -- first key is the mode
      -- r = {
      --
      --   -- Exiting Replace Mode
      --   ["jj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
      --   ["kk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
      --   ["kjj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
      --   ["jkk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
      -- },
      -- first key is the mode
      i = {
        -- second key is the left-hand side of the map

        -- save all buffers
        ["<C-s>"] = { "<Esc>:wall<CR>", desc = "Save All Buffers (Insert Mode)" },

        -- Exiting Insert Mode
        ["jj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
        ["kk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
        ["kjj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
        ["jkk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
        ["uu"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
      },

      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- Yank Bank
        -- map to '<leader>y'
        ["<Leader>y"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
        -- Move text up and down
        ["<A-j>"] = { ":m .+1<CR>==", desc = "SMove line Up (ALT + j)" },
        ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line Down (ALT + k)" },

        -- save all buffers
        ["<C-s>"] = { "<cmd>wall<CR>", desc = "Save All Buffers (Normal Mode)" },

        -- disable arrow keys
        ["<left>"] = { "<cmd>echo 'Use h to move left!!'<CR>", desc = "Remind to use h for movement" },
        ["<right>"] = { "<cmd>echo 'Use l to move right!!'<CR>", desc = "Remind to use l for movement" },
        ["<up>"] = { "<cmd>echo 'Use k to move up!!'<CR>", desc = "Remind to use k for movement" },
        ["<down>"] = { "<cmd>echo 'Use j to move down!!'<CR>", desc = "Remind to use j for movement" },

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        --{ function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },
        -- ["<Leader>u ] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
