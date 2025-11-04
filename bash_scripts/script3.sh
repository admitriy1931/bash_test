#!/bin/bash

read -p "Введите число: " num
if (( num > 0 )); then
    echo "Число положительное"
    i=1
    echo "Подсчёт от 1 до $num:"
    while (( i <= num )); do
        echo "$i"
        ((i++))
    done

elif (( num < 0 )); then
    echo "Число отрицательное"
else
    echo "Ноль"
fi
