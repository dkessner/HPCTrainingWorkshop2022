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

# extract single species

extract_species.py test.fasta $taskid > $taskid.fasta

# find CATs

tail -1 1.fasta | grep -o -b CAT > $taskid.catlist

# count CATs

cat $taskid.catlist | wc -l > $taskid.catcount

# sequence length

tail -1 $taskid.fasta | wc -c > $taskid.len

