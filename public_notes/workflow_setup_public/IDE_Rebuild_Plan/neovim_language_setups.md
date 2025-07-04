# Overview

> Mostly for LSP work and notes around Language tooling

## Github

- [ ] Parse -> 📚 Octo Options

### Pull Requests

- [ ] Learn -> ❔ Write Description in Buffer
- [ ] Read -> 📖 https://github.com/pwntester/octo.nvim

### Github - Workflow runs

- [ ] Task -> 🗒️ https://github.com/nvim-telescope/telescope-github.nvim

### Github - Octo - References

> to be added to core skills

`:Octo actions` brings up picker for available actions

### Github - Issue Management

> Review https://github.com/pwntester/octo.nvim?tab=readme-ov-file#-commands but use `:` combine with `ctrl+D` to explore

## LSP General

- [ ] Task -> 🗒️ "review installed"
- [ ] Task -> 🗒️ validate prettier
- [ ] Task -> 🗒️ validate elsint - I Think the community pack is handling this
- [ ] Task -> 🗒️ validate markdownlint

## Markdown

- [ ] Task -> ◽ Setup Markdown Lint - Install via Mason markdown-cli2
- [ ] Task -> ◽ setup global markdown file https://github.com/linkarzu/dotfiles-latest/blob/ac074f9d7859b3eb59f76d8201eedc1ce248add8/neovim/neobean/lua/plugins/nvim-lint.lua#L26
- [ ] Task -> 🗒️ setup harper_ls
- [ ] Task -> 🗒️ add link management https://linkarzu.com/posts/neovim/markdown-setup-2024/
- [ ] Task -> 🗒️ setup harper AstroNvim/astrocommunity/lua/astrocommunity/pack/harper/init.lua

### Markdown Notes

- prettierd is handling the formatting

## SCSS

## Dotnet

> Need to separate dotnet lsp etc because it slows down everything else.
> Plan is to try omnisharp

> [!IMPORTANT]
> Noting that this is very hard vs using visual studio

> [!NOTE]
> I belive ominisharp is not uninstalling properly OR omnisharp is interfering with it
> Uninstalled everything beside easy-dotnet and roslyn but the roslyn client fails

- ref: https://github.com/MoaidHathot/Neovim-Moaid/blob/80f03d2c4515d3298dca761bc5767b31ccb12dbe/config/nvim/lua/plugins/lsp.lua#L48
- ref: https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/cs-omnisharp/init.lua

- [ ] Read -> 📖 https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/pack/cs-omnisharp

  - [ ] Parse -> 📚 https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/cs-omnisharp/init.lua
    - I think there is stuff I don't need in here
  - [ ] Read -> 📖 https://github.com/Hoffs/omnisharp-extended-lsp.nvim
  - [ ] Read -> 📖 https://docs.astronvim.com/recipes/advanced_lsp/
  - [ ] Task -> 🗒️ implement telescope hotkey

- [ ] Task -> 🗒️ https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#csharp_ls
  - [ ] Read -> 📖 https://github.com/razzmatazz/csharp-language-server
- [ ] Read -> 📖 https://github.com/Issafalcon/neotest-dotnet

- [ ] Task -> 🗒️ setup https://github.com/MoaidHathot/dotnet.nvim (seems like a waste)

### easy-dotnet Notes

- opts setups system
- lua functions with dotnet.ACTION Syntax are created
- default key mappings are applied

- [ ] Task -> 🗒️ Which Key is not picking up commands
- [ ] Task -> 🗒️ make the test runner a floating window
- [ ] Task -> 🗒️ Try to use the runner effectively
- [x] Learn -> ❔ ~Replace Markdown Community With Something Manual~
- [x] Task -> ◽ Manage issues with Octo `:Octo issue` + `CTRL+d`
- [x] Task -> ◽ Manage issues with Telescope?
- [x] Task -> 🗒️ open PRs + issues from Octo Search
- [x] Parse -> 📚 setup/review `:Telescope builtins` LSP options
- [x] Task -> 🗒️ https://docs.astronvim.com/recipes/mappings/
- [x] Task -> 🗒️ reach out to owner of https://github.com/MoaidHathot/dotnet.nvim
- [x] "The preferred way to install csharp-ls is with `dotnet tool install --global csharp-ls`."
- [x] Read -> 📖 https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/pack/cs
- [x] Read -> 📖 https://github.com/GustavEikaas/easy-dotnet.nvim?tab=readme-ov-file#package-autocomplete
- [x] Read -> 📖 https://github.com/seblj/roslyn.nvim
