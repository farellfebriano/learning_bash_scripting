# this script is simply counting a numer from 0 - 10 
num=0

while [ $num -le 10 ]; do # it test is num variable is les than 10
    echo $num
    num=$(( $num + 1 )) # itterate the num by one 
    sleep 0.5
done

echo "the loop is ended"

num=1
echo "param $1"


