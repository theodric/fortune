#!/bin/bash
#theodric 2017-04-24
#yomama
[[ $@ ]] || {
printf "\nTakes a text file with blocks of text separated by whole blank lines and turns it into a %-delimited fortune file and a corresponding dat file.\n"
printf "\nUsage: $0 inputfile outputfile\n";
printf "\nExample:\n "
printf "$0 brc.txt bobross \n";
printf "Output: bobross bobross.dat \n";
printf "Usage: fortune /path/to/bobross\n\n";
exit 1; }

cat $1 | perl -p -e 's/^\n/%/g' | sed 's/^%/%\n/g' > $2
strfile $2 $2.dat
