#!/bin/bash

input="";
echo -e "Give a string that you are looking for from files in this dir and all subdirs\n";

##Read from commandline and put in input
read input;

echo -e "\nThese are the files:";

##i=incase-sensitive -l=GivesTheFile -n=LineNumber
find . -type f -exec fgrep -lin $input {} \;



##Fails
<<'multilineComment'
arg1="";
echo "To look for directory-names, call this program with argument: --dirs";
if [[ $# == 1 ]]; then
	arg1=$1;
	find . -type d -exec fgrep -l {} \;
fi;
multilineComment

##Sources
#https://stackoverflow.com/questions/16956810/how-to-find-all-files-containing-specific-text-string-on-linux

