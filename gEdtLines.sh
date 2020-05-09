#!/bin/bash

## gEdtLines.sh - Simple bash script to read and manipulate lines from a file, while able to     ##
##              - show what is being read, the final output, and save the result to a log file.  ##
##              - (c)gfragkos 2012                                                               ##
##                                                                                               ##
## You may modify, reuse and distribute the code freely as long as it is referenced back         ##
## to the author using the following line: ..based on gEdtLines.sh by @drgfragkos                ##
##                                                                                               ##

while read line; do
    #sleep 0.10
    ((counter=$counter+1))
    
    echo -ne "$line\t\t"              #print what is read. use "windowed" mode for more compact output
    
    output=$output",'"$line"'"        #manipulate the input and build the new output

done < "input.txt"                    #read each line from file

echo $output | tee gEdtLines_log.txt  #echo the output and make a log of it too

