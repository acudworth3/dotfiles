local M = {}

local move_left_feed_keys = require("user_functions.lua_utils").move_left_feed_keys
-- local utils = require("lua")
-- USAGE
-- local test = require "user_functions.generic_functions"
-- test.sample1()
function M.sample1() print "Hello from global_commands.lua" end

vim.api.nvim_create_user_command(
  "Gsample1",                 -- Command name in Neovim
  function() M.sample1() end, -- Function to execute
  { nargs = 0 }               -- No arguments required
)

-- ["<Leader>sa"] = { ":%s/<C-r><C-w>  /& /g<left><left>", desc = "Append to Word Under Cursor" },
function M.append_to_word_under_cursor()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":%s/<C-r><C-w>/& /g<left><left>", true, false, true), "n", true)
end

vim.api.nvim_create_user_command(
  "GappendToWord",                                         -- Command name in Neovim
  function() M.append_to_word_under_cursor() end,          -- Function to execute
  { nargs = 0, desc = "(:g) Append To Word Under Cursor" } -- No arguments required
)

-- GsendCwordToY
function M.send_word_under_cursor_Y_register()
  -- TODO: Review if possible to highlight all matches
  vim.fn.setreg("y", "") -- clear the register
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":g/<C-r><C-w>/yank Y", true, false, true), "n", true)
  move_left_feed_keys(7)
end

-- GsendCwordToY
vim.api.nvim_create_user_command(
  "GsendCwordToY",                                      -- Command name in Neovim
  function() M.send_word_under_cursor_Y_register() end, -- Function to execute
  { nargs = 0, desc = "(:g) Send Match to Y register" } -- No arguments required
)

-- GdeleteInverseMatch
function M.delete_inverse_matches()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":vg/<C-r><C-w>/d", true, false, true), "n", true)
  move_left_feed_keys(2)
end

-- GdeleteInverseMatch
vim.api.nvim_create_user_command(
  "GdeleteInverseMatch",                                 -- Command name in Neovim
  function() M.delete_inverse_matches() end,             -- Function to execute
  { nargs = 0, desc = "(:g) Delete Non Matching Lines" } -- No arguments required
)

-- local comment = require "Comment"
-- Get the comment string for the current filetype
-- local comment_str = comment.get_comment_string()
-- print(comment_str)

-- GprependTODO
-- Goal: prepend a TODO to all results in the quick fix list
function M.prepend_to_matches(todo_text)
  -- handle inputs
  if todo_text == "" then todo_text = "ADD DETAILS" end
  local arg_length = #todo_text
  local cursor_move_length = arg_length + 29

  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes(':g/<C-r><C-w>/execute "normal! O// TODO: ' .. todo_text .. '"', true, false, true),
    "n",
    true
  )
  move_left_feed_keys(cursor_move_length)
end

-- GprependTODO
vim.api.nvim_create_user_command(
  "GprependTODO",               -- Command name in Neovim
  function(opts)
    local todo_text = opts.args -- Get the argument passed to the command
    M.prepend_to_matches(todo_text)
  end,
  { nargs = "*", desc = "(:g) Prepend TODO to matches" } --
)

return M
