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
# hugo
hugo --gc

echo "Creating CNAME file for gh-pages"
echo "www.acpbrasil.com" >> public/CNAME

echo "Updating gh-pages branch"
DATE=`date '+%Y-%m-%d %H:%M:%S'`
cd public && git add --all && git commit -m "$DATE publish to gh-pages (script)"

git push origin gh-pages
