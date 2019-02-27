#!/bin/bash

x=ABCDEFGHIJKLMNOPQRSTUVWXYZ
z=abcdefghijklmnopqrstuvwxyz

x2=($(echo ${x[@]})$(echo ${x[@]}))
z2=($(echo ${z[@]})$(echo ${z[@]}))
simpan=($(echo ${x[@]})$(echo ${z[@]}))

rot=`date +"%H"`

newx=$(echo $x | tr "${x:0:26}" "${x2:${rot}:26}")
newz=$(echo $z | tr "${z:0:26}" "${z2:${rot}:26}")
simpan2=($(echo ${newx[@]})$(echo ${newz[@]}))

hasil=`date +"%H:%M %d-%m-%Y"`

< /var/log/syslog > "$hasil" tr "$simpan" "$simpan2"








