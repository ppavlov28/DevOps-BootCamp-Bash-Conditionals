#!/bin/bash

#IFS=',' read -r -a array <<< "$1"

num_list=$1

list_sep=","

arr_sep=" "

num_list=(${num_list//$list_sep/$arr_sep})

for item in ${num_list[@]}
do
	if [[ $(( $item % 2 )) = 0 ]]
    then
        num_sum=$(( $num_sum + $item ))
    fi
done

echo $num_sum

#Write your code here
