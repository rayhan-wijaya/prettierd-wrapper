#!/bin/bash

hash prettierd 2>/dev/null || {
    echo >&2 "prettierd could not be found; please install..."
    exit 1
}

if [ "$1" = "" ]
then
    echo "please provide a file..."
    exit 1
fi

res=$(cat $1 | prettierd $1)

if [ "$?" = "0" ]
then
    echo $res > $1
fi
