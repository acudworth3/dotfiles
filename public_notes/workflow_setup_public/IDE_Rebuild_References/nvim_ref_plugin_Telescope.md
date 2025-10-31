# Telescope nvim-ref

> [!IMPORTANT]
> You have replaced telescope with snacks

> Access via `leader + F`

> Note that you generally have access to registers like cword and last yank via `CTRL+R`

> Extensions will map commands to a register see `:Telescope git_commits` + `CTRL+R`

- `ctrl+/` for actions when searching
- run `:telescope +CTRL+D` or`:telescope builtins` and map things you want

- Send selection to quickfix `ALT+q`
- Send results to quickfix `C+q`
- open all results `(leader ff) ALT+Enter`
- close buffer for all results `(leader ff) ALT+d`
- create simple cli to picker https://github.com/axkirillov/easypick.nvim

## Telescope - live grep nvim-ref

> `Telescope live_grep`

Important flags

```vimdoc
        {glob_pattern}        (string|table)    argument to be used with
                                                `--glob`, e.g. "*.toml", can
                                                use the opposite "!*.toml"
        {type_filter}         (string)          argument to be used with
                                                `--type`, e.g. "rust", see `rg
                                                --type-list`
```

## Telescope - Git

> I lean toward managing this in lazygit

- [ ] Task -> 🗒️ try using the `leader+g` git options more
- view commits (switch to them)
- view file commits (switch to them)
- Branch Management - View More
  - [ ] ~Task -> 🗒️ Investigate Branch Management Here~

- <ESC> puts you in normal mode ? shows available options
