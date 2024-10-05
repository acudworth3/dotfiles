-- Customize Treesitter

-- TODO add shell
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "go",
      "html",
      "javascript",
      "json",
      "kdl",
      "lua",
      "markdown",
      "markdown_inline",
      "org",
      "python",
      "regex",
      "rust",
      "sql",
      "terraform",
      "toml",
      "typescript",
      "vim",
      "yaml",
    },
  },
}
