# MATH FUNCTION

# in bash math is handeled differntly, you need 
# to use "expr" when you trying to evaluate math expresion 
total=$(expr 50 + 50)
echo $total

# the code above also can be done with other technique 
newTotal=$((60 + 60))
echo $newTotal
#the two different is with expr we using a command-line 
#utility whereas the (()) is usimg arithmatic expansion

# adding the variable $total with 50
expr $total + 50

#-------------------------------------------------------------------

# ARITHMATIC EXPANSION

# ADDITION
result=$((30 + 30))
echo $result # printed 60

# SUBTRACTION
result=$(( 30 - 30 ))
echo $result # printed 0

# MULTIPLICATION
result=$(( 30 * 30 ))
echo $result # printed 900

# DIVISION
result=$(( 30 / 30))
echo $result # printed 1

# MODULUS
result=$(( 30 % 30 ))
echo $result # printed 1

#-------------------------------------------------------------------

# FLOATING NUMBER

# floating number in bash works diffrently, it use comand "bc"
# bc --> stands for basic calculator
# that actualy get a string using operator "|"
total=$(echo 'scale=4; 3.0 / 4.0' | bc)
# add total with 50
result=$(echo "scale=3; $total + 50 " | bc)
echo $result

# We can also use python when we want to calculate a floating Number
# we will use a "-c" so then we can run the python code directly in the 
# command line

total=$(python -c "print(2.0/9)")
echo $total