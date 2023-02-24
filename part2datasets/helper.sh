#!/bin/bash

#get the first 20  rows from billing_customer.csv where the province is not blank
>>comment
awk -F, '$5!=""' billing_customer.csv > valid.csv
head -20 valid.csv > billing20.csv
rm valid.csv
comment


#Insert (aid, address, address2, city, province, country, postal_code, phone, name)
#Billing_addresses table

echo "
INSERT INTO Billing_addresses(aid, address, address2, city, province, country, postal_code, phone, name,email)
 VALUES" >> loaddataP2.sql
awk '
{FS= ","}
{OFS = ","; print "("$1,$2,$3,$4,$5,$6,$7,$8,$9,$10"),"}' < billing20.csv >> loaddataP2.sql


#