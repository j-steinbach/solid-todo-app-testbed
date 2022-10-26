#!/bin/sh
echo Starting the CSS!

cd ./CommunitySolidServer
# specify port?
npm start -- -c ./config/file-no-setup.json -f ../css-data/ -p 3000
