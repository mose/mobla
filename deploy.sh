#!/usr/bin/env bash
set -o errexit #abort if any command fails

git subtree push --prefix=public git@github.com:mose/mobla.git gh-pages
