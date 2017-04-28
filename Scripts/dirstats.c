#include <stdio.h>
#include <dirent.h>

int main (void){
      //open dir if not empty
      if (opendir(dir[1]) != NULL){
              DIR * directory = opendir(".");
              //counters for files and dir
              int fileCount = 0;
              int dirCount = 0;

              //read directory while not empty
              while ((item = readdir(directory)) != NULL){
                      //if item is dir increase count by one
                      if (item->d_type == DT_DIR){
                              dirCount++;
                      }
                      else //if item is file increase count by one
                        if (item->d_type == DT_REG){
                              fileCount++;
                            }
              }
              //print stats
              printf("%d Directories:", dirCount);
              printf("%d Files: \n", fileCount);
              //close reader
              closedir(directory);
      }
      // given directory is not valid
      else {
              printf("\nMay not be a valid directory\n\n");
      }
}
