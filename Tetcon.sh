#!/bin/bash

figlet Tetcon | lolcat









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






case "$1" in
    -h|-\?|--help)
        showHelp
        ;;


    -p|--portScan)
        ip=$2
        portScanner

        ;;



    esac
    shift



# if [ "$SHOW_HELP" -eq 1 ];then
#     showHelp
#     exit
# fi