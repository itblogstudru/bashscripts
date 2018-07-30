#!/bin/bash
echo "#################"
echo "#     MySQL     #"
echo "# author: A.M.I #"
echo "#    ver.0.1    #"
echo "#################"
echo "Hi!"
while [ "$answer" != "f" ]
do
echo "What you need to do with MySQL?"
echo "C|c - create db and/or user, D|d - delete db and/or user,";
echo "E|e - dump db, I|i - import db,";
echo "f - quit.";
read answer
	case  "$answer" in		
					C|c) sh  ./MySQLC.sh
						 ;;
					D|d) sh  ./MySQLDel.sh
						 ;;
					E|e) sh  ./MySQLDump.sh
						 ;;
					I|i) sh  ./MySQLImport.sh
						 ;;
					f)	 echo "bye!"
						 ;;
					*)	 echo "no!"
						 ;;
	esac
done