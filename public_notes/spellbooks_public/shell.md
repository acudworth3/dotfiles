# Shell

> mostly 1 liners with simple solutions. Seek[test.sh](./test.sh)

## Brace Expansion

> contents of braces are expanded and passed to command. Sort of like inverse of xargs. Note that the shell is handling this

```sh
# print 1-100
echo {1..100}

# print a-z
echo {a..z}

# print fixed list
echo {1,2,a,b}

# move all txt and pdf files
mv *.{txt,pdf} some-dir
```

- [ ] Task -> 🗒️ provide some cool examples
- file creation
- passing output to other commands
- nesting examples

## Misc

- Add `#` after a command to include a comment. Combine with atuin for fast lookup

### Subshell

> Evaluate a command inside another command
> `echo the working directory is $(pwd)`

### Heredoc

- [ ] Task -> 🗒️ get this working

```sh
bash <<EOF
for ((i = 1; i <= 100; i++)); do
  echo "$i "
done
EOF

```

### One Line

```sh
for ((i = 1; i <= 100; i++)); do echo "$i "; done
```
