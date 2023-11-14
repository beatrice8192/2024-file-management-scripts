#!/bin/bash

for file in *; do
  if [[ -f "$file" ]]; then
    export ext="${file##*.}"
    if [[ $ext == 'sh' ]]; then
      continue
    fi
    if ! [[ -d "[$ext]" ]]; then
      echo "[$ext]"
      mkdir "[$ext]"
    fi
    mv "$file" "[$ext]"
  fi
done
