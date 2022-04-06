#!/bin/sh

sequence=$(tail -1 $1)
A_count=$(echo $sequence | grep -o -b A | wc -l)
C_count=$(echo $sequence | grep -o -b C | wc -l)
G_count=$(echo $sequence | grep -o -b G | wc -l)
T_count=$(echo $sequence | grep -o -b T | wc -l)
total=$(echo "$A_count + $C_count + $G_count + $T_count" | bc -l)
gc_content=$(echo "$G_count + $C_count / $total" | bc -l)
echo $gc_content

