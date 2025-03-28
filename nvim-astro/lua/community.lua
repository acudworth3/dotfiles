-- if true then return {} end -- remove this line to activate this file

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This gurantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- colorscheme
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  -- Language Packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  { import = "astrocommunity.pack.cs-omnisharp" },
  -- { import = "astrocommunity.pack.html-css" },
  -- Consider direct managment
  -- { import = "astrocommunity.pack.markdown" },
  -- configure WSL for these languages first
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.cs" },

  -- Lua Development

  -- { import = "astrocommunity.neovim-lua-development.lua-console-nvim" },

  -- import/override with your plugins folder
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.recipes.vscode-icons" },
}
