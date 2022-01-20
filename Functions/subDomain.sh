#!/bin/bash


# curl "https://crt.sh/?q=$1&output=json" 2>/dev/null | jq | grep common | sort -u | cut -d " " -f 6 | sed 's/^"//' | sed 's/",$//'

curl -sk "https://crt.sh/?q=$1&output=json" | jq -r '.[].common_name,.[].name_value' | sort -u
# this is alternative and better command