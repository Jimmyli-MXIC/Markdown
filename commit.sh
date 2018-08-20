#! /bin/bash
echo "------Begin------"
git add $1
git commit --all -m $2
git push origin master
echo "------End--------"