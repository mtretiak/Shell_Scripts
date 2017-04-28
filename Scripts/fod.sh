#!/bin/bash
#Assignment 3 Q1
#Michael Tretiak 

#Name: fod
#Purpose: script takes a file or directory as an arguement and returns
#         if given arguement is a file or directory

PASSED=$1

#takes passed in value and returns echo
if [ -d "${PASSED}" ] ; then
    echo "$PASSED is a directory";
else
    if [ -f "${PASSED}" ]; then
        echo "${PASSED} is a file";
    else
        echo "${PASSED} is not valid";
        exit 1
    fi
fi
