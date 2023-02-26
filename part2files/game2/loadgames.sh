#!/bin/bash



echo "
INSERT INTO Games_P2(gname, date, time, aid)
 VALUES" > load_games.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$17" vs."$18" "$19p,p$19p,p$20p,$21"),"}' < ./../original.csv >> load_games.sql

