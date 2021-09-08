#!/bin/bash

ls -l  $1 |grep ^-  | awk '{print $9 "," $5 ","  $7 "_" $6 "_" $8}' > files.csv

mysql -uroot -pmy-secret-pw test -e "LOAD DATA INFILE './files.csv' INTO TABLE files FIELDS TERMINATED BY ',' LINES TERMINATED BY '/n'"

