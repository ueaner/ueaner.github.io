#!/bin/sh
# github pages: ueaner.github.io
# md-src -> master

gitbook build .
cp -rf _book/* ~/tmp/gitpages-build
cd ~/tmp/gitpages-build
git add .
git ci -m 'pub'
git push origin master
