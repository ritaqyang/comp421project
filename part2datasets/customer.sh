#!/bin/bash

#Insert email, password into Customers table
echo "CONNECT TO cs421;" >> loaddataP2.sql
echo "INSERT INTO Customers(email,password) VALUES" >> loaddataP2.sql

awk  -v q="'" '
{FS = ","}
{OFS = ","; print "("q$10q,q$11q"),"}' < billing20.csv >> loaddataP2.sql

