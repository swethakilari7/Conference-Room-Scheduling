#!/bin/sh
filename='room.txt'
ppl=$1
floor=$2
slot=$3
while IFS=, read -r filename pm
do
if [[ "$filename" == *"$ppl"* && "$filename" == *"$floor"* && "$filename" == *"$slot"* ]]; then
        echo "Conference Room No:$pm"
    fi
done < "$filename"
