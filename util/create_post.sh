#!/bin/sh

DATE=`date +%Y-%m-%d`
NAME=${@:-"title-of-the-post"}
NAME=$(sed -e 's/\(.*\)/\L\1/' -e 's/ /-/g' <<< $NAME) # convert to lowercase and replace spaces by dash

# TODO warn when name exceeds n characters

DIR=$DATE-$NAME
# echo $DIR

FILE=$DIR/index.md
echo "Creating blog post in: $FILE"

hugo new blog/$FILE
