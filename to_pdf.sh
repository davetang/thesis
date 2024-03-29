#!/bin/bash

#usage function
usage(){
   echo "Uasge: $0 <file.tex>"
   exit 1
}

#remove old files
./clean.sh

#check for input parameter
[[ $# -eq 0 ]] && usage

#check file extension of input
if [ ${1: -4} != ".tex" ]
   then usage
fi

file=`basename $1 .tex`

latex $file
makeglossaries $file
bibtex $file
latex $file
pdflatex $file
pdflatex $file

./clean.sh
