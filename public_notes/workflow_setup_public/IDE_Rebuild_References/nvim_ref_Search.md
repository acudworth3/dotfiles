# Search

> if you want to seach a regular expression us `/v` if you want to use verbatim use `/V` else escape Characters

## Search - Meta characters - nvim-ref regex

- good reference https://dahu.github.io/vim_waz_ere/1_editor_fundamentals.html#_table_of_search_pattern_metacharacters
- Basic Glob syntax is supported
  > must escape meta characters with `\` to search directorly
  - example `ab*` finds glob of `ab` `ab\*` finds exactly `ab*`

1. `.` represents any character

`/default.value` matches default-value or default_value default.value
`/default\.value` matches default.value only

2. `*` represents any set between character before and after it

`/a*b` matches aab a1234b, abbb etc.

4. `^` represents start of line

`^cat` matches cat only if it is at the start of the line

5. `~` is the previous substituted value

run `s/cat/dog` then `s/~/bird` replaces dog with bird

> I suppose this is useful for chaining

6. `[abc]` represents 'any of' a b or c

> useful for lower and capitol case

7. Misc examples

"Inside the brackets, a circumflex as the first character reverses the meaning"
`/^[^ ]/` represents any line not starting with space

## Search - References - regex - nvim-ref

- `/\V{Pattern}` will do a "verbatim" search meaning you don't have to escape special characters
- `//` will pull up the previous search pattern
- `CTRL+r CTRL+w` will autocomplete a search term

8. Simple Regex

`/[0-9]%` - any number followed by %
`/[a-z]%` - any lowercase letter followed by %
`/[A-Z]%` - any uppercase letter followed by %
`/\v[A-Z]{2}` - any 2 uppercase letters
`/\v[A-Z]{2}\%` - any 2 uppercase letters followed by a %

<!-- samples -->

1%
22%
AB%
AB12ab%
AB12ab%

# Substitute (Find and Replace) - nvim-ref

- [ ] Task -> 🗒️ Practice Usage

## Substitute - References - Examples

> Possible Standard

`:%s/pattern/replacement/gc`

> General Standard

`:{range}s/{pattern}/{replacement}/{flags}`

> Combine with verbatim Flag

`:%s/\V{pattern}/{replacement}`

> Uncheck all check boxes

> supports general regex -
> this would match 'Pattern' or 'pattern'

`:%s/[Pp]attern/replacement/g`

## Flags

- `:help s_flags*`
- `c` asks you to confirm
- `g` apply substitute per line
- `i` case insensitivity
-

- `%` (prefix) means range is the whole file
- `CTRL+R+w` will echo the current word
- `CTRL+R+l` will echo the current line

## Across files

- Collect files into args
  - `:args **/*.md` (this would collect all markdown files)
  - `:argsdo { commands }` apply arg to all commands

## In practice

1. copy word
2. `:s/PASTE/replacement`
3. add `:%s/PASTE/replacement`
4. Optional add `c flag` `:%s/PASTE/replacement/c`

> these are mapped to `leader + s + a`
