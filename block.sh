#!/bin/bash

# declare list of IP addresses
declare -a BLOCKED_IPS=(
    "162.159.128.86"
)

# iterate over the list to create IP rules
for ip in "${BLOCKED_IPS[@]}"; do
    iptables -A OUTPUT -d "$ip" -j DROP
    echo "Blocked outgoing traffic to $ip"
done

# save the it tables to make them persistent
iptables-save > /usr/sbin/iptables/rules.v4
