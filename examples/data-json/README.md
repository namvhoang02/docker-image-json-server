docker run -d -p 8888:8888 -v $(pwd)/data.json:/data/db.json particle4dev/json-server:node-12.10.0-jsonserver-0.16.0 --watch db.json

OR

docker run -d -p 80:80 -e PORT=80 -v $(pwd)/data.json:/data/db.json particle4dev/json-server:node-12.10.0-jsonserver-0.16.0

curl http://localhost:8888/posts
