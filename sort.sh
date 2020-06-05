#!/bin/bash -x

read -p "Enter value of 'a'  " a
read -p "Enter value of 'b'  " b
read -p "Entar value if 'c'  " c


count=0
temp=0

echo "numbers are : " $a $b $c

result1=$(($a + $b * $c))
echo $result1
computation[(count++)]=$result1

result2=$(($a * $b + $c))
echo $result2
computation[(count++)]=$result2

result3=$(($c + $a / $b))
echo $result3
computation[(count++)]=$result3

result4=$(($a % $b + $c))
echo $result4
computation[(count++)]=$result4

for (( i=0; i<=4; i++ ))
do
 for ((j=i+1; j<=4; j++ ))
  do
   if [[ ${computation[i]} -lt ${computation[j]} ]]
   then
     temp=${computation[i]}
     computation[i]=${computation[j]}
     computation[j]=$temp
    fi
  done
done

for key in ${!computation[@]}
do
  echo $key : ${computation[$key]}
done


