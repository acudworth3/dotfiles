-- Mappings can be configured through AstroCore as well.
-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
return {
  -- tables with just a `desc` key will be registered with which-key if it's installed
  -- this is useful for naming menus
  -- ["<Leader>b"] = { desc = "Buffers" },
  -- ["<Leader>u ] = { desc = "Buffers" },

  -- setting a mapping to false will disable it
  -- ["<C-S>"] = false,

  -- first key is the mode
  -- r = {
  --
  --   -- Exiting Replace Mode
  --   ["jj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["kk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["kjj"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  --   ["jkk"] = { "<Esc><CR>", desc = "Exit Insert Mode" },
  -- },
  -- visual mode
  v = {
    ["D"] = { '"_D', desc = "Delete to blkhole register" },
    ["d"] = { '"_d', desc = "Delete to blkhole register" },
    ["C"] = { '"_C', desc = "Change to blkhole register" },
    ["c"] = { '"_c', desc = "Change to blkhole register" },

    -- Exiting Terminal Mode <Ctrl-\><Ctrl-n>
    ["<Leader>yy"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
    -- Only works for 2 lines
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move Selection Down (ALT+j)" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move Selection Up (ALT+k)" },
    -- better indenting
    -- vim.keymap.set('v', '<', '<gv', opts)
    -- vim.keymap.set('v', '>', '>gv', opts)
    [">"] = { ">gv", desc = "Keep indenting" },
    ["<"] = { "<gv", desc = "Keep indenting" },
    -- Note that gv reslects previous visual selection
    ["<C-x>"] = { "ygvd", desc = "Cut Selection" },
  },

  t = {

    -- Exiting Terminal Mode <Ctrl-\><Ctrl-n>
    ["<Esc><Esc>"] = { "<C-\\><C-n>", desc = "Terminal Mode to Normal Mode" },
  },
  -- first key is the mode
  i = {
    -- use Alt instead test
    -- second key is the left-hand side of the map

    -- kind of a hack
    ["<C-e>"] = { '<C-r>=system("")<Left><Left>', desc = "Expression Register(CTRL+e)" },
    -- ["<A-e>"] = { '<C-r>=system("")<Left><Left>', desc = "Expression Register(CTRL+e)", opts = { noremap = true } },
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
    -- strike through
    ["<Leader>j~"] = { "i~<Esc>A~<Esc><CR>", desc = "Strikethrough End of Line" },
    ["<Leader>jm"] = { ":g/\v[x]/m$<CR>", desc = "Move Tasks to EOF" },

    ["<Leader>fA"] = {
      function() require("telescope.builtin").find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") } end,
      desc = "Find All Config Files",
    },

    -- ALT KEYS
    -- expression register
    ["<A-e>"] = { 'i<C-r>=system("")<Left><Left>', desc = "Expression Register(ALT+e)" },
    ["<C-e>"] = { 'i<C-r>=system("")<Left><Left>', desc = "Expression Register(CTRL+e)" },
    -- -- Move text up and down
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line Up (ALT + j)" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line Down (ALT + k)" },
    -- ["<A-S-j>"] = { "<C+x>", desc = "Increment 0" },

    -- Quickfix
    ["<Leader>qc"] = { "<cmd>cex [ ]<CR>", desc = "Clear Quickfix" },
    ["<A-,>"] = { ":cprev<CR>", desc = "Prev Quickfix Record" },
    ["<A-.>"] = { ":cnext<CR>", desc = "Next Quickfix Record" },
    ["<A-q>"] = {
      function()
        local qf_winid = vim.fn.getqflist({ winid = 0 }).winid
        local action = qf_winid > 0 and "cclose" or "copen"
        vim.cmd("botright " .. action)
      end,
      desc = "Open Quickfix",
    },
    -- indents

    -- This breaks <C-i> for some reason???
    -- ["<Tab>"] = { ">>", desc = "Indent" },
    -- ["<S-Tab>"] = { "<<", desc = "Indent" },

    -- CTRL key
    ["<C-a>"] = { "ggVG", desc = "Select All" },

    -- remapping change and

    ["x"] = { '"_x', desc = "Delete char to blkhole register" },
    ["d"] = { '"_d', desc = "Delete to blkhole register" },
    ["D"] = { '"_D', desc = "Delete to blkhole register" },
    ["c"] = { '"_c', desc = "Change to blkhole register" },
    ["C"] = { '"_C', desc = "Change to blkhole register" },
    ["Y"] = { "y$", desc = "Yank to end of line" },

    -- MENU Titles
    ["<Leader>y"] = { desc = "Yank" },
    ["<Leader>j"] = { desc = "File Edit Actions" },
    ["<Leader>s"] = { desc = "Substitute" },
    ["<Leader>D"] = { desc = "Ducks" },
    ["<Leader>q"] = { desc = "quickfix" },
    ["<Leader>Q"] = false,
    ["<Leader>C"] = false,
    ["<Leader>x"] = false,
    ["<Leader>xl"] = false,
    ["<Leader>xq"] = false,
    ["<Leader>fT"] = false,

    -- Substitute <Leader>s :%s/\<<C-r><C-w>\>/
    -- & references matched word
    -- <C-r><C-w> pulls word under curosr
    ["<Leader>sr"] = { ":%s/<C-r><C-w>//g<left><left>", desc = "Replace Word Under Cursor" },
    ["<Leader>sa"] = { ":%s/<C-r><C-w>/& /g<left><left>", desc = "Append to Word Under Cursor" },
    ["<Leader>sq"] = { ":cdo %s/<C-r><C-w>/& /g<left><left>", desc = "Amend Word Across qf_list" },
    ["<Leader>sc"] = { "/<C-r><C-w>", desc = "Search Word Under Cursor (OR *)" },
    -- ["<Leader>sl"] = { ":%s/<C-r><C-l>/<C-r><C-l>", desc = "Replace Line Under Cursor" },
    --
    -- Telescope

    ["<Leader>F"] = { "<cmd>Telescope<CR>", desc = "Telescope All" },
    ["<Leader>fs"] = { "<cmd>Telescope lsp_document_symbols<CR>", desc = "Find LSP Symbols" },
    ["<Leader>fm"] = { "<cmd>Telescope marks<CR>", desc = "Find Marks" },
    ["<Leader>f'"] = false,
    ["<Leader>fj"] = { "<cmd>Telescope jumplist<CR>", desc = "Find Jumplist" },
    ["<Leader>fq"] = { "<cmd>Telescope quickfix<CR>", desc = "Find Quickfix" },
    -- ["<Leader>fu"] = { "<cmd>Telescope grep_string<CR>", desc = "Find Word (current) Across Files" },

    --
    -- Yank Bank
    ["<Leader>yy"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
    ["<Leader>yF"] = { ":%y<CR>", desc = "Copy Current File Contents" },
    --
    -- Spell Check
    ["<Leader>js"] = { "1z=<CR>", desc = "Apply First Spell" },
    ["<C-s>"] = { "<Esc>:wall<CR>", desc = "Save All Buffers (Normal Mode)" },
    -- copy file path
    ["<Leader>yp"] = {

      function()
        local file_name = vim.fn.expand "%:p"
        vim.fn.setreg("+", file_name)
      end,
      desc = "Copy current file path",
    },

    -- copy file path
    -- TODO bring functions into their own file
    ["<Leader>tcd"] = {
      function()
        local file_path = vim.fn.expand "%:p:h"            -- Get the directory of the current file
        if file_path ~= "" then
          vim.cmd("tcd " .. vim.fn.fnameescape(file_path)) -- Set tab working directory
          print("Tab working directory set to: " .. file_path)
        else
          print "No file path available"
        end
      end,
      desc = "Set Tab Dir",
    },

    -- copy file name
    ["<Leader>yf"] = {
      function()
        local file_name = vim.fn.expand "%:t"
        vim.fn.setreg("+", file_name)
      end,
      desc = "Copy current file name",
    },

    ["<leader>uZ"] = { "<cmd>Hardtime toggle<CR>", desc = "Toggle Hardtime Hints" },

    -- Save All Buffers
    ["<Leader>w"] = { ":wall<CR>", desc = "Save All Buffers (Normal Mode)" },

    -- Disable arrow keys
    -- ["<left>"] = { "<cmd>echo 'Use h to move left!!'<CR>", desc = "Remind to use h for movement" },
    -- ["<right>"] = { "<cmd>echo 'Use l to move right!!'<CR>", desc = "Remind to use l for movement" },
    -- ["<up>"] = { "<cmd>echo 'Use k to move up!!'<CR>", desc = "Remind to use k for movement" },
    -- ["<down>"] = { "<cmd>echo 'Use j to move down!!'<CR>", desc = "Remind to use j for movement" },

    -- navigate buffer tabs
    ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
    ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

    -- create simple terminal
    ["<Leader>tb"] = { ":terminal<CR>i", desc = "Terminal as Buffer" },
    --
    ["<Leader>bd"] = {
      function()
        require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
      end,
      desc = "Close buffer from tabline",
    },

    ["<Leader>jd"] = { ":%d<CR>", desc = "Delete File Contents" },
  },
}
