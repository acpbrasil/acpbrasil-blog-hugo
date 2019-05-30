#!/bin/sh

path="./content/pt/blog"
pathImgs="./static/images/blog"
targetFile="index.md"

files=($(find -E . -type f -regex "^$path/[[:digit:]]+.*\.md$"))
for file in ${files[*]}
do

  # Get folder name from file name
  fileName=$(basename "$file")
  dirName=${fileName::${#fileName}-3}
  # Create the target folder
  newDir="$path/$dirName"
  mkdir $newDir

  # Get image name from post's banner property
  bannerProp=`cat $file | grep "banner" | cut -d'=' -f2`
  imgName=`echo $bannerProp | cut -d ' ' -f 2 | tr -d '"'`

  # Move the blog post to the new folder and rename it to index.md
  echo "Moving post to $newDir/$targetFile"
  mv $file "$newDir/$targetFile"

  # Move image to the new post folder
  echo "Moving image $imgName to $newDir"
  mv "$pathImgs/$imgName" $newDir

  echo ""
done

echo "Done"
