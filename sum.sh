#!/bin/bash

# Проверка, что передано ровно два аргумента
if [ "$#" -ne 2 ]; then
  echo "Использование: $0 число1 число2"
  exit 1
fi

# Присваиваем аргументы переменным
num1=$1
num2=$2

# Суммируем числа
sum=$((num1 + num2))

# Выводим результат
echo "Сумма: $sum"

