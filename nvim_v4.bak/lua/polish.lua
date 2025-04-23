-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add { extension = { foo = "fooscript", }, filename = { ["Foofile"] = "fooscript", }, pattern = { ["~/%.config/foo/.*"] = "fooscript", }, }

-- IMPORT ALL USER Function ./user_functions
-- require "user_functions.generic_functions"
-- require() not only searches through all lua/ directories under 'runtimepath',
-- package.path = package.path .. ";./path/to/your/lua/files/?.lua"
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath "config" .. "/lua/user_functions", [[v:val =~ '\.lua$']])) do
  require("user_functions." .. file:gsub("%.lua$", ""))
end
