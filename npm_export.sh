#!/usr/bin/env bash
# export npm global packages to a backup file
exportFile="npm_global_pkgs.bkp"

list="$(npm list --global --parseable --depth=0 | sed '1d' |
  awk '{gsub(/\/.*\//,"",$1); print}' )"
echo "$list" > "$exportFile"
echo "Packages exported to "$exportFile":
$list"
