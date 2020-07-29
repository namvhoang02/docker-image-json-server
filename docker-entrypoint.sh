#!/bin/sh

if [ -z $PORT ];
then
  PORT=8888
fi

args="$@ -p $PORT"

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi

json-server --host 0.0.0.0 $args
