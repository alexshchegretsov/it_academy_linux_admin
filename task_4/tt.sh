#!/bin/sh

if [ $# -ge 2 ]; then echo -e "Wrong input \nPlease use following syntax:\n bash tt.sh [DIR]"
elif [[ $1 == "-h" ]] || [[ $1 == "--help" ]] || [[ -z "$1" ]]; then echo -e "Use following syntax:\n bash tt.sh [DIR]"
elif [ -d $1 ]; then find $1 -type f -printf '%s %p\n' | sort -nr | head -10
else echo "DIRECTORY $1 DOES NOT EXIST"
fi



