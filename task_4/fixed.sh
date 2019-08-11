#!/bin/sh

# simple script to detect is file regular or not
# it contains a lot typical Bash errors. Please fix it. Send fixed script itself, and result output for two cases below.
# ./fixme.sh /etc/
# ./fixme.sh /etc/passwd

filename=$1

if [ -f $filename ]; then
    echo 'regular file detected'
else
    echo "not regular file"
fi
