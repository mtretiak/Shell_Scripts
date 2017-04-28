#!/bin/bash

#Assignment 3 Q3
#Michael Tretiak

#Name: dircomp

#Purpose: Takes two passed directories (Full path) in and compares number of files
#         and number of directories
#         Returns Dirx > Diry

PASSED1=$1
PASSED2=$2

#checks to see if passed value is a directory
#if it isnt, check and see if the absolute path is
#if that isnt print an error and exit

  if [ ! -d "${PASSED1}" ] ; then
    PASSED1=$(pwd)${PASSED1}
    if [ ! -d "${PASSED1}" ] ; then
      echo "$PASSED1 is not a directory";
      exit 1
    fi
  fi

  if [ ! -d "${PASSED2}" ] ; then
    PASSED2=$(pwd)${PASSED2}
    if [ ! -d "${PASSED2}" ] ; then

      echo "$PASSED2 is not a directory";
      exit 1
    fi
  fi

NUMDir1=$1

NUMFil1=$1

NUMDir2=$1
NUMFil2=$1

#checks if its a directory
if [ -d "${PASSED1}" -a -d "${PASSED2}" ] ; then


    #echo "$PASSED is a directory";

    cd $PASSED1


    NUMDir1="$(ls -l| grep ^d| wc -l)"

    NUMFil1="$(ls -l| grep ^- | wc -l)"

    cd $PASSED2

    NUMDir2="$(ls -l| grep ^d| wc -l)"

    NUMFil2="$(ls -l| grep ^- | wc -l)"

    echo "$NUMDir1 directories and $NUMFil1 files";

    echo "$NUMDir2 directories and $NUMFil2 files";

    #sloppy dir comparison
    if [ "$NUMDir1" -gt "$NUMDir2" ] ; then
      echo "$PASSED1 has more directories than $PASSED2";
    fi
    if [ "$NUMDir2" -gt "$NUMDir1" ] ; then
      echo "$PASSED2 has more directories than $PASSED1";
    fi
    if [ "$NUMDir2" -eq "$NUMDir1" ] ; then
        echo "$PASSED1 has the same number of directories as $PASSED2";
    fi

    #sloppy file compare
    if [ "$NUMFil1" -gt "$NUMFil2" ] ; then
      echo "$PASSED1 has more directories than $PASSED2";
    fi
    if [ "$NUMFil2" -gt "$NUMFil1" ] ; then
      echo "$PASSED2 has more directories than $PASSED1";
    fi
    if [ "$NUMFil1" -eq "$NUMFil2" ] ; then
        echo "$PASSED1 has the same number of directories as $PASSED2";
    fi


    #echo "Number = $number";

  else
      #if not directory return error
    echo "${PASSED} is not valid, please enter a directory!";
    exit 1


fi
