#!/bin/bash


#Assignment 3 Q4
#Michael Tretiak

#Name: contains

#Purpose: Takes in two directories and compares their relationship
#         Does d1 contain d2, or d2 contain d1.

#copies of input
DIR1=$1
DIR12=$1
DIR13=$1
DIR2=$2
DIR22=$2
DIR23=$2

#variables
PD1=$0
PD2=$0
PDM=$0

DIR1=$(pwd)${DIR1} #gets path/DIR1

cd $DIR1

DIR2=$(pwd)${DIR2}   #gets path/DIR2

#echo "$DIR1"

#if diretories

if [ -d "${DIR1}" -a -d "${DIR2}" ] ; then


  cd $DIR1 #move to directory

  PD1=$(pwd)

  DIR2=$(pwd)

  cd $DIR2 #move to directory two



  PD2=$(pwd)${DIR22}  #get path to dir 2


  PDM=${PD1}${DIR22} #path to compare

  #if d1 contains d2
  if [ "$PD2" = "$PDM" ] ; then
      echo "$PD1 contains $PD2";
  fi

else

  #might be the situtation where directories were entered in reverse
  DIR23=$(pwd)${DIR23}   #gets path/DIR2

  cd $DIR23

  DIR13=$(pwd)${DIR13} #gets path/DIR1

  if [ -d "${DIR13}" -a -d "${DIR23}" ] ; then

      cd $DIR23

      PD23=$(pwd)

      DIR13=$(pwd)

      cd $DIR13

      PD13=$(pwd)${DIR12}


      PDM=${PD23}${DIR12}

      #if d1 contains d2
      if [ "$PD13" = "$PDM" ] ; then
          echo "$PD23 contains $PD13";
      fi

  fi

#if both not paths or paths but no realtion print error

    echo "No relation. May not be directories.";
fi
