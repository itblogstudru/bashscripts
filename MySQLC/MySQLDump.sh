#!/bin/bash
echo "#################"
echo "# DumpDB_mysql  #"
echo "# author: A.M.I #"
echo "#    ver.0.1    #"
echo "#################"
echo "Enter db:"
read mydb
echo "Enter ussrdb:"
read ussrdb
D=$(date  +%Y-%m-%d)
echo "Dumping database "$mydb" in "./$mydb_$D.sql"..."
mysqldump -u $ussrdb -p $mydb > ./$D_$mydb.sql
echo "ok!"
