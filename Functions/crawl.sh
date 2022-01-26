
# it crawl the site and by default ignore some path 
wget --spider -r -nd --max-redirect=30 $1 2>&1 \
  | grep '^--' \
  | awk '{ print $3 }' \
  | grep -E -v '\.('$2')(\?.*)?$' \
  | sort -u
#   > ./crw.txt