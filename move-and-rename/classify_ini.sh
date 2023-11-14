#!/bin/bash

for file in *; do
  if [[ -f "$file" ]]; then
    export initial=$(echo $file | cut -c 1 | tr '[:lower:]' '[:upper:]')
    if ! [[ -d "$initial" ]]; then
      mkdir "$initial"
    fi
    mv "$file" "$initial"
  fi
done
