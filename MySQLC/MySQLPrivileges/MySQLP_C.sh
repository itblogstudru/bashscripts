#!/bin/bash
echo "#################"
echo "#   Privileges  #"
echo "# author: A.M.I #"
echo "#    ver.0.1    #"
echo "#################"
while [ "$answer" != "f" ]
do
echo "What you need to do with privileges?";
echo "Q|q - setup all privileges to DB";
echo "W|w - setup read-only to DB";
echo "Z|z - setup all privileges to all DBs";
echo "f - quit.";
read answer
	case  "$answer" in		
					Q|q) echo "Enter db:"
						 read mydb
						 echo "Enter user-db:"
						 read mydbusr
						 echo "Enter user-db-password:"
						 read password
						 echo "Setup privileges user: $mydbusr to database: $mydb.."
						 mysql -u root -p -e "grant all privileges on \`$mydb\`.* to \`$mydbusr\`@\`localhost\` identified by '$password';FLUSH PRIVILEGES;"
						 ;;
					W|w) echo "Enter db:"
						 read mydb
						 echo "Enter user-db:"
						 read mydbusr
						 echo "Enter user-db-password:"
						 read password
						 echo "Setup privileges read-only user: $mydbusr to database: $mydb.."
						 mysql -u root -p -e "grant select on \`$mydb\`.* to \`$mydbusr\`@\`localhost\` identified by '$password';FLUSH PRIVILEGES;"
						 ;;
					Z|z) echo "Enter user-db:"
						 read mydbusr
						 echo "Enter user-db-password:"
						 read password
						 echo "Setup privileges user: $mydbusr to all.."
						 mysql -u root -p -e "grant all privileges on *.* to \`$mydbusr\`@\`localhost\` identified by '$password';FLUSH PRIVILEGES;"
						 ;;
					*)	 echo "no!"
						;;
					f)	 echo "bye!"
						 ;;
	esac
done