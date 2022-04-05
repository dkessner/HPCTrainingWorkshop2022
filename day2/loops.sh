#!/bin/bash

# loops.sh


#name="Stuart Noah"
#echo "My name is $name"
#echo 'My name is $name' # single-quote is "more literal"
#echo "My name is (${name/tuart/arah})"


# loop

for a in one two three
do
    echo $a
done


date
echo "Press <enter> to continue"
read answer


for i in $(seq -w 1 10)
do
    filename="output${i}.txt"
    echo "Processing $filename"
done




