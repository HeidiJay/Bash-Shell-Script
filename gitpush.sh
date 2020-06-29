#! /bin/bash
# Automating git commands commit and push

cd ~/bin/hello.sh

git  status

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

git push origin master

read

exit