#!/bin/zsh
while true 
do
    ping 1.1.1.1 -c 1 -w 1 > /dev/null
    if [ $? -eq 0 ]; then 
        echo "" > /dev/null 
    else
        zenity --question --text="Internet is not reachable. Refresh ?"
        if [[ $? -eq 1 ]]; then
            exit
        elif [[ $? -eq 5 ]]; then
            continue 
        fi
    fi
    sleep 2; 
done
