#!/bin/bash



echo "
INSERT INTO Credit_cards(c_num, c_type, cvv, expiration_dm, aid, carholder_name)
 VALUES" > load_cards.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$2, p$1p, $3, p$4p, 12345, p"name"p "),"}' < creditcard10.csv >> load_cards.sql

