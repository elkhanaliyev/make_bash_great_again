#!/bin/bash

# Проверка, что указан файл
if [ "$#" -ne 1 ]; then
  echo "Использование: $0 имя_файла"
  exit 1
fi

# Проверка, что файл существует
if [ ! -f "$1" ]; then
  echo "Ошибка: файл '$1' не найден!"
  exit 1
fi

# Чтение файла строка за строкой
while IFS= read -r line; do
  echo "$line"
done < "$1"
