#!/bin/bash -e
domains_file=/etc/openfortivpn/custom_address
device_name=ppp0

function valid_ip()
{
    local  ip=$1
    local  stat=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 \
            && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        stat=$?
    fi
    return $stat
}

while read domain; do
 addresses=`dig +short $domain`
 for address in $addresses
 do
   if valid_ip $address; then
   	/sbin/ip route add $address/32 dev $device_name | true
   fi
 done
done <$domains_file

