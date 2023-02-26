#!/bin/bash

#Insert email, password into Customers table

echo "INSERT INTO Customers(email,password) VALUES" > load_customer.sql

awk  -v q="'" '
{FS = ","}
{OFS = ","; print "("q$7q,q$8q"),"}' < original.csv >> load_customer.sql

