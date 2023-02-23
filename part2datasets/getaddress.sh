#!/bin/bash

#get the first 20  rows from billing_customer.csv where the province is not blank
awk -F, '$5!=""' billing_customer.csv > valid.csv
head -20 valid.csv > billing20.csv
rm valid.csv

#Insert statement for billing address

