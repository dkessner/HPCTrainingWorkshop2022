#!/bin/bash
#
# process_species_2.sh
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

make $taskid.all

