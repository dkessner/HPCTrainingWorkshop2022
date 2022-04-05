#!/bin/bash
#
# process_species.sh
#
# Darren Kessner
# HPC Training Workshop
# Cedars-Sinai Medical Center
# April 2022
#


taskid=$SGE_TASK_ID

if [ "$taskid" = "" ]
then
    echo "Usage: SGE_TASK_ID=n process_species.sh"
    exit 1
fi

echo "taskid: $taskid"

filename_fa=$taskid.fa
filename_catlist=$taskid.catlist
filename_catcount=$taskid.catcount
filename_len=$taskid.len

# extract single species

echo "extract_species -> $filename_fa"
./extract_species.py bacteria.fasta $taskid > $filename_fa

# find CATs

echo "find_cats-> $filename_catlist"
./find_cats.sh $filename_fa > $filename_catlist

# count CATs

echo "find_cats-> $filename_catcount"
./count_cats.sh $filename_catlist > $filename_catcount

# sequence length

echo "get_sequence_length.sh -> $filename_len"
./get_sequence_length.sh $filename_fa > $filename_len

