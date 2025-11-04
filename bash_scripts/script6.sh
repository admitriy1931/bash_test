#!/bin/bash

echo "Содержимое файла input.txt: "
cat input.txt
wc -l < input.txt > output.txt
ls nonexistent_file 2 > error.log
echo "Количество строк записано в output.txt"
echo "Ошибки записаны в error.log"
