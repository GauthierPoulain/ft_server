./setup_phpymadmin.sh
./setup_wordpress.sh

service mysql start


mysql -u root -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'bite';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"
mysql -u root -e "CREATE DATABASE wordpress"

openssl req -x509 -nodes -new -sha256 -days 1024 -newkey rsa:2048 -keyout RootCA.key -out RootCA.pem -subj "/C=US/CN=Example-Root-CA"
openssl x509 -outform pem -in RootCA.pem -out RootCA.crt

service nginx start

./autoindex-on.sh

service php7.3-fpm start

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log
