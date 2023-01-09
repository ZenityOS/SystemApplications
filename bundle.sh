#!/bin/sh

rm -rf Packages
mkdir -p Packages
cp -r */deb/build.deb ./Packages/"{$RANDOM}.deb"
git add -A
git commit -m "script: bundle packages"
git push
