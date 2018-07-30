#!/bin/bash
echo "#################"
echo "#  MySQL_Import #"
echo "# author: A.M.I #"
echo "#    ver.0.1    #"
echo "#################"
echo "Enter where-db1:"
read mydb
echo "Enter whence-db2:"
read mydbb
echo "Enter user-db:"
read usdb
echo "Importing database "$mydb" from "$mydbb"..."
mysql -u $usdb -p $mydb < $mydbb
echo "ok!"
