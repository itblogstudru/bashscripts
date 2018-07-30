#!/bin/bash
echo "#################"
echo "#   C_DB_U_P    #"
echo "# author: A.M.I #"
echo "#    ver.0.2    #"
echo "#################"

echo "What you need to do with user and/or db?";
echo "Q|q - create db, W|w - create user,";
echo "Z|z - create db and user";
read answer
	case  "$answer" in		
					Q|q) echo "Enter db:"
						 read mydb
						 echo "Creating database '$mydb'.."
						 mysql -u root -p -e "CREATE DATABASE \`$mydb\`;"
						 ;;
					W|w) echo "Enter user-db:"
						 read mydbusr
						 echo "Enter password:"
						 read password
						 echo "Creating user '$mydbusr'.."
						 mysql -u root -p -e "CREATE USER \`$mydbusr\`@\`localhost\` IDENTIFIED BY '$password';FLUSH PRIVILEGES;"
						 ;;
					Z|z) echo "Enter db:"
						 read mydb
						 echo "Enter user-db:"
						 read mydbusr
						 echo "Enter password:"
						 read password
						 echo "Creating database '$mydb' with user '$mydbusr' ..."
						 mysql -u root -p -e "CREATE DATABASE \`$mydb\`; CREATE USER \`$mydbusr\`@\`localhost\` IDENTIFIED BY '$password'; GRANT ALL PRIVILEGES ON \`$mydb\`.* TO \`$mydbusr\`@\`localhost\`;FLUSH PRIVILEGES;"
						 ;;
					*)	 echo "no!"
	esac
echo "ok!"