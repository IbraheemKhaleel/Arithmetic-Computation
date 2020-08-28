#!/bin/bash -x
read -p "Enter three inputs " a b c
result=$((a%b+c))
echo "result is $result "
