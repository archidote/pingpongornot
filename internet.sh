#!/bin/zsh
isInternetIsBack=0
for i in {1..10}; do
    ping 1.1.1.1 -c 1 -w 1
    if [ $? -eq 0 ]; then 
        echo "yes"
    else
        zenity --question --text="Refresh ?"
        if [[ $? -eq 1 ]]; then
            exit
        elif [[ $? -eq 5 ]]; then
            continue 
        fi
    fi
    sleep 1; 
done
