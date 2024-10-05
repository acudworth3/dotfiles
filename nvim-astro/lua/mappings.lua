-- Mappings can be configured through AstroCore as well.
-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
return {
  -- first key is the mode
  -- r = {
  --
  --   -- Exiting Replace Mode
  --   ["jj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["kk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["kjj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["jkk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  -- },
  t = {

    -- Exiting Terminal Mode <Ctrl-\><Ctrl-n>
    ["<Esc><Esc>"] = { "<C-\\><C-n>", desc = "Terminal Mode to Normal Mode" },
  },
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
    -- Toggle Checkboxes

    -- ["<Leader rr"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
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

    -- create simple terminal
    ["<Leader>tb"] = { ":terminal<CR>i", desc = "Terminal as Buffer" },

    --{ function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
    -- mappings seen under group name "Buffer"
    ["<Leader>bd"] = {
      function()
        require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
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
}
