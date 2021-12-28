#!/bin/bash



curl -H "x-api-key: foXqqwqV8v3EAINvpdYuY5E5QNRHI57A9OVFbkP1" "https://api.wappalyzer.com/v2/lookup/?urls=$1&sets=meta"  2>/dev/null | jq | grep name | cut -d ":" -f 2 | sed 's/,$//' | sed 's/"$//' | sed 's/"//' | awk ' {print;} NR % 2 == 0 { print ""; }' | awk 'BEGIN {FS="\n"; RS=""; OFS=" : "} {print "\033[0;36m" $2,"\033[0m"$1}'