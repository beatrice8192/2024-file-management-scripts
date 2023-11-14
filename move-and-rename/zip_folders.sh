#!/bin/bash

for dir in *; do
  if [[ -d "$dir" ]]; then
    echo $dir
    zip -r "$dir".zip "$dir"
  fi
done
