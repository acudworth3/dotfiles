#!/bin/bash
for i in {1..5}; do
  word_count=$((RANDOM % 6 + 10)) # Random number between 10 and 15
  tr -dc 'a-zA-Z \n' </dev/urandom | tr ' ' '\n' | grep -E '.{3,}' | head -n $word_count | tr '\n' ' ' >"file$i.txt"
done
