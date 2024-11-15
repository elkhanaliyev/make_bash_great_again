#!/bin/bash

# Указываем имя директории
dir_name="test_directory"

# Создаем директорию
echo "Создаем директорию $dir_name..."
mkdir $dir_name

# Переходим в директорию
cd $dir_name

# Создаем несколько файлов внутри директории
echo "Создаем файлы..."
touch file1.txt file2.txt file3.txt

# Проверяем наличие файлов
echo "Содержимое директории:"
ls

# Удаляем созданные файлы
echo "Удаляем файлы..."
rm file1.txt file2.txt file3.txt

# Проверяем, что файлы удалены
echo "Содержимое директории после удаления файлов:"
ls

# Выходим из директории
cd ..

# Удаляем саму директорию
echo "Удаляем директорию $dir_name..."
rmdir $dir_name

echo "Операция завершена."
