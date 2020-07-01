#! /bin/bash
# Practicing scripts for file comparisons
# Experimenting different ways to compare files and seeing if scripts work.

echo "Comparing both RPM-Painting files"

if cmp -s Heidi-Projects/RPM-Painting wget git@github.com:HeidiJay/RPM-Painting.git
then
echo "This File Is Safe."
else
echo "This File May Be Corrupted!"
fi 
echo "End!"