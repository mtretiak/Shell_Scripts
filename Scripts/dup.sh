#!/bin/bash


#Assignment 3 Q5
#Michael Tretiak 

#Name: dup
#Purpose: Chekcs if directory contains duplicate subdirectories


#creates check sums for all things in the directory
dircsum() {
  if [ -f "$1" ]
  then
    csum=$(md5sum < "$1")
  elif [ -d "$1" ]
  then
    csum=$(
      find "$1" -maxdepth 1 -printf "%P " \( ! -path "$1" \) \
                -exec bash -c "dircsum {}" \; | md5sum )
  fi
  echo "$csum"
  echo "$csum $1" 1>&3
}
export -f dircsum

list=$(dircsum "$1" 3>&1 1>/dev/null)


#Runs through sorted list of checksums and finds duplicates (matching csums)
lastCsum=''
while read csum _ path
do
  #checks if csum are the same and prints message
  if [ "$csum" = "$lastCsum" ]
  then
    echo "duplicate found: $path = $lastPath"
  fi
  #moves pointers forward
  lastCsum=$csum
  lastPath=$path
done < <(sort <<< "$list")
