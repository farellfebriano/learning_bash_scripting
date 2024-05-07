# this code will create a file called test.txt
# it will loop 10 time and echo the file exist and
# at the 10th it will delet the file so the loop stop 

file="test.bash"
touch $file

num=1
while [ -f test.bash ]; do 
    if [ $num -eq 11 ]; then
        rm test.bash
    else 
        echo "the file: $file is exist --> $num"
        sleep 0.4
        num=$(( $num + 1))
    fi
done

echo "the loop end"