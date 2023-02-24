#!/bin/bash

#get the first 20  rows from billing_customer.csv where the province is not blank

 awk '
 BEGIN {FS=",";count=0}
 {if (count < 21 && $5 != "") {print $0; count+=1}}
 ' < billing_customer.csv > billing20.csv





