#!/bin/bash

cat game_stadiums.csv

awk '
 BEGIN {FS=",";count=0}
 {if (count < 21 && $8 != "") {print $0; count+=1}}
 ' < game_stadiums.csv > game_stadiums20.csv
