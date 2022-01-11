#!/bin/bash
    # echo This is Port Scanner

Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

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

    echo -e "${Red}[${White} Port ${Red}]${White} : ${Red}[${White} Possible service running on ${Red}]${White}\n "

    while read port;
    do 
        res=`nc -z -v -w 1 $1 $port  2>&1 | grep succeeded | cut -d " " -f 4`
        len_res=${#res}
        if [ $len_res != 0 ];
        then
            grep $res ./Functions/services -m 1 | cut -d "/" -f 1 | awk '{print "    \033[0;37m ",$2,"\033[0;37m:\033[0;36m",$1}'
        fi


    done < ./Functions/final.txt


else
    res=`nc -z -v -w 1 $1 $2  2>&1 | grep succeeded | cut -d " " -f 4`
    len_res=${#res}
    if [ $len_res != 0 ];
    then
    
        grep $res ./Functions/services -m 1 | cut -d "/" -f 1 | awk '{print "    \033[0;37m ",$2,"\033[0;37m:\033[0;36m",$1}'

    fi
fi 







# a=`ls`
# echo $a
