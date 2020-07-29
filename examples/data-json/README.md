docker run -d -p 8888:8888 -v /home/ubuntu/json-server/data.json:/data/db.json particle4dev/json-server:node-12.10.0-jsonserver-0.16.0

docker run -it -p 8888:8888 -v /home/ubuntu/json-server/data.json:/data/db.json --entrypoint /bin/sh particle4dev/json-server:node-12.10.0-jsonserver-0.16.0

json-server --watch db.json --port 8888 --host 0.0.0.0

docker rm $(docker ps -a -q)


docker exec -it 6d0eb1748ef5 /bin/sh

apk add curl

curl http://localhost:8888/posts


### nginx

docker run --name mynginx1 -p 80:80 -d nginx
