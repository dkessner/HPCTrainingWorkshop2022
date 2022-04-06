#!/bin/sh

sequence=$(tail -1 $1)
echo $sequence

A_count=$(grep -o -b A $sequence | wc -l)
echo $A_count

