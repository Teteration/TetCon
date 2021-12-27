#!/bin/bash


# https://reposhub.com/linux/system-utilities


# cd Functions
touch re1
while read line;
do 
    echo "Testing for : [$line]"

    if curl -I $1/$line 2>/dev/null | grep -E "HTTP\/2 200" 1>/dev/null ;
    then     
        echo "$line status : 200" >> re1
    fi


done < $2

cat re1
rm re1



# a=$'Test\nnnnn\n'
# echo "$a"