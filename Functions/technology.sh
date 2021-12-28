#!/bin/bash





echo "Host : $1"
echo ""
ipv4=a$(host -4 $1 | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)") 
# | awk 'BEGIN {FS="\n"; RS=""} {print $1" ,",$2}'
echo "IPv4 :"
echo "$ipv4"
echo ""

ipv6=$(host $1 | egrep -o '([a-f0-9:]+:+)+[a-f0-9]+')
# echo -e " \033[0;107mhj$ipv6\033[0m"

len_ipv6=${#ipv6}

if [ $len_ipv6 == 0 ];
then 
    echo "IPv6 : The domain not bind to any IPv6"
else 
    echo "IPv6 : $ipv6"
fi

a=$'\n'
echo "$a"


curl -H "x-api-key: foXqqwqV8v3EAINvpdYuY5E5QNRHI57A9OVFbkP1" "https://api.wappalyzer.com/v2/lookup/?urls=$1&sets=meta"  2>/dev/null | jq | grep name | cut -d ":" -f 2 | sed 's/,$//' | sed 's/"$//' | sed 's/"//' | awk ' {print;} NR % 2 == 0 { print ""; }' | awk 'BEGIN {FS="\n"; RS=""; OFS=" : "} {print "\033[0;36m" $2,"\033[0m"$1}'