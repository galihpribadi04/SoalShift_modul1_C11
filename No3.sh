#!/bin/bash

loop=1
urutanke=1
while [ $loop -ne 0 ] #ne-> artinya tidak sama dengan 0
do
if [[ -f /home/isnaini/praktikum1/password$urutanke.txt ]] ; then
    urutanke=$((urutanke + 1))x
    else
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1 > /home/isnaini/praktikum1/password$urutanke.txt
loop=0
fi
done
