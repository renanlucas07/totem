#!/bin/bash

rm file.txt


echo ${#2}
echo $((100-${#2}))
    echo L >> file.txt
    echo D11 >> file.txt
    echo H12 >> file.txt
    echo 1911004003000$((157-${#2}*9/2))$2 >> file.txt
    echo 1911004001200$((157-${#3}*9/2))$3 >> file.txt
    echo D22 >> file.txt
    echo 1e1104000600070$1 >> file.txt
    echo E >> file.txt
    echo f320 >> file.txt
    echo E0001 >> file.txt
    echo Q >> file.txt



sudo cat file.txt > /dev/usb/lp0
