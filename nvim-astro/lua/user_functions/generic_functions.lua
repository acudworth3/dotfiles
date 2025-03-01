local M = {}
function M.sample1() print "Hello from my_module" end

-- `luafile generic_functions.lua`
-- print "outside the function"

return M
