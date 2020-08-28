#!/bin/bash -x
read -p "Enter three values  " a b c
compute[0]=$((a+b*c))
compute[1]=$((a*b+c))
compute[2]=$((c+a/b))
compute[3]=$((a%b+c))
result=${compute[@]}


