#!/bin/bash

db2 -t -v < createp2.sql 2>&1 | tee createtbl.log
