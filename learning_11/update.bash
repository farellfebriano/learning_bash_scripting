#!/bin/bash


release_file="/etc/os-release"
logfile="log_file.txt"
errorfile="error_log.txt"

if grep -q "Arch" $release_file; then 
    #the host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>$logfile 2>$errorfile
    if [ $? -ne 0 ]; then 
        echo "An error has occured, plese checn the error_file.txt 1"
    fi
fi

if grep -q "Pop" $release_file  || grep -q "Ubuntu" $release_file; then
    sudo apt update 1>$logfile 2>$errorfile
    if [ $? -ne 0 ]; then
        echo "An error has occured, plese checn the error_file.txt 2"
    fi
fi

if grep -q "Kali" $release_file; then 
    sudo apt update 1>$logfile 2>$errorfile
    if [ $? -ne 0 ]; then 
        echo "An error has occured, plese checn the error_file.txt 3"
        echo "">$logfile
    else
        echo"">$errorfile
    fi
fi