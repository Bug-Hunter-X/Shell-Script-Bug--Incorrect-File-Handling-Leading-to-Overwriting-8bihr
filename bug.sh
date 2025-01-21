#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle error.

find . -name '*.txt' -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # The error is here: Incorrect variable expansion within the loop
  # head -n 1 $file > ${file}.head  # Incorrect: This overwrites the original file
  head -n 1 "$file" > "${file%.txt}.head"
  echo "Done processing: $file"
done