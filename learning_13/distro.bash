#!/bin/bash

# in this example, we are trying yo use case. Case in bash
# looks and works the same like switch in any other programing 
# language.

echo "what is your distribution"
echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - Kali"
echo "7 - Something else"

read distro
echo "thiw is your chosen $distro"
case $distro in 
    1) echo "Arch is rling release";;
    2) echo "CentOS id popular on servers.";;
    3) echo "Debian is a comunity distributions.";;
    4) echo "Mint is popular on desktop and laptops.";;
    5) echo "Ubuntu is popular on both servers and computers";;
    6)  echo "Kali is popular"
        sudo apt update 1>log_file.txt 2>error.txt
        ;;
    7) "There are many distributions out there";;
    *) "you didnt enter an appropriate choice"
esac

