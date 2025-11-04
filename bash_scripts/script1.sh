#!/bin/bash

echo "Список файлов и их типов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item — файл"
    elif [ -d "$item" ]; then
        echo "$item — каталог"
    elif [ -L "$item" ]; then
        echo "$item — символическая ссылка"
    else
        echo "$item — другой тип"
    fi
done
echo

if [ $# -eq 0 ]; then
    echo "Имя файла не передано в качестве аргумета."

else
    filename=$1
    if [ -e "$filename" ]; then
        echo "Файл '$filename' существует в текущей директории."
    else
        echo "Файл '$filename' не найден в текущей директории."
    fi
fi
echo

echo "Имя и права доступа к каждому файлу:"
for file in *; do
    permissions=$(ls -ld "$file" | awk '{print $1}')
    echo "$file — права: $permissions"
done
