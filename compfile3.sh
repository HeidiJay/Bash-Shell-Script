#! /bin/bash
# I am attempting to make a file comparison script. Hopefully it works this time around.

echo "CHECKING FILES"

file1="Heidi-Projects/Testing1/file1test"
file2="Heidi-Projects/Testing2/file2test"

if diff $file1=$file2 > /dev/null 2>&1 ;
then
echo "GOOD, file2test IS THERE."
else
echo "OH NO! The files are different.";

fi 
echo "THE END."