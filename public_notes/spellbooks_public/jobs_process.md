# Jobs

> `&` sends the job to the background
> for `rush` or `npm` jobs still need to send the output somewhere
> `nohub` ignores hangup signals so it keeps running even if the terminal closes

## fg an dbg

- `CTRL+z` puts current program into background (shows as suspended )
- [ ] also command followed by `&` accomplishes the same
- `fg` brings it to the background

- list jobs `jobs`
- `fg` jobs id with `%` must be `fg %2` not `fg 2`

## Output Management

- to a log
- to the void `nohup rushx start >/dev/null 2>&1 &`

## Job Management

- btop
- `ps -aux | grep rush`
- `pgrep -f "rush"`
- `jobs`

> run `kill` to stop it
> `kill %1` for job numbers

- `lsof` or `lsof -i :5173` for port info

- `nohup` send job to background

## Redirection

`> or <` send output in derection of arrow

`tr [a-z] [A-Z] < .gitignore` and `cat .gitignore | tr [a-z] [A-Z]` are equivalent

> set standard input for a command rather than using `cat package.json | wc -l` use `wc -l < package.json`

## Control Flow

- `&&` Do it regardless of success/failure
- `;` Do it only if success
- `||` effectively and OR

> install if missing and run
> `htop || sudo apt install htop && htop`
