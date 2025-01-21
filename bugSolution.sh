#!/bin/bash

# Corrected script

find . -name '*.txt' -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # Correct variable expansion to create a new file
  head -n 1 "$file" > "${file%.txt}.head"
  echo "Done processing: $file"
done