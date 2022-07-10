#!/bin/bash

input_temp=$1

k_temp="K"

c_temp="C"

case $input_temp in
    *$k_temp)
        let "output_temp = ${input_temp%$k_temp} - 273"
        echo $output_temp"C"
        ;;
    
    *$c_temp)
        let "output_temp = ${input_temp%$c_temp} + 273"
        echo $output_temp"K"
        ;;
esac

# Place your code here
