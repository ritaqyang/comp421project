#!/bin/bash
#Insert (aid, address, address2, city, province, country, postal_code, phone, name)
#Billing_addresses table

echo "
INSERT INTO Billing_addresses(aid, address, address2, city, province, country, postal_code, phone, name,email)
 VALUES" > load_billing.sql
awk -v p="'" '
{FS= ","}
{OFS = ","; print "("$26,p$27p,p$28p,p$29p,p$30p,p$31p,p$32p,p$33p,p$6p,p$7p"),"}' < original.csv >> load_billing.sql

