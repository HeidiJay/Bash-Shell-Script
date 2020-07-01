#!/bin/bash
# Copy of an ssh example file, full of Bash Automations for seting up wordpress environment.
# Copying it and breaking it down to understand what is happing.

echo "CHECKING HOSTS FILE" # message
if [ -n "$(grep "wordpress.local" /etc/hosts)" ]; # 
    then
		echo "wordpress.local ALREADY EXISTS" # message
	else
		echo "ADDING wordpress.local TO HOSTS FILE"; # message

		sudo -- sh -c -e "echo '127.0.0.1	wordpress.local' >> /etc/hosts"; # "sudo sh" means all commands in that shell are executed as root
		# "--" marks the end of options and thus the beginning of arguments.
        # "-c -e" means execute command
        if [ -n "$(grep "wordpress.local" /etc/hosts)" ]; #  
        then
			echo "wordpress.local SUCCESSFULLY ADDED TO HOSTS FILE"; # message
		else
			echo "FAILED TO ADD wordpress.local. TRY AGAIN"; # message
		fi # end
	fi # end