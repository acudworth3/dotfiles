# Usage References

## How To

Run Terminal as Bash

- `:terminal then i`
- `:terminal then i`

How to reset the working directory

- cd from : (can be window specific as well)

Exit and Return Quickly

- CTRL+z "then" fg --> Put vim in the background then return to it

View a CLI Command

- :!COMMAND --> View Command Output In Small screen
  - :!ls
  - :!cat FILENAME
  - :!pwd

Read a CLI Command into a file

- :r !COMMAND --> Inserts command output into file
- :read !COMMAND --> Inserts command output into file
  - :read !ls
  - :read !cat FILENAME
  - :read !pwd

Display branch name in status linedisplay branch name in status lineass contents to a cli

- write pipes the contents into a unix like programs - ":write wc --words" will display wc for the current file"
  > Pass the content of a file or a filtered subset to a cli program. Send output to current file or vim display

Control what Qualifies as a word
"will make - part of a word" --> set iskeyword iskeyword=@,48-57,\_,192-255,-

Manage Snippets

- see /mnt/c/Users/Y891986/Documents/workspace_1_offline/knowledge-graph/dotfiles/nvim-astro/snippets
- follow https://docs.astronvim.com/recipes/snippets/

Run Commands on Visual Selections

- https://keep.google.com/u/0/#NOTE/1sqcUdU6m4cQdWdzOf4ZMEPhWKNmLdt3rlnNYmnkQCWuFKaUBTRq4nnWiLswJeZbMG90M-8CF
  - select with visual mode
  - : then ! and command
  - Example :!cowsay after visual selection

Manage Tabs

- 1+ session tab navigation (gt/gT) (:tabnew for new tab) (:tcd to set directory) ({tabnumber}gt/gT)
