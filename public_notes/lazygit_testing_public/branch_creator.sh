#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <number_of_branches>"
  exit 1
fi

count=$1
created=0
used_numbers=()

while [ $created -lt $count ]; do
  number=$((RANDOM % 100 + 1))
  
  # Avoid duplicate branch numbers
  if [[ " ${used_numbers[*]} " == *" $number "* ]]; then
    continue
  fi

  branch_name="feature/test-branch-$number"
  
  git branch "$branch_name" && echo "Created branch: $branch_name"
  
  used_numbers+=($number)
  ((created++))
done

