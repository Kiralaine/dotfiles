#!/bin/bash

# Получаем текущее время
hour=$(date +%H)
username=$(whoami)
# В зависимости от времени выводим нужное приветствие
if [ $hour -ge 6 ] && [ $hour -lt 12 ]; then
    toilet -f future -F border --gay "Good morning  $username!"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    toilet -f future -F border --gay "Good afternoon $username!"
elif [ $hour -ge 18 ] && [ $hour -lt 22 ]; then
    toilet -f future -F border --gay "Good evening $username!"
else
    toilet -f future -F border --gay "Good night $username!"
fi
