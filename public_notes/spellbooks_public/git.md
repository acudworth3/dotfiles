# Git Configs (Interesting Ones)

## Deny Force Push

> To tell Git to refuse force-pushes, set receive.denyNonFastForwards:

```bash
git config --system receive.denyNonFastForwards true
```

## Commit Templates

> To tell Git to use it as the default message that appears in your editor when you run git commit, set the commit.template configuration value:

```bash
git config --global commit.template ~/.gitmessage.txt
git commit
```

## Ignore Hooks

> to ignore a hook pass the --no-verify flg

```bash
--no-verify
```

## Easter Eggs

```bash
gitk
git gui
git shortlog
```

## Git

```bash
git ls-remote origin
git ls-remote
git ls-remote | grep tag
git ls-remote | grep pull
```

> create local files equivalent to a git clone

```bash
# create bundle
git bundle create repo.bundle HEAD master
# use bundle
git clone repo.bundle repo

> review tree structure
```

```bash
git count-objects -v
```

> debugging

```bash
# reflog
gitk --all --date-order $(git log -g --pretty=%H)
# dangling committs
gitk --all --date-order $(git fsck | grep "dangling commit" | awk '{print $3;}')
```

### Git - Config

```bash
# system configs
git config -e --system
# user configs
git config -e --global
# repo configs
git config -e --local

```
