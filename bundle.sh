#!/bin/bash
bash packages.sh

rm -rf Packages
mkdir -p Packages

for t in ${packages[@]}; do
	cp -r $t/deb/build.deb Packages/$(t).deb
done

git add -A
git commit -m "script: bundle packages"
git push
