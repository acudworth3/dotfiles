# Unix Commands

> Cannot be anything that doesn't come in a shell.

> [!NOTE]
> The purpose of this document is to imprint the information via writing more than be an exhausitve list
> Need a method to ensure I will know what to ask more than a quick way to get it

> [!NOTE]
> I do not intend to learn sed or awk

- [ ] Task -> 🗒️ review solution https://cmdchallenge.com/#/print_sorted_by_key

## misc

> Put commands or output into clipboard

```bash
## to pipe output
command | clip
## to pipe command itslef
echo command | clip
```

### sort + uniq

- `uniq -d` display only duplicate lines
- `uniq -u` display only unique lines

```bash
sort a b | uniq > c   # c is a union b
sort a b | uniq -d > c   # c is a intersect b
sort a b b | uniq -u > c   # c is set difference a - b
```

### pgrep

`pgrep` or `ps -aux | grep "value"`

### com

> compare files line by line

### gdu

> ignore `/mnt/c` -> `sudo gdu --ignore-dirs /mnt/c /`

### basename + dirname

> simple tools for working with file extensions

- pass it a path to only return file name
- `-s` flag will remove suffix
- combine with `find -type f` --> `find -type f -exec basename {} \;`
- Work with file lists `ls | xargs -n1 basename`
- Work with file lists `ls | xargs -n1 dirname`

- `ls -1` achieves the same as `ls | xargs -n1 basename`

- [ ] Task -> 🗒️ understand more about dirname vs pipe syntax

> note that dirname is on the left of command

`dirname **/*.txt` is equivalent to `ls **/*.txt | xargs dirname`
~`basename **/*.txt` is equivalent to `ls **/*.txt | xargs basename`~

## jq

- you can accumalte values with jq

### Flags

#### `-s` slurp

> puts all inputs into an array. Very useful to operate on inputs or apply flag filters

`cat numbers.txt | jq -s add`

### Samples

## tr

> character based replace, squeeze and delete

### Samples

```sh
# Deletes all the spaces
echo 'too     many    spaces' | tr -d ' '

# Squeezes all the spaces to one space
echo 'too     many    spaces' | tr -s ' '

# Single character replace
echo 'too:many:spaces' | tr ':' '-'

# lower to upercase
cat .gitignore | tr [a-z] [A-Z]

# Modify files in a dir; swap _ for .
ls -1 | tr '_' '.'

```

- Also support lower and uppercase conversion

> [!NOTE]
> Doesn't seem to work very well for multi char replace

## Cut

### Samples

```sh
echo "63.56.115.58 - - [09/Jan/2017:22:29:57 +0100] "GET /posts/2/display HTTP/1.0" 200 3240" | cut -d ' ' -f1
cat /etc/passwd | cut -d ":" -f 1,6
```

> The `-f1` flg will get the IP `-f7` would get the path

### Flags

#### `-d -f1`

> `-d` means delimeter. `-fN` is which "field" meaning effectivvely the column if `-d` where the delimeter
> all falgs support ranges like `-f 1,2,11` or `-f 1-11`

## grep

### Flags

#### `-l`

> Collect file names

#### `-E`

> extended regex

## xargs

- [ ] Task -> 🗒️ test this `pgrep nvim | xargs kill`

### Samples

- mostly crated from [lazgit-testing](~/repos/lazygit-testing/)

> `ls *.txt | xargs wc -l` count words in a file
> `cat file6.txt | xargs -n 1 mkdir` create dirs from list
> `cat file6.txt | xargs -n 1 rmdir` remove dirs from list
> `ls -1 | xargs nvim` opens the rsults of `ls`

#### Samples - Shell Execution

1. define variable outside of xargs
2. pass an arg to the shell command `bash -c "echo arg: $1" VALUE` by convenion `_` is good to use as the argument

> `echo 5 | xargs -n 1 bash -c 'echo "the arg is $1"' _`

returns "the arg is 5"

> `echo 5 6 7 8 | xargs -n 1 bash -c 'echo "the arg is $1"' _`

returns "the arg is 5"
returns "the arg is 6"
returns "the arg is 7"
returns "the arg is 7"

### Flags

#### -t

> `-t` is the trace command. It will log the command but still run it

#### -0

> Use for handling white space

#### -n Input Grouping

`-n NUMBER`

```txt file6.txt
A1 A2
B1 B2
C1 C2
```

> `-n` controls how the inputs to xargs are passed to its commands. Specifically if each input is passed to the command or inputs are grouped. Consider the following examples form file6.txt
> The first one runs echo 6 times with each piece of file6.txt. The next 3 times and the next two times

`cat file6.txt | xargs -n 1 echo`
`cat file6.txt | xargs -n 2 echo`
`cat file6.txt | xargs -n 3 echo`

#### -I {} substitution

> `-I {}` acts as a placeholder for inputs.
> `{}` is used as the placeholder by convention but is not required
> cannot be combined with `-n` flag

`cat file6.txt | xargs -I {} echo the input 3x  {} {} {}`
`cat file6.txt | xargs -I xx echo the input 3x  xx xx xx`

`cat file6.txt | xargs -n 1 -I {} printf "Would run: COMMAND" {}`
