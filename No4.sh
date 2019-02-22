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

#echo "$syslog"

thishour=$(date +"%H:%M %d-%m-%Y") //dapatkan tanggal untuk nama file
#echo "$thishour"
#echo "$syslog" > /home/zahrul/praktikum1/sislog
echo "$syslog" > "$thishour" //simpan hasil log yang telah diubah di file dengan format nama sesuai dengan variabel thishour

       #!/bin/bash

	hour=$(date +"%H")

	if [[ ${hour:0:1} -eq 0 ]]
	then
   	 hour=${hour:1:1}
	fi

	#echo $hour

	lowcase=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
	syslog=$(</var/log/syslog) →mengambil isi dari varlog/syslog dimasukkan ke syslog
	#echo "$syslog"
	syslog=$(echo "$syslog" | tr "${lowcase:0:26}" "${lowcase:${hour}:26}") → di 	print, menyeleksi yang sesuai lowcase dan ditambahkan nilai alfabet sesuai jamnya untuk 	lowcase

	#echo "$syslog"
upcase=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
syslog=$(echo "$syslog" | tr "${upcase:0:26}" "${upcase:${hour}:26}")
->→ di print, menyeleksi yang sesuai upcase dan ditambahkan nilai alfabet sesuai jamnya untuk 	upcase
#echo "$syslog"

thishour=$(date +"%H:%M %d-%m-%Y")→penamaan nama file
#echo "$thishour" 
#echo "$syslog" > /home/awin/praktikum1/sislog
echo "$syslog" > "$thishour" →di print isi dari syslog dipindahkan dalam  file thisour
