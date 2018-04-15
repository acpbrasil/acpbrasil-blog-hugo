#!/bin/sh

DIR=$(dirname "$0")
UPSTREAM=${1:-origin}

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public $UPSTREAM/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

# TODO add the date to the commit msg
echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

git push origin gh-pages
