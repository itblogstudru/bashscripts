#!/bin/bash
echo "#################"
echo "#   Del_DB_U    #"
echo "# author: A.M.I #"
echo "#    ver.0.2    #"
echo "#################"
echo "What you need to do with user and/or db?";
echo "P|p - delete db, O|o - delete user,";
echo "X|x - delete db and user";
read answer
	case  "$answer" in
					P|p) echo "Enter db:"
						 read mydb
						 echo "Deleting database '$mydb'.."
						 mysql -u root -p -e "DROP DATABASE \`$mydb\`;"
						 ;;
					O|o) echo "Enter user-db:"
						 read mydbusr
						 echo "Deleting user '$mydbusr'.."
						 mysql -u root -p -e "DROP USER \`$mydbusr\`@\`localhost\`;"
						;;
					X|x) echo "Enter db:"
						 read mydb
						 echo "Enter user-db:"
						 read mydbusr
						 echo "Deleting database '$mydb' with user '$mydbusr' ..."
						 mysql -u root -p -e "DROP DATABASE \`$mydb\`; DROP USER \`$mydbusr\`@\`localhost\`;"
						;;
					*)	 echo "no!"
	esac	
echo "ok!"