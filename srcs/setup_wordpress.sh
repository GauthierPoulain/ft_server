cd /var/www
wget https://fr.wordpress.org/latest-fr_FR.tar.gz
printf "extracting wordpress ... \n"
tar xvf latest-fr_FR.tar.gz > /dev/null
rm latest-fr_FR.tar.gz

cd wordpress

sed -i 's/MYSQL_USER/'$MYSQL_USER'/g' /srcs/wp-config.php
sed -i 's/MYSQL_PASSWORD/'$MYSQL_PASSWORD'/g' /srcs/wp-config.php

cp /srcs/wp-config.php .