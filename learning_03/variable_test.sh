# in this lesson we will focus on creating variable 
# example to create a simple variable 
myName="farell"
age=50

# NOTE
# "myName = "farell" will not working since in bash this means that im 
# trying to run myName with operator "="

# to print the variable wee need to use "$" sign 
echo $myName

# Example using a format in bash 
echo "hello, my name is $myName."
echo "I am $age years old."

#Example to use the output of a valid command into an variable
files=$(cd && ls)
echo $files

currentTime=$(date)
echo "the current time is $currentTime"