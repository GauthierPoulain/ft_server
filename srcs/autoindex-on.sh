sed -i 's/autoindex off;/autoindex on;/g' /etc/nginx/sites-enabled/default
service nginx restart