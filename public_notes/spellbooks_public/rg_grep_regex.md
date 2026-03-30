# Regex Basics

# Grep

# rg

> grep a pattern _in_ files

`rg PATTERN -l` Only list files matching pattern

> This greps file names

`rg --files` lists all files recursiveley
`rg --files | rg PATTERN` matches _file name_ to pattern
`rg --files | rg .json`

## Regexes - Patterns

> A good pattern is to write key maps that populate a command in a way that you learn the pattern

`/[0-9]%` - any number followed by %
`/[a-z]%` - any lowercase letter followed by %
`/[A-Z]%` - any uppercase letter followed by %
`/\v[A-Z]{2}` - any 2 uppercase letters
`/\v[A-Z]{2}\%` - any 2 uppercase letters followed by a %
`[abc]` represents 'any of' a b or c
