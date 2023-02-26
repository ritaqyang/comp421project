#!/bin/bash

#get the first 20  rows from billing_customer.csv where the province is not blank

 awk '
 BEGIN {FS=",";count=0}
 {if (count < 101 && $24 != "" && $30 != "" && $32 != "") {print $0; count+=1}}
 ' < alldata.csv > original.csv






