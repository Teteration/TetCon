#!/bin/bash

figlet Tetcon | lolcat
echo "Try 'Tetcon -h' for more information."









#Functions

showHelp()
{
    bash ./Functions/showHelp.sh
    exit
}

portScanner()
{
    bash ./Functions/portScanner.sh $ip
    exit
}

crawl(){
    bash ./Functions/crawl.sh $domain
}






case "$1" in
    -h|-\?|--help)
        showHelp
        ;;


    -p|--portScan)
        ip=$2
        portScanner
        ;;


    -c|--crawl)
        domain=$2
        crawl
        ;;


    esac
    shift



# if [ "$SHOW_HELP" -eq 1 ];then
#     showHelp
#     exit
# fi