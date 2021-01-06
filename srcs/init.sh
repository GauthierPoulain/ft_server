./phpymadmininstall.sh

service mysql start
service php7.3-fpm start
service nginx start

cp ./default /etc/nginx/sites-enabled/default

mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('bite');"

service mysql restart
service php7.3-fpm restart
service nginx restart

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log