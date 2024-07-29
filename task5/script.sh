#!/bin/bash
if [[ ! -f "$1" ]]; then
  echo "Файл не найден!"
  exit 1
fi

while IFS= read -r line; do
  echo "$line" | rev
done < "$1"
