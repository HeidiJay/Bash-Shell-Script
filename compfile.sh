#! /bin/bash
# Comparing files for coruption
# Under construction - Create WordPress site for this - Make sure I understand everything going on here.
cd public_html/ # Need to create new WordPress with public_html. Old Hosting expired. 

echo "Comparing both htaccess files."

wget http:// # Add the new location here when finished making it.

if diff .htaccess cleanwphtaccess >/dev/null ; # dev/null is the trash file
then
echo "This File Is Safe."
else
echo "This File May Be Corrupted!  Renaming It Now!"  && mv .htaccess .htaccess.corrupted  # Look up where .corrupted is at or how I create it.
fi 
mv cleanwphtaccess .htaccess # The file is being replaced here