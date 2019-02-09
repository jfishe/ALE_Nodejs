#!/usr/bin/env bash
# install npm global packages from a backup file
importFile="npm_global_pkgs.bkp"
list="$(cat "$importFile")"
echo "npm install --global $list"
npm install --global $list
