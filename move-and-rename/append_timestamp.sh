#!/bin/bash

for dir in *; do
  if [[ -d "$dir" ]]; then
    export timestamp=`echo $dir | cut -d ' ' -f 1`
    export regex='^[0-9]+$'	#regex must in variable
    if ! [[ $timestamp =~ $regex ]]; then	#not numeric
      export timestamp=`stat -f %Sm -t %y%m%d "$dir"`
      mv "$dir" "$timestamp $dir"
    fi
  fi
done
