#!/bin/bash



echo "
INSERT INTO Games_P2(gname, date, time, aid)
 VALUES" > load_games.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$1" vs."$2" "$3p,p$3p,p$4p,$5"),"}' < game_stadiums20.csv >> load_games.sql

