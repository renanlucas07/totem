#!/bin/bash

rm file.txt


    echo L >> file.txt                                            #inicia o modo de formatacao de etiqueta
    echo D11 >> file.txt                                            #seta a largura e altura do pixel em 1
    echo H12 >> file.txt                                            #seta a temperatura em 12 (max: 20, max recomendado: 16)
    
    #centraliza o Nome
    if [ $((${#2}*13/3)) -lt 57 ]; then 
        echo 191100400300$((157-${#2}*9/2))$2 >> file.txt           #Caso o nome seja muito curto
    elif [ $((${#2}*13/3)) -gt 125 ]; then
        echo 1911004003000$((157-${#2}*4))$2 >> file.txt            #Caso o nome seja muito comprido 
    else
        echo 1911004003000$((157-${#2}*13/3))$2 >> file.txt         #Caso o nome seja de tamanho normal
    fi

    #Centraliza o Nome da empresa
    if [ $((${#3}*13/3)) -lt 57 ]; then 
        echo 191100400120$((157-${#3}*9/2))$3 >> file.txt           #caso o nome da empresa seja muito curto
    elif [ $((${#3}*13/3)) -gt 125 ]; then
        echo 1911004001200$((157-${#3}*4))$3 >> file.txt            #Caso o nome da empresa seja muito comprido 
    else
        echo 1911004001200$((157-${#3}*13/3))$3 >> file.txt         #Caso o nome da empresa seja de tamanho normal
    fi
    
    echo D22 >> file.txt                                            #seta a largura e altura do pixel em 2
    echo 1e1104000600070$1 >> file.txt                              #Formata a etiqueta
    echo E >> file.txt                                              #fecha o modo de formatacao de etiqueta
    echo f320 >> file.txt                                          #seta o backfeed
    echo E0001 >> file.txt
    echo Q >> file.txt



sudo cat file.txt > /dev/usb/lp1                                    #MODIFICAR DE ACORDO COM O TOTEM
