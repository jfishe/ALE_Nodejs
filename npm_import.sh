#!/usr/bin/env bash
# install npm global packages from a backup file
echo "Enter the importing filename:"
read importFile
list="$(cat "$importFile")"
echo "npm i -g $list"
npm i -g $list
