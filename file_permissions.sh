#!/bin/bash

source 'error_handling.sh'

echo -n "Setting mask to 077..."
sed -i 's/umask 022/umask 077/' /etc/profile && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error


echo -n "Changing files permissions to 700..."
chmod -R 700 /root /home/* && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error

exit 0
