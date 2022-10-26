#!/bin/sh

echo running install script
echo -e "\n\n"

echo installing CommunitySolidServer..
cd CommunitySolidServer
npm ci
cd ..
echo -e "\n\n"

echo installing todo-app-react..
cd ./solid-todo-app-react/
npm install --legacy-peer-deps
cd ..
echo -e "\n\n"

echo installing todo-app-vue..
cd ./solid-todo-app-vue/
yarn
cd ..
echo -e "\n\n"

echo finished install!
