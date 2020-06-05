#!/bin/bash -x

head=1
tail=0
headcount=0
tailcount=0
for (( i=0;$i<10;i++ ))
do

  check=$((RANDOM%2))

   if (( $check == $head ))
    then
        echo "got head"
         ((headcount++))
    else
        echo "got tail"
         ((tailcount++))
   fi
done

echo "head count: $headcount"
echo "tail count: $tailcount"	
echo " "

if(( $headcount > $tailcount ))
then
    diff=$(($headcount-$tailcount))
     echo "diffrence is $diff for winning head"
elif(( $headcount < $tailcount ))
then
    diff=$(($tailcount-$headcount))
    echo "diffrence is $diff for winning tail"
else
    echo "tie"

    while (( 1 ))
    do
        check=$((RANDOM%2))

   	if (( $check == $head ))
        then
            echo "got head"
            ((headcount++))
    	else
           echo "got tail"
            ((tailcount++))
   	fi
   
   	if (( $(($headcount-$tailcount)) ==2 ))
   	then
       	   break;
   	elif (( $(($tailcount-$headcount)) ==2 ))
   	then
           break;
   	fi
    done
	echo "head count: $headcount"
	echo "tail count: $tailcount"
fi



