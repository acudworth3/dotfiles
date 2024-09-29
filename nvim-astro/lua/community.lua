-- if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This gurantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Languate Packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.typescript" },
  -- Consider direct managment
  { import = "astrocommunity.pack.markdown" },
  -- configure WSL for these languages first
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.cs" },

  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
}
