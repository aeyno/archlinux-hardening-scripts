#!/bin/bash

source 'error_handling.sh'

echo -n "Using random MAC addresses..."
cat << EOF > /etc/systemd/network/00-default.link && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error
[Match]
MACAddress=original MAC

[Link]
MACAddress=random
NamePolicy=kernel database onboard slot path

EOF

exit 0
