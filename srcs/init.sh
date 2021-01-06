./phpymadmininstall.sh

cp ./default /etc/nginx/sites-enabled/default

service mysql start
service php7.3-fpm start
service nginx start

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log