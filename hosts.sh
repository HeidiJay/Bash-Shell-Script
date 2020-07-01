#!/bin/bash
# Copy of an ssh example file, full of Bash Automations for seting up wordpress environment.
# Copying it and breaking it down to understand what is happing.

echo "CHECKING HOSTS FILE" # message
if [ -n "$(grep "wordpress.local" /etc/hosts)" ]; # "$grep" means reach inside and search for patterns in files
    # "-n" means show matching line number.
    # reach inside wordpress.local and /ect/hosts and search for patterens and show matching number lines
    # Comparing files to see if wordpress exists on localhost.
    then
		echo "wordpress.local ALREADY EXISTS" # message
	else
		echo "ADDING wordpress.local TO HOSTS FILE"; # message

		sudo -- sh -c -e "echo '127.0.0.1	wordpress.local' >> /etc/hosts"; # "sudo sh" means all commands in that shell are executed as root
		# "--" marks the end of options and thus the beginning of arguments.
        # "-c" means read commands from the following string and assign any arguments to the positional parameters
        # "-e" means execute command
        # "sudo -- sh -c -e" means As root user, read commands in string and assign any arguments to the parameters and excute those commands
        # I believe this will this will install the files from wordpress.local into /ect/hosts to add wordpress localhost. 
        if [ -n "$(grep "wordpress.local" /etc/hosts)" ]; #  # "$grep" means reach inside and search for patterns in files
         # "-n" means show matching line number.
         # reach inside wordpress.local and /ect/hosts and search for patterens and show matching number lines
         # Comparing files again to see if now wordpress exists on localhost.
        then
			echo "wordpress.local SUCCESSFULLY ADDED TO HOSTS FILE"; # message
		else
			echo "FAILED TO ADD wordpress.local. TRY AGAIN"; # message
		fi # end
	fi # end