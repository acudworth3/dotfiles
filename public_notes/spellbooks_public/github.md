# GitHub

## GitHub Actions

> Disable Job

```YAML
jobs:
  test_job_resolve:
    # set true to enable
    if: false
    uses: ./.github/workflows/job-resolve.yml
```

> run [via cli](https://docs.github.com/en/actions/using-workflows/manually-running-a-workflow)

```bash
gh workflow run run-tests.yml -f logLevel=warning -f tags=false -f environment=staging
```

> run on current branch

```bash
gh workflow run maintenance.yml  -r $(git branch --show-current)
```

## GitHub CLI

> Clear the cache

## Gist

> Publish all `.md` in a folder

`gh gist create *.md -d "References Andrew Cudworth"`

> Publish per file

`ls *.md | xargs -I {} gh gist create "{}" -d "{}" --public`

<!-- TODO: add to publish `.sh` -->
<!-- TODO: add url to Readme -->
