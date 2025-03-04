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

return M
