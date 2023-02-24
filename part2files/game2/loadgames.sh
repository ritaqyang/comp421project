#!/bin/bash



echo "
INSERT INTO Games_P2(country1, country2, date, time, aid)
 VALUES" > load_games.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$1p,p$2p,$3,p$4p,$5"),"}' < game_stadiums20.csv >> load_games.sql

