#!/bin/bash

# Show help message
if [[ "$1" == "--help" ]]; then
  echo ""
  echo "Usage: $0 <number_of_branches> <commits_per_branch>"
  echo ""
  echo "Description:"
  echo "  Randomly selects a number of local Git branches and appends random data"
  echo "  to a file in the repo, committing the change each time."
  echo ""
  echo "Arguments:"
  echo "  number_of_branches     How many branches to randomly select."
  echo "  commits_per_branch     How many times to append + commit on each branch."
  echo ""
  echo "Example:"
  echo "  $0 3 5"
  echo "    → Selects 3 random branches"
  echo "    → Makes 5 commits on each by running ./rand_appender.sh"
  echo ""
  exit 0
fi

# Validate args
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: Missing arguments. Use --help for usage info."
  exit 1
fi

branch_count=$1
commits_per_branch=$2

# Get all local branches
branches=($(git branch --format="%(refname:short)"))

# Check if we have enough branches
if [ "${#branches[@]}" -lt "$branch_count" ]; then
  echo "Error: Not enough local branches to choose from."
  exit 1
fi

# Pick random branches
selected_branches=($(printf "%s\n" "${branches[@]}" | shuf | head -n "$branch_count"))

for branch in "${selected_branches[@]}"; do
  echo "Switching to branch: $branch"
  git checkout "$branch" || {
    echo "Failed to checkout $branch"
    continue
  }

  for ((i = 1; i <= commits_per_branch; i++)); do
    # Generate a random number and a random word for the commit message
    random_number=$((RANDOM % 1000 + 1))                                 # Random number between 1 and 1000
    random_word=$(tr -dc 'a-zA-Z' </dev/urandom | fold -w 5 | head -n 1) # Random 5-letter word

    # Generate commit message
    commit_message="Auto commit - $random_number - $random_word "

    echo "  Append and commit #$i on $branch with message: '$commit_message'"
    ./rand_appender.sh
    git add .
    git commit -m "$commit_message"
  done
done

# Optional: Return to main
git checkout master
