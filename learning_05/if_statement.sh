# IF STATEMETN IN BASH
# set -x

# perofm simple example if mynum is 50 echo it is 50 and if it 
# is not it will echo it is not 50 and finally echo the end of 
# if statement. 
# this are a general looks on how to use if statement in BASH
myNum=50;
if [ $myNum -eq 50 ];then
    echo "myNum is 50"
else 
    echo "myNum it is not 50"
fi
    echo "---"

# there are several use case when we us if statement 
# using (..), ((..)), [..] , [[..]]


#   [...] Vs [[...]

#   [..] --> it is actually a command line called "test"
# it is not an keyword like [[...]], it also has a limited
# since it is the simple version of [...]

#   [[...]] --> it is a reserved kewords that has a special meaning
# in bash scripting. It is basically the enhanced version of [] and it 
# dosent require proper spacing and quoting. It also suport a 
# logical operator like && || 

string="farell"
if [[ "$string" -eq "farell" ]]; then
    echo "the conditional is true"
else
    echo "the conditional is not true"
fi
    echo "---"

#   (...) Vs ((...))

# (...) --> it is a command line for grouping a command line 

if ( [ -e "./test.sh"  ] && ls ); then 
    echo "true"
else
    echo "false"
fi
    echo "---"

# ((...)) --> this is used aritmatic comperasioin or do an expression
newNum=$(( 50 + 500 ))
if (( "$newNum" > 0 )); then 
    echo "newNum is greater than 0"
else 
    echo "newNum is less than 0"
fi 
    echo '----'
