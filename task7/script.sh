#!/bin/bash
if [[ -z "$1" ]]; then
  echo "Файл не указан"
  exit 1
fi

if [[ ! -f "$1" ]]; then
  echo "Файл не найден!"
  exit 1
fi
word_count=$(wc -w < "$1")

echo "Количество слов в файле '$1': $word_count"
