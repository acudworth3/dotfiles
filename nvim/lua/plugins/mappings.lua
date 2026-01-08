return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },
        -- ["<Leader>u ] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,

        -- visual mode
        v = {
          ["D"] = { '"_D', desc = "Delete to blkhole register" },
          ["d"] = { '"_d', desc = "Delete to blkhole register" },
          ["C"] = { '"_C', desc = "Change to blkhole register" },
          ["c"] = { '"_c', desc = "Change to blkhole register" },

          ["<Leader>jn"] = { ":'<,'>!nl -n ln -w 1 -s '. '<CR><CR>", desc = "Number Selection" },
          ["<Leader>jc"] = { ":!column -t -s ' '<left><left>", desc = "column -t -s" },
          ["<Leader>jr"] = { ":!cut -c 5-", desc = "cut right cut -c 5-" },
          ["<Leader>jl"] = { ":!cut -c -5", desc = "cut left cut -c -5" },

          ["<Leader>yy"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
          ["<Leader>sn"] = { ":norm I", desc = "Norm Edit" },
          ["<Leader>sr"] = { ":s//ABC/g<left><left><left><left><left><left>", desc = "Replace Over Selection" },

          ["<Leader>sR"] = { desc = "Regex Examples" },
          ["<Leader>sRp"] = { ":s/Read|Task//g<left><left>", desc = "Read|Task Multiple Patterns" },
          ["<Leader>sRa"] = { ":s/[abc]//g<left><left>", desc = "[abc] a b or c" },
          ["<Leader>sRA"] = { ":s/[a-zA-Z0-9]{5}//g<left><left>", desc = "[a-zA-Z0-9]{5} Count of Alpha Numeric" },
          ["<Leader>sRs"] = { ":s/^//g<left><left>", desc = "Start of Line" },
          ["<Leader>sRe"] = { ":s/$//g<left><left>", desc = "End of Line" },
          ["<Leader>sRm"] = { ":s/$/&/g<left><left>", desc = "Append to Match" },
          -- Only works for 2 lines
          ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move Selection Down (ALT+j)" },
          ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move Selection Up (ALT+k)" },

          -- Duplicate Selection
          ["<A-J>"] = { "y`>p", desc = "Duplicate Selection (ALT+SHIFT+j)" },
          ["<A-K>"] = { "y`>p", desc = "Duplicate Selection (ALT+SHIFT+j)" },

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

          -- maybe print a message
          -- ["<Esc>"] = false,

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
          -- second key is the left hand side of the map

          -- j menu (edit)
          -- strike through
          ["*"] = { "*N", desc = "Search without Move" },
          ["<Leader>j~"] = { "i~<Esc>A~<Esc><CR>", desc = "Strikethrough End of Line" },
          ["<Leader>jm"] = { ":g/\v[x]/m$<CR>", desc = "Move Tasks to EOF" },
          ["<Leader>jd"] = { ":%d<CR>", desc = "Delete File Contents" },
          ["<Leader>ja"] = { ":%norm I", desc = "Edit All Lines" },

          -- WORK IN PROGRESS
          -- local pos = vim.api.nvim_win_get_cursor(0) -- Save cursor position
          -- vim.cmd "%s/- \\[x\\]/- [ ]/g" -- Perform substitution
          -- vim.api.nvim_win_set_cursor(0, pos) -- Restore cursor position

          -- ["<Leader>jm"] = {
          --   function()
          --     local pos = vim.api.nvim_win_get_cursor(0) -- Save cursor position
          --     vim.cmd "g/\v[x]/m$"                   -- Perform action
          --     vim.api.nvim_win_set_cursor(0, pos)        -- Restore cursor position
          --   end,
          --   desc = "Move Tasks to EOF",
          -- },

          -- ALT KEYS
          -- TODO: remap into a CLI menu
          ["<A-l>"] = {
            function() require("user_functions.generic_functions").lorem_n() end,
            desc = "Call: Lorem",
          },

          -- expression register
          ["<A-e>"] = { 'i<C-r>=system("")<Left><Left>', desc = "Expression Register(ALT+e)" },
          ["<C-e>"] = { 'i<C-r>=system("")<Left><Left>', desc = "Expression Register(CTRL+e)" },

          -- Duplicate lines
          ["<A-K>"] = { "yyp", desc = "Duplicate Selection (ALT+SHIFT+k)" },
          ["<A-J>"] = { "yyp", desc = "Duplicate Selection (ALT+SHIFT+j)" },
          --
          -- Move text up and down
          ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line Up (ALT + j)" },
          ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line Down (ALT + k)" },
          -- ["<A-S-j>"] = { "<C+x>", desc = "Increment 0" },

          -- Quickfix
          ["<A-,>"] = { ":cprev<CR>", desc = "Prev Quickfix Record" },
          ["<A-.>"] = { ":cnext<CR>", desc = "Next Quickfix Record" },
          ["<A-q>"] = { "<cmd>CQShowInPanel<CR>", desc = "Open Quickfix" },

          ["<Leader>qc"] = { "<cmd>cex [ ]<CR>", desc = "Clear Quick Fix" },
          ["<Leader>qd"] = { "<cmd>CQdeleteLine<CR>", desc = "Delete Lines Quick Fix" },
          ["<Leader>qn"] = { "<cmd>CQSendFileNamesToF<CR>", desc = "Collect File Names Quick Fix" },
          ["<Leader>qm"] = { "<cmd>CQMoveQuickFixToCurrentBuffer<CR>", desc = "Move Contents  Quick Fix" },
          ["<Leader>qs"] = { "<cmd>CQsubstitute<CR>", desc = "Substitute Quick Fix" },
          ["<Leader>qt"] = { "<cmd>CQappendQfTODO<CR>", desc = "Prepend To list Quick Fix" },
          ["<Leader>qy"] = { "<cmd>CQCopyQuickFixToCurrentBuffer<CR>", desc = "Copy Contents Quick Fix" },
          ["<Leader>qf"] = { "<cmd>Telescope quickfix<CR>", desc = "Search Quick Fix" },
          ["<Leader>qo"] = { "<cmd>CQShowInPanel<CR>", desc = "Open Quick Fix" },

          -- indents

          -- CTRL key
          ["<C-a>"] = { "ggVG", desc = "Select All" },
          ["<C-c>"] = { "<C-a>", desc = "Select All" },

          -- remapping change and

          ["x"] = { '"_x', desc = "Delete char to blkhole register" },
          ["d"] = { '"_d', desc = "Delete to blkhole register" },
          ["D"] = { '"_D', desc = "Delete to blkhole register" },
          ["c"] = { '"_c', desc = "Change to blkhole register" },
          ["C"] = { '"_C', desc = "Change to blkhole register" },
          ["Y"] = { "y$", desc = "Yank to end of line" },

          -- MENU Titles
          ["<Leader>a"] = { desc = "Sidekick" },
          ["<Leader>y"] = { desc = "Yank" },
          ["<Leader>j"] = { desc = "File Edit Actions" },
          ["<Leader>s"] = { desc = "vim core" },
          ["<Leader>D"] = { desc = "Ducks" },
          ["<Leader>q"] = { "<Nop>", desc = "quickfix" },
          ["<Leader>C"] = false,
          ["<Leader>Q"] = false,
          ["<Leader>R"] = false,
          ["<Leader>h"] = false,
          ["<Leader>x"] = false,
          ["<Leader>xl"] = false,
          ["<Leader>xq"] = false,
          ["<Leader>ty"] = false,
          ["\\"] = false,
          -- ["<Leader>fT"] = false,

          -- Substitute
          -- & references matched word
          -- <C-r><C-w> pulls word under cursor
          -- TODO: Replace with user functions
          ["<Leader>sr"] = { ":%s/<C-r><C-w>//g<left><left>", desc = "Replace Word Under Cursor" },
          ["<Leader>sa"] = { ":%s/<C-r><C-w>/& /g<left><left>", desc = "Append to Word Under Cursor" },
          ["<Leader>sq"] = { ":cdo %s/<C-r><C-w>/& /g<left><left>", desc = "Amend Word Across qf_list" },
          ["<Leader>sc"] = { "/<C-r><C-w>", desc = "Search Word Under Cursor (OR *)" },
          ["<Leader>sd"] = { ":v/<C-r><C-w>/d<left><left>", desc = "Delete All but Matches" },
          ["<Leader>sR"] = { desc = "Regex Examples" },
          ["<Leader>sRp"] = { ":%s/\\vRead|Task//g<left><left>", desc = "Read|Task Multiple Patterns" },
          ["<Leader>sRa"] = { ":%s/\\v[abc]//g<left><left>", desc = "[abc] a b or c" },
          ["<Leader>sRA"] = { ":%s/\\v[a-zA-Z0-9]{5}//g<left><left>", desc = "[a-zA-Z0-9]{5} Count of Alpha Numeric" },
          ["<Leader>sRs"] = { ":%s/^//g<left><left>", desc = "Start of Line" },
          ["<Leader>sRe"] = { ":%s/$//g<left><left>", desc = "End of Line" },
          ["<Leader>sRm"] = { ":%s/$/&/g<left><left>", desc = "Append to Match" },
          -- ["<Leader>sRp"] = { "/\\vRead|Task", desc = "Multiple Patterns" },
          -- ["<Leader>sRa"] = { "/\\v[abc]", desc = "[abc] a b or c" },
          -- ["<Leader>sRA"] = { "/\\v[a-zA-Z0-9]{5}", desc = "[a-zA-Z0-9]{5} Count of Alph Numeric" },
          -- ["<Leader>sl"] = { "/\\V", desc = "Literal Search" },
          -- ["<Leader>sr"] = { ":GrugFar<CR>", desc = "Find + Replace Across Files" },
          -- ["<Leader>sl"] = { ":%s/<C-r><C-l>/<C-r><C-l>", desc = "Replace Line Under Cursor" },

          -- Telescope
          -- f menu (find + Telescope)
          ["<Leader>fA"] = {
            function() require("telescope.builtin").find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") } end,
            desc = "Find All Config Files",
          },

          ["<Leader>f'"] = false,

          -- ["<Leader>fu"] = { "<cmd>Telescope grep_string<CR>", desc = "Find Word (current) Across Files" },
          ["<Leader>fp"] = { "<cmd>Octo pr search<CR>", desc = "Octo pr search" },
          ["<Leader>fi"] = { "<cmd>Octo issue search<CR>", desc = "Octo issues search" },
          -- TODO: consider movingto a snacks.lua file
          -- https://github.com/folke/snacks.nvim/blob/bc0630e43be5699bb94dadc302c0d21615421d93/docs/examples/picker.lua#L12
          ["<Leader>F"] = { function() Snacks.picker.pickers() end, desc = "Pickers All" },
          ["<Leader>fj"] = { function() Snacks.picker.jumps() end, desc = "Find Jumplist" },
          ["<Leader>fm"] = { function() Snacks.picker.marks() end, desc = "Find Marks" },
          ["<Leader>fq"] = { function() Snacks.picker.qflist() end, desc = "Find Quickfix" },
          ["<Leader>fs"] = { function() Snacks.picker.lsp_symbols() end, desc = "Find LSP Symbols" },

          --
          -- Spell Check
          ["<Leader>js"] = { "1z=<CR>", desc = "Apply First Spell" },
          ["<C-s>"] = { "<Esc>:wall<CR>", desc = "Save All Buffers (Normal Mode)" },

          -- Yank commands
          -- Yank Bank
          ["<Leader>yy"] = { "<cmd>YankBank<CR>", desc = "Open Yank History" },
          ["<Leader>yF"] = { ":%y<CR>", desc = "Copy Current File Contents" },

          -- copy file dir
          ["<Leader>yd"] = {
            function()
              local file_dir = vim.fn.expand "%:p:h" -- Get the directory of the current file
              vim.fn.setreg("+", file_dir)
            end,
            desc = "Copy current file dir",
          },
          -- copy file path
          ["<Leader>yp"] = {

            function()
              local file_name = vim.fn.expand "%:p"
              vim.fn.setreg("+", file_name)
            end,
            desc = "Copy current file path",
          },

          -- copy file name
          ["<Leader>yf"] = {
            function()
              local file_name = vim.fn.expand "%:t"
              vim.fn.setreg("+", file_name)
            end,
            desc = "Copy current file name",
          },

          -- TODO: move into the plugin
          ["<leader>uZ"] = { "<cmd>Hardtime toggle<CR>", desc = "Toggle Hardtime Hints" },

          -- Buffer Commands
          -- Save All Buffers
          ["<Leader>w"] = { ":wall<CR>", desc = "Save All Buffers (Normal Mode)" },

          ["<Leader>tcd"] = {
            function() require("user_functions.generic_functions").set_tab_cdir_to_buffer_dir() end,
            desc = "Set Tab Dir",
          },
          -- navigate buffer tabs
          ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

          -- create simple terminal
          ["<Leader>tb"] = { ":terminal<CR>i", desc = "Terminal as Buffer" },
          --
          ["<Leader>bd"] = {
            function()
              require("astroui.status.heirline").buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Close buffer from tabline",
          },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
