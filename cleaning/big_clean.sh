#!/bin/bash
#Lab 0 Clean Script

name=$(mktemp -d goHereXXX)
newname=$(basename "$1" .tgz)
tar xzf "$1" -C "$name"

grep -H -R "DELETE ME!" "$name" | cut -d: -f1 | xargs rm
here=$(pwd)
cd "$name"|| exit

tar -czf "$here"/cleaned_"$newname".tgz "$newname" 



