sed -i 's/autoindex on;/autoindex off;/g' /etc/nginx/sites-enabled/default
service nginx restart