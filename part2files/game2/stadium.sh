#!/bin/bash



echo "
INSERT INTO Stadium_addresses(aid, address, city, province, country)
 VALUES" > load_stadiums.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$5,p$6p,p$7p,p$8p,p$9p"),"}' < game_stadiums20.csv >> load_stadiums.sql

