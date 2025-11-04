#!/bin/bash

hello() {
    local name="$1"
    echo "Hello, $name"
}

sum_numbers() {
    local a="$1"
    local b="$2"
    echo $((a + b))
}

hello "Bash"

result=$(sum_numbers 7 5)
echo "SUM: $result"
