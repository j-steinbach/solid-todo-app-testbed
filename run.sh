#!/bin/sh


echo Starting the testbed in $(pwd)

# specify port?
node ./CommunitySolidServer/bin/server.js -- -c ./CommunitySolidServer/config/file.json -f ./css-data/ -p 3000
#
