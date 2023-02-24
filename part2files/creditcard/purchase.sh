#!/bin/bash



awk -v p="'" '
BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"21:43"p,4625736800046530,p"apobjay2l@arizona.edu"p"),"}}
 '< sold_tickets.csv >> purchases.sql

<<com
awk -v p="'" '
BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"21:43"p"),"}}
 '< sold_tickets.csv >> purchases.sql
com