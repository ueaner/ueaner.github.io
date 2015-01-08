#!/bin/sh
# github pages: ueaner.github.io
# md-src -> master

gitbook build .
cp -rf _book/* ~/tmp/gitpages-build
cd ~/tmp/gitpages-build
git add .
git commit -m 'pub'
git push origin master
