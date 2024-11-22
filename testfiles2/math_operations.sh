#!/bin/bash

# Функция для сложения
add() {
  echo "Результат сложения: $(($1 + $2))"
}

# Функция для вычитания
subtract() {
  echo "Результат вычитания: $(($1 - $2))"
}

# Функция для умножения
multiply() {
  echo "Результат умножения: $(($1 * $2))"
}

# Функция для деления
divide() {
  if [ $2 -eq 0 ]; then
    echo "Ошибка: деление на ноль!"
  else
    echo "Результат деления: $(($1 / $2))"
  fi
}

# Запрос чисел и операции у пользователя
echo "Введите первое число:"
read num1

echo "Введите второе число:"
read num2

echo "Выберите операцию: + (сложение), - (вычитание), * (умножение), / (деление)"
read operation

# Выполнение соответствующей операции
case $operation in
  +)
    add $num1 $num2
    ;;
  -)
    subtract $num1 $num2
    ;;
  \*)
    multiply $num1 $num2
    ;;
  /)
    divide $num1 $num2
    ;;
  *)
    echo "Неверная операция!"
    ;;
esac