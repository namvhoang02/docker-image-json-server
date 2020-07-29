#!/usr/local/bin/dumb-init /bin/sh
set -e

if [ -z $PORT ];
then
  PORT=8888
fi

json-server --host 0.0.0.0 -p $PORT $@
