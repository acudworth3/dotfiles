# build_strategy v3

> Plan is to be intentional with which tool is used for which activity. attempt consistent keybindings across systems

- [x] learn -> ❔ implement vim motions in vscode
- [x] learn -> ❔ implement vim motions in visual studio

- [ ] task -> 🗒️ synchronize `ctlr i/o` or `alt+<left>/<right>` across ides

## Activity

> preferred order of things

1. neovim
2. cli
3. tui or bespoke tools
4. vscode
5. visual studio

- [ ] task -> 🗒️ fill out this section activity:tool

### Activity docker: lazydocker

### Activity git: lazygit --> then native tools

#### Activity git: Viewing diffs --> Mostly browser/github

### Activity notes: neovim + markdown + workspace docs

### Activity Markdown: Neovim (default) VsCode if tables+preview needed

### Activity Webdev: Neovim (default) VsCode: rarely

### Activity API Testing: Posting; .http files

## Activity - UNDER REVIEW

> Need to review tool choices

### Random Data Generation

> Gold standard is vscode random extension with multicursor

> lorem cli accessable via `ALT+e` then `lorem -s 5` is good for text

- [ ] Task -> 🗒️ explore neovim eco system
- [ ] Task -> 🗒️ look for cli solutions ``
- [ ] Read -> 📖 `shuff`
- [ ] Task -> 🗒️ POC some `shuff` usage

### Standard API/Doc Search: Change?

> Scope is standard library for languages and MDN docs for webdev

- Default is Websearch
- [ ] Parse -> 📚 how to bring this into the IDE/CLI
- [ ] Task -> 🗒️ consider https://github.com/freeCodeCamp/devdocs + https://github.com/maskudo/devdocs.nvim

### Azure Development: Undecided

- Portal
- `az cli`
- Cloud Shell
- IDE Tooling (VS + VScode)

### Database Management: dbeaver

- Database Activity: dbeaver (Defautl) Azure Data Studio (Backup)
  - [ ] Task -> 🗒️ review other db clients

### API Testing: Posting

1. Posting

- [ ] Read -> 📖 https://posting.sh/guide/

2. .http files + IDE

- [ ] Task -> 🗒️ look for tools to convert openApi to .http

## Visual Studio

- [ ] Task -> 🗒️ find an easy motion plugin (Easy Peasy)
- [x] Task -> 🗒️ Implement on work computer
- [ ] Task -> 🗒️ Implement on personal computer

## Visual Studio Code

- [x] Task -> 🗒️ Implement on work computer
- [x] Task -> 🗒️ Implement on personal computer
- [x] Task -> 🗒️ figure out `CTRL+D/U`
- [x] Apply Default: Relative Line Number

- Add to `settings.json`

```json
{
  "vim.easymotion": true,
  "vim.useCtrlKeys": false,
  "vim.normalModeKeyBindings": [
    {
      "before": ["s"],
      "after": ["<leader>", "<leader>", "s"]
    }
  ]
}
```

- Add to `keybindings.json`

```JSON
  {
    "key": "\\ \\",
    "command": "toggleVim"
  }
```
