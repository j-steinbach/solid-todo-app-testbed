#!/bin/sh
echo Starting the CSS!
cd ./CommunitySolidServer || exit
# specify port?
npm start -- -c ./config/file-no-setup.json -f ../css-data/ -p 3000
cd ..
