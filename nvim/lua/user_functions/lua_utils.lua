local M = {}

-- function M.sample1() print "Hello from generic_functions.lua" end

-- USAGE
-- local function example(a, b, c) return a + b + c end
-- local args = get_function_args(example)
--
-- print("Argument count:", #args)
-- print("Arguments:", table.concat(args, ", "))

function M.move_left_feed_keys(n)
  if type(n) ~= "number" or n <= 0 then
    print "move_left recieved non integer input"
    return 0 -- Ensure n is a valid positive number
  end
  local keys = string.rep("<Left>", n)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, false, true), "n", true)
end

function M.get_function_args(func)
  local args = {}
  local info = debug.getinfo(func, "u") -- Get function info (number of params)

  if info and info.nparams then
    for i = 1, info.nparams do
      local name = debug.getlocal(func, i)
      table.insert(args, name or ("arg" .. i))
    end
  end

  return args
end

-- USAGE
-- local test = require "user_functions.generic_functions"
-- TODO: Replace print with a return of name: and Args
-- inspect_module_functions(test)
function M.print_module_functions_info(module)
  for name, func in pairs(module) do
    if type(func) == "function" then
      print("Function Name:", name)

      -- Get function details
      local info = debug.getinfo(func, "u")
      local num_params = info and info.nparams or 0

      -- Fetch argument names
      local args = {}
      for i = 1, num_params do
        local arg_name = debug.getlocal(func, i) or ("arg" .. i)
        table.insert(args, arg_name)
      end

      print("Argument Count:", num_params)
      print("Arguments:", table.concat(args, ", "))
      print "----------------------"
    end
  end
end

return M
