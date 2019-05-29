#!/bin/sh

DATE=`date +%Y-%m-%d`
NAME=${1:-"title-of-the-post"}

DIR=$DATE-$NAME
# echo $DIR

FILE=$DIR/index.md
echo "Creating blog post in: $FILE"

hugo new blog/$FILE
