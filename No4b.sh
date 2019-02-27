#!/bin/bash

read bisa

x=ABCDEFGHIJKLMNOPQRSTUVWXYZ
z=abcdefghijklmnopqrstuvwxyz

x2=($(echo ${x[@]})$(echo ${x[@]}))
z2=($(echo ${z[@]})$(echo ${z[@]}))
hour=${bisa:0:2}
rot=$hour

simpan=($(echo ${x[@]})$(echo ${z[@]}))
newx=$(echo $x | tr "${x:0:26}" "${x2:${rot}:26}")
newz=$(echo $z | tr "${z:0:26}" "${z2:${rot}:26}")
simpan2=($(echo ${newx[@]})$(echo ${newz[@]}))

< "$bisa" > "$bisa dec" tr "$simpan2" "$simpan"






