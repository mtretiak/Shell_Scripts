#!/bin/bash

#Assignment 3 Q6.1
#Michael Tretiak 

#Name: fodr
#Purpose: script takes a file or directory as an arguement and returns
#         if given arguement is a file or directory (recursively with find)


#finds all directories with full path. If you want just directory
#name remove '; #' below
echo "Directories: "
find ./ -type d; #-exec basename {} \;


#finds all files and lists just names
echo "Files: "
find ./ -type f -exec basename {} \;
