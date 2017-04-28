#!/bin/bash

#Assignment 3 Q2
#Michael Tretiak 

#Name: dirstat

#Purpose: Takes in directory and returns number of files and
#         diectories in given directory

PASSED=$1
NUMDir=$1
NUMFil=$1

#checks if its a directory
if [ -d "${PASSED}" ] ; then

    #echo "$PASSED is a directory";

    #moves to give directory
    cd $PASSED

    #counts files and diretories by using list command and count new line command
    NUMDir="$(ls -l| grep ^d| wc -l)"

    NUMFil="$(ls -l| grep ^- | wc -l)"

    #output
    echo "$NUMDir directories and $NUMFil files";

else
        #if not directory return error
        echo "${PASSED} is not valid, please enter a directory!";
        exit 1

fi
