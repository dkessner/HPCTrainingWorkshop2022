#!/usr/bin/env python
#
# extract_species.py
#
# Darren Kessner
# HPC Training Workshop
# Cedars-Sinai Medical Center
# April 2022
#


from __future__ import print_function
import sys


def main():

    if len(sys.argv) != 3:
        print("Usage: extract_species.py filename targetIndex")
        sys.exit(1)

    filename = sys.argv[1]
    targetIndex = int(sys.argv[2])

    #print("filename:", filename)
    #print("targetIndex:", targetIndex)

    inTargetSpecies = False
    index = 0

    for line in open(filename):

        if line.startswith('>'):
            index += 1
        else:
            line = line.strip() # strip whitespace from sequence

        # print out the specified species

        if index == targetIndex:
            print(line, end='')
        elif index > targetIndex:
            break

if __name__ == '__main__':
    main()

