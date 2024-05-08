# function in bash also can take a param

my_funciton(){
    local param1=$1
    local param2=$2

    echo $param1
    echo $param2
}

my_funciton $1 $2