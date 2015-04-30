#!/bin/bash

# Construct resolver config from resolv.conf
echo resolver $(awk 'BEGIN{ORS=" "} /nameserver/{print $2}' /etc/resolv.conf | sed "s/ $/;/g") >> /etc/nginx/resolvers.conf

exec nginx;