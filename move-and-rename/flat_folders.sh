#!/bin/bash

for dir in *; do
  if [[ -d "$dir" ]]; then
    for file in "$dir"/*; do
      if [[ $file == *"*"* ]]; then
        continue
      fi
      export file=$(basename "$file")
      mv "$dir"/"$file" ./"$dir $file"
    done
  fi
done
