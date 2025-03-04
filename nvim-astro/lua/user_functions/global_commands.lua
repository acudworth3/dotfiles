-- print "Hello from generic_functions.lua"
-- `luafile generic_functions.lua`
local M = {}

-- USAGE
-- local test = require "user_functions.generic_functions"
-- test.sample1()
function M.sample1() print "Hello from global_commands.lua" end

vim.api.nvim_create_user_command(
  "Gsample1",                 -- Command name in Neovim
  function() M.sample1() end, -- Function to execute
  { nargs = 0 }               -- No arguments required
)

-- function M.append_to_word_under_cursor() vim.cmd [[:%s/<C-r><C-w>  /& /g]] end
-- TODO: figure out how to set cursor at &
function M.append_to_word_under_cursor() vim.cmd "call feedkeys(':%s/<C-r><C-w>/& /g<left><left>', 'n')" end

vim.api.nvim_create_user_command(
  "GappendToWord",                                -- Command name in Neovim
  function() M.append_to_word_under_cursor() end, -- Function to execute
  { nargs = 0 }                                   -- No arguments required
)

-- ["<Leader>sa"] = { ":%s/<C-r><C-w>  /& /g<left><left>", desc = "Append to Word Under Cursor" },

return M
