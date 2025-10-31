# Pasting Clipboard

- [ ] Task -> 🗒️ find a way to hang onto the system clipboard after yanking or deleting (maybe sync + registers to 0 register)
- [ ] Task -> 🗒️ find a way to yank into windows history
- [ ] Task -> 🗒️ review how to pat above and below a line

- The `0` registers holds onto the last yank. It is is not overwritten via deletion `"0` to access it

- Paste over a visual selection to not overwrite your yank register
- general pattern `v t LETTER` then Insert
- combine with `;` and `,` if you miss the Selection with LETTER

> `p` vs `P` when pasting in visual mode

- `p` will delete visual selection and put it into the yank register
- `P` will delete visual selection but keep the pasted value in the register

- Paste from system Clipboard `SHIFT+INSERT` or `CTRL+SHIFT+v`

> "As the name suggests, the yank register is set only when we use the `y{motion}` command. To put it another way: it's not set by the x, d{motion} commands. If we yank some text, we can be sure that it will stick around in register `0` until we explicitly overwrite it by yanking something else. The yank register is reliable, whereas the unnamed register is volatile. s, c{motion}, and"

## Clipboard + Registers Notes

- `leader f r` to fuzzy find registers
- `a[LETTER]` to add to register
- `A[LETTER]` to append to register

> Registers worth knowing

`+` System Clipboard

- Populated when something is copied outside WSL then `SHIFT+INSERT` is run
- Populated when anything is yanked or deleted in vim

`"` Unnamed register also populated with yank/delete
`0` Last Yanked text
`1` Last Deleted text
`_` black hole register

- propose to map change and delete actions into this register

`%` holds current file name (interesting detail)

> A linewise yank or delete `dd yy dap` creates a linewise register. When pasted a \n is included

- run `yy` the paste registers `"` and `0` will include the `\n` character. Single words do not have this
- [ ] Task -> 🗒️ could append a `\n` to copied content if you really wanted to
