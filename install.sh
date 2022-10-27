#!/bin/sh
# This script installs the CSS and both todo-apps

echo running install script
echo -e "\n\n"

echo installing CommunitySolidServer..
cd CommunitySolidServer || exit
npm ci
cd ..
echo -e "\n\n"

echo finished install!
