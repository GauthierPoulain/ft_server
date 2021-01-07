docker build . -t serverimg
docker run -ti --rm -p 80:80 -p 443:443 --name server --env MYSQL_USER=salut serverimg