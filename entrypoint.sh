#!/bin/sh

dos2unix entrypoint.sh 

until nc -z -w 2 mongo 27017 && echo 'mongo is ready for connections' && node artifacts/db-reset.js && npm start; do sleep 2; done
