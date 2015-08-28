#!/usr/bin/env bash
set -o errexit #abort if any command fails

hugo

cp CNAME public

git add .
git commit -a -m'deploy'
git push

git subtree push --prefix=public git@github.com:mose/mobla.git gh-pages
