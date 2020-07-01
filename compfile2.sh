#! /bin/bash
# Practicing scripts for file comparisons
# Experimenting different ways to compare files and seeing if scripts work.

cd Heidi-Projects/RPM-Painting

echo "Comparing both RPM-Painting files"

wget git@github.com:HeidiJay/RPM-Painting.git

if diff RPM-Painting
then
echo "This File Is Safe."
else
echo "This File May Be Corrupted!"
fi 
echo "End!"