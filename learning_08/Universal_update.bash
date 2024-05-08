os_release=$(cat /etc/os-release | grep "kali")


echo $os_release

# if grep -q "Kali" $os_release ; then 
#     sudo apt-update
#     echo "update is succesfull exit code:$?"
# else    
#     echo "update is not succesfull exit code $?"
#     exit 
# fi
