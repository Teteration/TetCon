#!/bin/bash



curl "https://crt.sh/?q=$1&output=json" | jq | grep common | sort -u | cut -d " " -f 6 | sed 's/^"//' | sed 's/",$//'