#!/bin/bash

echo "Запуск трёх процессов ping в фоне: "
ping -c 1 google.com &
ping -c 2 github.com &
ping -c 5 yandex.ru &
echo "Список фоновых задач: "
jobs

echo "Ожидание завершения процессов..."
wait
echo "Все фоновые процессы завершены."
