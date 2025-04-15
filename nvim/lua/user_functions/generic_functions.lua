-- print "Hello from generic_functions.lua"
-- `luafile generic_functions.lua`
local M = {}

-- USAGE
-- local test = require "user_functions.generic_functions"
-- test.sample1()
function M.sample1() print "Hello from generic_functions.lua" end

vim.api.nvim_create_user_command(
  "Sample1",                  -- Command name in Neovim
  function() M.sample1() end, -- Function to execute
  { nargs = 0 }               -- No arguments required
)

-- Function with no arguments
-- TODO: figure out how to generically register user Functions
-- See ./lua_utils.lua
function M.no_args() print "This function takes no arguments." end

-- Function with two arguments
function M.two_args(a, b) print("This function takes two arguments:", a, b) end

-- Function with a variable number of arguments
function M.var_args(...)
  local args = { ... }
  print("This function takes multiple arguments:", table.concat(args, ", "))
end

function M.set_tab_cdir_to_buffer_dir()
  local file_path = vim.fn.expand "%:p:h"            -- Get the directory of the current file
  if file_path ~= "" then
    vim.cmd("tcd " .. vim.fn.fnameescape(file_path)) -- Set tab working directory
    print("Tab working directory set to: " .. file_path)
  else
    print "No file path available"
  end
end

-- TODO implment lorem
function M.lorem_n()
  -- Complex Operations
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":r !lorem -s -c 15", true, false, true), "n", true)
end

function M.register_command_generice()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i<C-r>=system("")<Left><Left>', true, false, true), "n", true)
end

return M
