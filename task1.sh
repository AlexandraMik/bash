#!/bin/bash
S=3 #счетчик
R=$(( $RANDOM %99+1 ))
echo "$R"
echo 'Введите загаданое число'
read N
S=$(( $S - 1 ))
if [[ N -eq R ]];
            then
            echo 'ура вы угадали число'
else
    while [[ N -ne R ]];
    do
        if [[ S -ne 0 ]];
        then
            if [[ N -lt R ]];
                then
                echo "N < R"
                else
                echo "N > R"
            fi
            echo 'Введите повторно число'
            S=$(( $S - 1 ))
            read N
        else
        echo 'а все'
        break
        fi
    done
    if [[ N -eq R ]];
        then
        echo 'ура вы угадали число'
    fi
fi