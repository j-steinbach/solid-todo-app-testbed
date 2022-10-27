#!/bin/sh
# This script installs the CSS and both todo-apps

echo running install script
echo -e "\n\n"

echo installing CommunitySolidServer..
cd CommunitySolidServer || exit
npm ci
cd ..
echo -e "\n\n"

echo installing todo-app-react..
cd ./solid-todo-app-react/ || exit
npm install --legacy-peer-deps
cd ..
echo -e "\n\n"

echo installing todo-app-vue..
cd ./solid-todo-app-vue/ || exit
yarn
cd ..
echo -e "\n\n"

echo finished install!
