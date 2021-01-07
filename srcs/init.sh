./setup_phpymadmin.sh
./setup_wordpress.sh

service mysql start

cp ./default /etc/nginx/sites-enabled/default

mysql -u root -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'bite';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"
mysql -u root -e "CREATE DATABASE wordpress"


service php7.3-fpm start
service nginx start

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log