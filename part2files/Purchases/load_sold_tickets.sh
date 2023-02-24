#!/bin/bash

echo "
INSERT INTO Sold_tickets(tid,sold_price,sold_date)
 VALUES" >> load_sold_tickets.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$1p,$6,p$7p"),"}' < sold_tickets.csv >> load_sold_tickets.sql

<<comment
echo "
INSERT INTO Sold_tickets(tid,section,row,seat,listed_price,sold_price,sold_date,gname)
 VALUES" > load_sold_tickets.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$1p,$2,$3,$4,$5,$6,p$7p,p$9p"),"}' < sold_tickets.csv >> load_sold_tickets.sql
comment