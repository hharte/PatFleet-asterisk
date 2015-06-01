#!/bin/bash
#
# Script to convert ulaw files to wav using sox.
#

for i in $( find ./ -name "*.ulaw" -printf '%P\n' ); do
    filename="${i%.*}"
    echo converting: $filename
    sox -t ul -r 8000 -c1 $filename.ulaw $filename.wav pad 0.1 0
done
