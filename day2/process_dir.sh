#!/bin/bash

# process_dir.sh 

# check that there is exactly one argument

if [ $# -ne 1 ]
then
    echo "Usage: process_dir.sh directory"
    exit 1
fi

# check that the argument is actually a directory

if [ ! -d $1 ]
then
    echo $1 is not a directory
    exit 1
fi

directory=$1
echo "directory: $directory"

files=$(ls $directory)
# echo "Files: $files"

for f in $files
do
    echo "Processing $f"
    outputFile=${f/txt/out}
    echo "Output file: $outputFile"
done


