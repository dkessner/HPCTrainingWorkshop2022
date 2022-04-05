#!/bin/bash
#
# process_file.sh
#


if [ "$SGE_TASK_ID" = "" ]
then
    echo "Usage: SGE_TASK_ID=n process_species.sh"
    exit 1
fi


taskid=$SGE_TASK_ID

# calculate filename based on task id
filename=$(head -$taskid filenames.txt | tail -1)

echo "Processing $taskid"
echo "filename: $filename"

