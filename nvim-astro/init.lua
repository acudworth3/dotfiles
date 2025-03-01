-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- load user defined lua function https://github.com/Piotr1215/youtube/blob/main/nvim-scripting/slides.md
-- for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath "config" .. "/lua/user_functions", [[v:val =~ '\.lua$']])) do
--   require("user_functions." .. file:gsub("%.lua$", ""))
-- end

-- require "user_functions.generic_functions"
require "lazy_setup"
require "polish"
require "options"
