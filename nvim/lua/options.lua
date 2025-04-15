-- vim options can be configured here
return {
  opt = {                  -- vim.opt.<key>
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = true,          -- sets vim.opt.spell
    signcolumn = "yes",    -- sets vim.opt.signcolumn to yes
    wrap = false,          -- sets vim.opt.wrap
    cursorcolumn = true,
    cursorline = true,
  },
  g = { -- vim.g.<key>
    -- configure global vim variables (vim.g)
    -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
    -- This can be found in the `lua/lazy_setup.lua` file
  },
}
