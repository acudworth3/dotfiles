local M = {}

-- function M.sample1() print "Hello from template.lua" end
local move_left_feed_keys = require("user_functions.lua_utils").move_left_feed_keys

--- Append TODO  ---
function M.qf_append_todo()
  -- Complex Operations
  -- \r puts the comment above the match
  -- add | update to autosave
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":cdo s/$/ \\r--TODO /", true, false, true), "n", true)
  move_left_feed_keys(2)
end

vim.api.nvim_create_user_command(
  "CQappendQfTODO",                                    -- Command name in Neovim
  function() M.qf_append_todo() end,                   -- Function to execute
  { nargs = 0, desc = "(:cdo) Quick Fix Append TODO" } -- Will appear on search
)
--- Delete Line  ---
-- function M.qf_delete_line()
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":cdo d", true, false, true), "n", true)
-- end
function M.qf_delete_line(silent)
  local cmd = ":cdo d"
  if silent then cmd = cmd .. "<CR>" end
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(cmd, true, false, true), "n", true)
end

vim.api.nvim_create_user_command(
  "CQdeleteLine",                                      -- Command name in Neovim
  function() M.qf_delete_line() end,                   -- Function to execute
  { nargs = 0, desc = "(:cdo) Quick Fix Delete Line" } -- Will appear on search
)

--- Find and Replace  ---
function M.qf_substitute()
  -- Complex Operations
  -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":%s/<C-r><C-w>/& /g", true, false, true), "n", true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":cdo %s/<C-r><C-w>/& /gc ", true, false, true), "n", true)
  move_left_feed_keys(3)
end

vim.api.nvim_create_user_command(
  "CQsubstitute",                                            -- Command name in Neovim
  function() M.qf_substitute() end,                          -- Function to execute
  { nargs = 0, desc = "(:cdo) Substitute Inside Quick Fix" } -- Will appear on search
)

--- copy to buffer ---
function M.qf_copy_contents_to_buffer()
  local qflist = vim.fn.getqflist()
  if #qflist == 0 then
    print "Quickfix list is empty"
    return
  end

  -- Ask for confirmation
  local confirm = vim.fn.input "Copy quickfix? (y/n): "
  if confirm:lower() ~= "y" then
    print "Operation canceled"
    return
  end

  local lines = {}
  for _, item in ipairs(qflist) do
    table.insert(lines, string.format("%s", item.text))
  end

  vim.api.nvim_buf_set_lines(0, -1, -1, false, lines)
end

vim.api.nvim_create_user_command(
  "CQCopyQuickFixToCurrentBuffer",                      -- Command name in Neovim
  function() M.qf_copy_contents_to_buffer() end,        -- Function to execute
  { nargs = 0, desc = "(:cdo) Send to Current Buffer" } -- Will appear on search
)

-- TODO: consider suppressing the confirmations
-- TODO: keep cursor position
vim.api.nvim_create_user_command(
  "CQMoveQuickFixToCurrentBuffer", -- Command name in Neovim
  function()
    -- save Cursor Position
    -- local pos = vim.api.nvim_win_get_cursor(0) -- Save cursor position
    -- vim.api.nvim_win_set_cursor(0, pos)        -- Restore cursor position

    M.qf_copy_contents_to_buffer() -- Function to execute
    M.qf_delete_line(true)

    -- return cursor position
    -- vim.api.nvim_win_set_cursor(0, pos)                          -- Restore cursor position
  end,
  { nargs = 0, desc = "(:cdo) Move Quickfix to Current Buffer" } -- Will appear on search
)

--- Collect File Name ---
function M.qf_collect_file_names()
  local qflist = vim.fn.getqflist()
  if #qflist == 0 then
    print "Quickfix list is empty"
    return
  end
  local files = {}
  local seen = {}

  for _, item in ipairs(qflist) do
    if item.bufnr and vim.api.nvim_buf_is_valid(item.bufnr) then
      local filename = vim.fn.fnamemodify(vim.fn.bufname(item.bufnr), ":t")
      if filename ~= "" and not seen[filename] then
        seen[filename] = true
        table.insert(files, filename)
      end
    end
  end

  local file_list_str = table.concat(files, "\n")
  vim.fn.setreg("f", file_list_str)
  print("Added " .. #files .. " unique files to register f")
end

vim.api.nvim_create_user_command(
  "CQSendFileNamesToF",                                           -- Command name in Neovim
  function() M.qf_collect_file_names() end,                       -- Function to execute
  { nargs = 0, desc = "(:cdo) Collect File Names to F Register" } -- Will appear on search
)

function M.qf_show_in_panel()
  local qf_winid = vim.fn.getqflist({ winid = 0 }).winid
  local action = qf_winid > 0 and "cclose" or "copen"
  vim.cmd("botright " .. action)
end

vim.api.nvim_create_user_command(
  "CQShowInPanel",                                -- Command name in Neovim
  function() M.qf_show_in_panel() end,            -- Function to execute
  { nargs = 0, desc = "(:cdo) Show QF in Panel" } -- Will appear on search
)

return M
