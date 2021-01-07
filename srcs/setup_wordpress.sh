cd /var/www
wget https://fr.wordpress.org/latest-fr_FR.tar.gz
printf "extracting wordpress ... \n"
tar xvf latest-fr_FR.tar.gz > /dev/null
rm latest-fr_FR.tar.gz

cd wordpress

cp /srcs/wp-config.php .