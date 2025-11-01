---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "copilot-language-server",
        "bash-language-server",
        "dockerfile-language-server",
        "lua-language-server",
        "yaml-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",

        "eslint-lsp",
        "hadolint",
        "json-lsp",
        "prettierd",
        "selene",
        "shellcheck",
        "shfmt",
        "stylua",
        -- "markdownlint-cli2",
        -- "marksman",
      },
    },
  },
}
