#!/bin/bash
#Insert (aid, address, address2, city, province, country, postal_code, phone, name)
#Billing_addresses table

echo "
INSERT INTO Billing_addresses(aid, address, address2, city, province, country, postal_code, phone, name,email)
 VALUES" >> load_billing.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$1,p$2p,p$3p,p$4p,p$5p,p$6p,p$7p,p$8p,p$9p,p$10p"),"}' < billing20.csv >> load_billing.sql

