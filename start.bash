#!/bin/bash
################################################################################
# Start.bash : Entry point
################################################################################
# iterate throught folders names in test_suite folder
for dir in `ls -d test_suite/*/`
do
    echo $dir | cut -f2 -d/
    # iterate throught files names in each folder
    for filename in `ls $dir`
    do
        # load variables for each test
        source $dir$filename
        echo "          ["$name"]"
    done
done
