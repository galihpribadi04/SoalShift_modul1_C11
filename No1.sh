#!/bin/bash
unzip /home/isnaini/praktikum1/nature.zip -d /home/isnaini/praktikum1
mkdir /home/isnaini/praktikum1/nature/hasil
iter=0
for gambarku in /home/isnaini/praktikum1/nature/*.jpg
do
base64 -d $gambarku | xxd -r > /home/isnaini/praktikum1/nature/hasil/$iter.jpg
iter=$((iter+1))
done



