#!/bin/bash -x
declare -A compute
read -p "Enter three inputs " a b c
compute[A]="$((a+b*c))"
compute[B]="$((a*b+c))"
compute[C]="$((c+a/b))"
compute[D]="$((a%b+c))"
