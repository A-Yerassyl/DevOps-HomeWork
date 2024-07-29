#!/bin/bash
sudo apt-get update
updates=$(apt list --upgradable 2>/dev/null | grep -v "Listing...")

if [[ -n "$updates" ]]; then
  echo "Доступны обновления:"
  sudo apt-get upgrade -y
  echo "Обновления установлены."
else
  echo "Обновлений нет."
fi
