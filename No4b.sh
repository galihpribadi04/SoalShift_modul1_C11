#!/bin/bash

read bisa

A=ABCDEFGHIJKLMNOPQRSTUVWXYZ
B=abcdefghijklmnopqrstuvwxyz

A2=($(echo ${A[@]})$(echo ${A[@]}))
B2=($(echo ${B[@]})$(echo ${B[@]}))
hour=${bisa:0:2}
rot=$hour

simpan=($(echo ${A[@]})$(echo ${B[@]}))
newA=$(echo $A | tr "${A:0:26}" "${A2:${rot}:26}")
newB=$(echo $B | tr "${B:0:26}" "${B2:${rot}:26}")
simpan2=($(echo ${newA[@]})$(echo ${newB[@]}))

< "$bisa" > "$bisa dec" tr "$simpan2" "$simpan"






