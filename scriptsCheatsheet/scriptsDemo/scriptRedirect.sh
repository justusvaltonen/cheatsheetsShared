#!/bin/bash

##Puts the content of inputfile in to a variable called lia and echoes all lines
while IFS= read -r muuttuja; do echo $muuttuja >> outputfile; done < inputfile
