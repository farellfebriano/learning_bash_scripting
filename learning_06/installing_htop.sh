# EXIT CODE 

# 
# --> An exit code, also known as a return code or exit status, is a numerical 
# value returned by a command or program when it finishes executing. This 
# value typically indicates whether the command or program completed
# successfully or encountered an error.

# --> In Unix-like operating systems (including Linux and macOS), an exit code of
# 0 usually indicates success, while a non-zero exit code typically indicates
# an error. However, the specific meaning of non-zero exit codes can vary
# depending on the command or program.

# this script will try to install a nonexist package and 
# and it will send the error into another file  

package="noteexist"
sudo apt update
sudo apt install $package
if [ $? = 0 ]; then
    echo "the package installed: $?"
else   
    echo "the package is not succesfully instaled" >> error_log.txt
fi  
