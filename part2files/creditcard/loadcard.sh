#!/bin/bash



echo "
INSERT INTO Credit_cards(c_num, c_type, cvv, expiration_dm, aid, carholder_name)
 VALUES" > load_cards.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$5, p$9p, $10, p$11p, $26, p$6p "),"}' < ./../original.csv >> load_cards.sql

