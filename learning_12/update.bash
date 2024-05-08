
#!/bin/bash
release_file="/etc/os-release"
logfile="log_file.txt"
errorfile="error_log.txt"

#this is a general looks of a function in a bash scripting 
check_exit_status(){
    if [ $? -ne 0 ]; then 
        echo "An error has occured, plese checn the error_file.txt 3"
        echo "">$logfile
    else
        echo"">$errorfile
    fi
}

if grep -q "Arch" $release_file; then 
    #the host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>$logfile 2>$errorfile
    check_exit_status
fi

if grep -q "Pop" $release_file  || grep -q "Ubuntu" $release_file; then
    sudo apt update 1>$logfile 2>$errorfile
    check_exit_status
fi

if grep -q "Kali" $release_file; then 
    sudo apt e 1>$logfile 2>$errorfile
fi