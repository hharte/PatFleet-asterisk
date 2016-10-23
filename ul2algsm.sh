#!/bin/bash
#
# Script to convert ulaw files to alaw and gsm using sox.
#

for i in $( find ./ -name "*.ulaw" -printf '%P\n' ); do
    filename="${i%.*}"
    echo converting: $filename
    sox -t ul -r 8000 -c1 $filename.ulaw -e a-law $filename.al
    mv $filename.al $filename.alaw
    sox -t ul -r 8000 -c1 $filename.ulaw $filename.gsm
done
