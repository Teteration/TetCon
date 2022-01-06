#!/bin/bash
    # echo This is Port Scanner

if [ $2 == 1 ];
then
    nc -z -v -w 1 $1 1-50  2>&1 | grep succeeded &
    nc -z -v -w 1 $1 51-100 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 101-150 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 151-200 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 201-250 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 251-300 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 301-350 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 351-400 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 401-450 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 451-500 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 501-550 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 551-600 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 601-650 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 651-700 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 701-750 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 751-800 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 801-850 2>&1 | grep succeeded &
    nc -z -v -w 1 $1 851-900 2>&1 | grep succeeded

elif [ $2 == 2 ];
then
    # echo 2
    # echo 3
    echo "[ Port ] : [ Possible service running on ] "

    while read port;
    do 
        # echo $port
        res=`nc -z -v -w 1 $1 $port  2>&1 | grep succeeded | cut -d " " -f 4`
        # echo $res
        len_res=${#res}
        if [ $len_res != 0 ];
        then
            grep $res ./Functions/services -m 1 | cut -d "/" -f 1 | awk '{print "     ",$2,":",$1}'
            # echo hom
        fi


    done < ./Functions/final.txt


else
    res=`nc -z -v -w 1 $1 $2  2>&1 | grep succeeded | cut -d " " -f 4`
    # echo $res
    len_res=${#res}
    if [ $len_res != 0 ];
    then
    
        grep $res ./Functions/services -m 1 | cut -d "/" -f 1 | awk '{print "     ",$2,":",$1}'

    fi
fi 







# a=`ls`
# echo $a




# nc -v -z -w 1 toplearn.com 53
#  & nc -z -v -w 1 185.129.168.26 50-81 2>&1 | grep succeeded