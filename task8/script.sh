#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Введите: $0 <password_length> <output_file>"
  exit 1
fi
head /dev/urandom | tr -dc A-Za-z0-9 | head -c "$1" > "$2"
