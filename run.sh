#!/bin/bash

git reset --hard HEAD
git pull origin master

mix deps.get

npm install

MIX_ENV=$1 mix compile
MIX_ENV=$1 mix phoenix.server
