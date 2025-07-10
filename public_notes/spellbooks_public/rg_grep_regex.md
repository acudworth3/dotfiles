# Regex Basics

# Grep

# rg

> grep a pattern _in_ files

`rg PATTERN -l` Only list files matching pattern

> This greps file names

`rg --files` lists all files recursiveley
`rg --files | rg PATTERN` matches _file name_ to pattern
`rg --files | rg .json`
