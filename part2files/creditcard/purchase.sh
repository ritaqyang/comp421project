#!/bin/bash


awk -v p="'" '
BEGIN {FS= ","; id = "cff103ca-8087-46bf-a000-5ff55fb2620d"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"11:12"p,5534000727150587,p"tbucham5@shareasale.com"p"),"}}
 ' < sold_tickets.csv >> purchases.sql

 awk -v p="'" '
 BEGIN {FS= ","; id = "fbf733e9-6733-4570-9081-e8b3dd9372a6"}
 { if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"23:55"p,343380634494746,p"gheapea@yellowbook.com"p"),"}}
  ' < sold_tickets.csv >> purchases.sql

 awk -v p="'" '
 BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
 { if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"15:32"p,4625736800046530,p"lcornessn@google.fr"p"),"}}
  '< sold_tickets.csv >> purchases.sql

<<com
awk -v p="'" '
BEGIN {FS= ","; id = "ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3"}
{ if ($8 == id ) {OFS = ","; print "("p$1p,p$8p,p$7p,p"21:43"p"),"}}
 '< sold_tickets.csv >> purchases.sql
com