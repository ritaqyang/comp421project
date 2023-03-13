#!/bin/bash


awk '
 {FS=","}
 {OFS = ","; print $1,$2,$3,$4,$5,$2"),"}' < ~/Desktop/p2/part2files/tickets/loadextratickets.sql >> ticket2.sql