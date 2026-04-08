-- Customize Treesitter
-- --------------------
-- Treesitter customizations are handled with AstroCore
-- as nvim-treesitter simply provides a download utility for parsers

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      highlight = true, -- enable/disable treesitter based highlighting
      indent = true, -- enable/disable treesitter based indentation
      auto_install = true, -- enable/disable automatic installation of detected languages
      textobjects = {
        select = {
          select_textobject = {
            ["ak"] = { query = "@block.outer", desc = "around block" },
          },
        },
      },
      ensure_installed = {
        "bash",
        "css",
        -- "latex",
        -- "go",
        "html",
        "javascript",
        "json",
        -- "kdl",
        "lua",
        "markdown",
        "markdown_inline",
        -- "org",
        "python",
        "regex",
        -- "rust",
        "sql",
        "terraform",
        "toml",
        "typescript",
        "vim",
        "yaml",
        -- add more arguments for adding more treesitter parsers
      },
    },
  },
}
