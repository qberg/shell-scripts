#!/bin/sh

echo "--- Automating Git Add, Commit and Push ---"

echo "Enter the files to be commited seperated by space:"
read -a files

for file in ${files[@]}
do
	git add $file
done

echo "Enter the commit message:"
read msg

git commit -m "$msg"

git push -u origin master

