docker build . -t build
docker run -ti --rm -p 8080:80 --name test build