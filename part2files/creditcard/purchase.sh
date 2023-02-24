#!/bin/bash


awk -v p="'" '
{FS= ","}
{OFS = ","; print "("p$8p,p$1p,p$7p,p"time"p,12345,p"email"p"),"}'  < sold_tickets.csv >> purchases.csv

