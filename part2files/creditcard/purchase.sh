#!/bin/bash



echo "
INSERT INTO Purchases(tid, transaction_id, transaction_date, transaction_time, c_num, email)
 VALUES" > load_transactions.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$1, p$2p, p$3p, p$4p, $5, p$7p "),"}' < ./../data.csv >> load_transactions.sql

