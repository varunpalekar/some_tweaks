#!/bin/bash -e
#/etc/ppp/ip-up.d/routes
domains_file=/etc/openfortivpn/custom_address
device_name=ppp0
while read domain; do
 addresses=`dig +short $domain`
 for address in $addresses
 do
   /sbin/ip route add $address/32 dev $device_name
 done
done <$domains_file
