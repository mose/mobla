#!/usr/bin/env bash
set -o errexit #abort if any command fails

hugo

git rm -r public/.gitmodules public/themes
cp CNAME public

git add .
git commit -a -m'deploy'
git push

git subtree push --prefix=public git@github.com:mose/mobla.git gh-pages
