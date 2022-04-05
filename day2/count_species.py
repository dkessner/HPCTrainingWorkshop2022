#!/usr/bin/env python

# count_species.py

count = 0

for line in open("bacteria.fasta"):
    if line.startswith(">"):
        count += 1

print(count)


