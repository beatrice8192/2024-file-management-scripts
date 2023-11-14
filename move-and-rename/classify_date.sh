#!/bin/bash

for file in *; do
  if [[ -f "$file" ]]; then
    export ext="${file#*.}"
    if [[ $ext == 'sh' ]]; then
      continue
    fi
    export timestamp=`stat -f %Sm -t %y%m "$file"`
    if ! [[ -d $timestamp ]]; then
      echo $timestamp
      mkdir $timestamp
    fi
    mv "$file" "$timestamp"
  fi
done
