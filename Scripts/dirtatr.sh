#!/bin/bash

#Assignment 3 Q6.2
#Michael Tretiak 

#Name: dirstatr

#Purpose: Takes in directory and returns number of files and
#         diectories in given directory (Does this recursively with find)

#counts number of directories,subdirectories and itself in current directory.
echo "Number of Directories and Subdirectories: "
find ./ -type d | wc -l

#counts number of files in directory and in subdirectories
echo "Number of Files and Files in Subdirectories: "
find ./ -type f | wc -l
