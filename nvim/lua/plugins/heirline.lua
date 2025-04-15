-- defaults https://docs.astronvim.com/recipes/status#default-heirline-configuration
-- https://github.com/rebelot/heirline.nvim/blob/master/cookbook.md#cursor-position-ruler-and-scrollbar
return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"

    -- opts.statusline[1] = status.component.mode { mode_text = { padding = { left = 1, right = 1 } } } -- add the mode text
    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
      status.component.git_branch(),
      status.component.file_info {
        filename = {},
        filetype = false,
        file_modified = { padding = { left = 1, right = 1 } },
      },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.treesitter(),
      status.component.nav(),
      { provider = " %L" },
      status.component.mode { surround = { separator = "right" } },
    }
  end,
}
