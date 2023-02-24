#!/bin/bash




awk -v p="'" '
BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"21:43"p,374283141546218,p"fbloore0@surveymonkey.com"p"),"}}
 '< sold_tickets.csv >> purchases.sql



<<com
awk -v p="'" '
BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"21:43"p"),"}}
 '< sold_tickets.csv >> purchases.sql
com