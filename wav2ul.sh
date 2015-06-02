#!/bin/bash
#
# Script to convert a single wav file to ulaw using sox.
#

filename="${1%.*}"
echo converting: $filename.wav to $filename.ulaw
sox $filename.wav -t ul $filename.ulaw
