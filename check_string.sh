#!/bin/bash

input_str=$1

str_letters=0
str_symbols=0
str_numbers=0

for (( n = 0; n < ${#input_str}; n++)) ; do

    check_char=${input_str:$n:1}

    if [[ $check_char =~ [a-zA-Z] ]]
        then
            (( str_letters = $str_letters + 1 ))
    elif [[ $check_char =~ [\*\!\@\#\$\%\^\&\(\)\_\+] ]]
        then
            (( str_symbols = $str_symbols + 1 ))
    elif [[ $check_char =~ [0-9] ]]
        then
            (( str_numbers = $str_numbers + 1 ))
    fi

done

echo "Numbers: $str_numbers Symbols: $str_symbols Letters: $str_letters"

# Place your code here
