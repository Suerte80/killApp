#!/bin/bash

if [ $# -eq 0 ]
then
    exit 1
fi

for i in "$*"
do
    pid=`pgrep $i` && kill $pid
done
