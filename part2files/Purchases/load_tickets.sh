#!/bin/bash
echo "
INSERT INTO tickets(tid,section,row,seat,listed_price,gname)
 VALUES" > load_tickets.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$1p,$2,$3,$4,$5,p$9p"),"}' < tickets50.csv >> load_tickets.sql