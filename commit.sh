#! /bin/bash
echo "------Begin------"
git add $1
git commit --all -m "$2"
echo "------Push-------"
expect push.exp
echo "------End--------"
