#!/usr/bin/env bash
# export npm global packages to a backup file
list="$(npm list --global --parseable --depth=0 | sed '1d')"
exportFile="npm_global_pkgs.bkp"
while [ -f "$exportFile" ]; do
  echo "$exportFile exists, try another file name?"
  read exportFile
done
newlist=""
for i in $list; do
  newlist+="${i##*/} "
done
echo "$newlist" > "$exportFile"
echo "Packages exported to "$exportFile":
$newlist"
