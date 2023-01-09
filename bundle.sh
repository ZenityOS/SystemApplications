#!/bin/sh

mkdir -p Packages
cp -r */deb/build.deb /Packages/$RAND.deb
git add -A
git commit -m "script: bundle packages"
git push
