#!/bin/sh

# Usage: ./create_post.sh Titulo do post

DATE=`date +%Y-%m-%d`
NAME=${@:-"title-of-the-post"}

# convert to lowercase and replace spaces by dash
# NAME=$(sed -e 's/\(.*\)/\L\1/' -e 's/ /-/g' <<< $NAME)
NAME=`echo $NAME | tr "[:upper:]" "[:lower:]" | tr " " "-"`

# TODO warn when name exceeds n characters

DIR=$DATE-$NAME
# echo $DIR

FILE=$DIR/index.md
echo "Creating blog post in: $FILE"

hugo new blog/$FILE
