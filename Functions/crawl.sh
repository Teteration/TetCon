#!/bin/bash


wget --spider -r -nd --max-redirect=30 $1 2>&1 \
  | grep '^--' \
  | awk '{ print $3 }' \
  | grep -E -v '\.('${USER_EXCLUDED_EXTENTIONS}')(\?.*)?$' \
  | grep -E -v '\?(p|replytocom)=' \
  | grep -E -v '\/wp-content\/uploads\/' \
  | grep -E -v '\/feed\/' \
  | grep -E -v '\/category\/' \
  | grep -E -v '\/tag\/' \
  | grep -E -v '\/page\/' \
  | grep -E -v '\/widgets.php$' \
  | grep -E -v '\/wp-json\/' \
  | grep -E -v '\/xmlrpc' \
  | sort -u
#   > ./crw.txt