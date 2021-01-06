cd /var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
printf "extracting phpmyadmin ... \n"
tar xvf phpMyAdmin-5.0.4-all-languages.tar.gz > /dev/null
mkdir phpmyadmin
mv ./phpMyAdmin-5.0.4-all-languages/* ./phpmyadmin/
rm -rf phpMyAdmin-5.0.4-all-languages
rm phpMyAdmin-5.0.4-all-languages.tar.gz

cd phpmyadmin

mkdir tmp
chmod 777 tmp

cp /srcs/config.inc.php .