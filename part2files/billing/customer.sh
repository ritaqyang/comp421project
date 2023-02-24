#!/bin/bash

#Insert email, password into Customers table

echo "INSERT INTO Customers(email,password) VALUES" > load_customer.sql

awk  -v q="'" '
{FS = ","}
{OFS = ","; print "("q$10q,q$11q"),"}' < billing20.csv >> load_customer.sql

