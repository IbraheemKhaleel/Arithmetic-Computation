#!/bin/bash -x 
temp=0
declare -A compute
read -p "Enter three values" a b c
compute[A]=$((a+b*c))
compute[B]=$((a*b+c))
compute[C]=$((c+a/b))
compute[D]=$((a%b+c))
i=0
for  file in ${compute[@]}
do
        array[((i++))]=$((file))
done
echo ${array[@]}
for(( j=0; j<=${#array[@]};j++ ))
do
        for (( k=0; k<${#array[@]}-j-1 ; k++ ))
        do
                if [[ ${array[$k]} -lt ${array[$((k+1))]} ]]
                then
                        temp=${array[$((k+1))]}
                        array[$((k+1))]=${array[$k]}
                        array[$k]=$((temp))
                fi
        done
done
echo "Descending order is ${array[@]} "
for ((i=0;i<=4;i++))
do
	for ((j=0;j<4-i-1;j++))
	do
		if [[ ${array[$j]} -gt ${array[$((j+1))]} ]]
		then
			temp=${array[$((j+1))]}
			array[$((j+1))]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Ascending order is ${array[@]} "

