#!/bin/sh

DIR=$(dirname "$0")
UPSTREAM=${1:-master}

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

git push origin $UPSTREAM
