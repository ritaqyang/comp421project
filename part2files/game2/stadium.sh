#!/bin/bash



echo "
INSERT INTO Stadium_addresses(aid, address, city, province, country)
 VALUES" > load_stadiums.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$21,p$22p,p$23p,p$24p,p$25p"),"}' < ./../original.csv >> load_stadiums.sql

