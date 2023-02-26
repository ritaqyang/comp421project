#!/bin/bash
echo "
INSERT INTO tickets(tid,section,row,seat,listed_price,gname)
 VALUES" > load_tickets.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$1,$12,$13,$14,$15,p$17" vs."$18" "$19p"),"}' < ./../data.csv >> load_tickets.sql