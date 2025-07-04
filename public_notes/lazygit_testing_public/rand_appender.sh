#!/bin/bash
files=(*.txt)
if [ ${#files[@]} -eq 0 ]; then
  echo "No .txt files found in the current directory."
  exit 1
fi

random_file=${files[RANDOM % ${#files[@]}]}
word_count=$((RANDOM % 6 + 10))
random_text=$(tr -dc 'a-zA-Z \n' </dev/urandom | tr ' ' '\n' | grep -E '.{3,}' | head -n $word_count | tr '\n' ' ')
echo "$random_text" >>"$random_file"
echo "Appended to $random_file"

# add poop
