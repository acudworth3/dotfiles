# Ubuntu

> Mostly notes about wsl setup and general unix/linux info

## Env Vars

> [!IMPORTANT]
> Don't confuse `alias` with `export`.

## Environment Variables

> configs for programs

`printenv | cat`

## aliases

> shorthand for commands

`alias | cat`

## fd on Ubunutu

> run the following to enable it

```sh
export PATH="$PATH:$HOME/.local/bin"
ln -s $(which fdfind) ~/.local/bin/fd
```
