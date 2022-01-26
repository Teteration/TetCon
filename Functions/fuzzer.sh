#!/bin/bash
Green='\033[0;32m'
White='\033[0;37m'

if [ $1 == '-f' ];
then
    touch re1
    while read line;
    do 
        echo "Testing for : $line"

        if curl -I -L $2/$line 2>/dev/null | grep -E "HTTP\/2 200|HTTP\/1.1 200" 1>/dev/null ;
        then     
            echo -e "$line : ${Green}200${White}" >> re1
        fi

    done < $3


    a=$'\n'
    echo "$a"
    cat re1
    rm re1

elif [ $1 == '-sf' ];
then

    touch re1
    while read line;
    do 
        echo "Testing for : $line"
        url="http://$line.$2"
        if response=$(curl -sk -L --write-out '%{http_code}' --silent --output /dev/null $url | grep -E "200|301|302|403|401|502") ;
        then     
            echo -e "$url : ${Green}$response ${White} " >> re1
        fi

    done < $3


    a=$'\n'
    echo "$a----------------Resault-----------------------"
    cat re1
    rm re1   

else
    echo "improper calling function"
fi

