#!/bin/bash

file_count=0
dir_count=0

for item in *; do
  if [[ -f "$item" ]]; then
    ((file_count++))
  elif [[ -d "$item" ]]; then
    ((dir_count++))
  fi
done
echo "Количество файлов: $file_count"
echo "Количество директорий: $dir_count"
