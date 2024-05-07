# NOTE

#this is really important example on how 
#to know and to position your exit cod

dir="/etc"
if [ -d $dir ]; then
    echo "the $dir is exist"
else
    # the exit code that is shown bellow change after
    # there is other command. The reason the first
    # exit code is 1 and the second is 0 is because
    # the command is not focus on echo istead the if statement
    # and there is no error in echo
    echo "1. the exit code is: $?" # exit code = 1    
    echo "the $dir is not exist"
    echo "2. the exit code is: $?" # exit code = 0
fi
    echo "3. the exit code is: $?" # exit code = 0

[ -d /nonexist.txt ]
echo "4. the exit code is: $?" # exit code = 1
# the same with the last argument, the exit code
# down bellow will stated 0 because the is no
# previous error in the code above.
echo "5. the exit code is: $?" # exit code = 0

# this code will exit the code before actually finnishing the script
# It is simmilar to break in programing language. With this code 
# you can also specified your own exit code when it stop the scrip 


# this code will exit before actually do the code bellow 
exit 199 
echo "hello world"
echo "hello world"
echo "hello world"
echo "hello world"

# if you do "echo $?" in the terminal AFTER you run this script
# it will print 199