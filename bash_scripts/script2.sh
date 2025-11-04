#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Укажите путь к каталогу, который нужно добавить в PATH."
    echo "Пример: $0 /home/user/scripts"
    exit 1
fi

new_dir=$1

echo "Текущее значение PATH:"
echo "$PATH"
echo

export PATH="$PATH:$new_dir"

echo "Добавлена новая директория: $new_dir"
echo "Новое значение PATH:"
echo "$PATH"
