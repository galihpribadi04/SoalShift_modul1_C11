#!/bin/bash

hour=$(date +"%H") //dapatkan jam

if [[ ${hour:0:1} -eq 0 ]]
thenchr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

#Rab Feb 20 17:50:59 WIB 2019
jam="`date +\"%H\"`"
menit="`
    hour=${hour:1:1}
fi

#echo $hour

lowcase=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz //variabel yang diisi oleh huruf kecil
syslog=$(</var/log/syslog) //mendapatkan data syslog
#echo "$syslog"
syslog=$(echo "$syslog" | tr "${lowcase:0:26}" "${lowcase:${hour}:26}")
	//	print log 		| saring log huruf yang sama dengan lowcase        lalu tambah dengan jam


#echo "$syslog"

upcase=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ //variabel
syslog=$(echo "$syslog" | tr "${upcase:0:26}" "${upcase:${hour}:26}")
		// cetak log | saring log yang terdapat huruf besarnya | tambahkan dengan jam

thishour=$(date +"%H:%M %d-%m-%Y")→penamaan nama file
#echo "$thishour" 
#echo "$syslog" > /home/isnaini/praktikum1/sislog
echo "$syslog" > "$thishour" →di print isi dari syslog dipindahkan dalam  file thisour
