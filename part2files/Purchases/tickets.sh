#!/bin/bash

awk '
 BEGIN {FS=",";count=0}
 {if (count < 51 && $5 >= $6 "") {print $0; count+=1}}
 ' < tickets_transaction.csv > tickets50.csv
