#!/bin/bash

for dir in *; do
  if [[ -d "$dir" ]]; then
    for subdir in "$dir"/*; do
      if [[ $subdir == *"*"* ]]; then
        rm -rf "$dir"
        break
      fi
    done
  fi
done
