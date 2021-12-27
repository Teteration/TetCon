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
    bash ./Functions/crawl.sh $domain $blacklist
}

subDomain()
{
    bash ./Functions/subDomain.sh $domain
}


fuzzer()
{
    bash ./Functions/fuzzer.sh $domain $wordlist
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
        blacklist=$4
        crawl
        ;;


    -sd|--subDomainDiscovery)
        domain=$2
        subDomain
        ;;

#Tetcon -f url -w wordlist
    -f|--fuzzer)
        domain=$2
        wordlist=$4
        fuzzer
        ;;


    esac
    shift



# if [ "$SHOW_HELP" -eq 1 ];then
#     showHelp
#     exit
# fi