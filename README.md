                                              SOAL SHIFT MODUL 1
                                                SISTEM OPERASI



1. Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari.
   Hint: Base64, Hexdump.
   Penjelasan :
   1) langkah pertama yang dilakukan adalah :
   
   
      --> ```#!/bin/bash```
   2) Langkah kedua yang dilakukan adalah dengan me-unzip file nature.zip yang berada di home/isnaini/praktikum1/nature.zip  kemudian file tersebut dipindahkan dengan tujuan direktori ke home/isnaini/praktikum1 
   
   
      -->  ```unzip nature.zip```
   3) Langkah ketiga adalah membuat direktori “hasil” dengan syntax sebagai berikut:
   
   
      -->  ```mkdir /home/isnaini/praktikum1/nature/hasil```
      
      
   3) penjelasan untuk setiap source code:
   
   
      --> ```iter=0``` 
          artinya adalah menyimpan nama variabel yang benama "iter" yang dimulai dari 0
          
          
      --> ```for gambarku in /home/isnaini/praktikum1/nature/*.jpg```  
          artinya adalah dengan melakukan looping untuk mendecript
          
          
      --> ```do```  
          artinya melakukan suatu perintah
          
          
      --> ```base64 -d $gambarku | xxd -r > /home/isnaini/praktikum1/nature/hasil/$iter.jpg``` 		
          artinya mendeksripsi file, output yang berada di directory tempat script. Untuk “$gambarku” adalah nama variabel yang berisi nama file pada loop tersebut. Kemudian menggunakan perintah pipeline ( | ) yang memiliki arti bahwa output dari perintah akan menjadi input grep perintah setelah tanda pipeline( | ).Sedangkan perintah untuk xxd adalah perintah mengembalikan hexdump ke bentuk awal. Sedangkan perintah -r adalah perintah untuk mengembalikan file input ke bentuk awal. 
          Kemudian file tersebut dipindahkan ke temoat /home/isnaini/praktikum1/nature/hasil/$iter.jpg, dimana $iter.jpg adalah untuk penamaan gambar
          
          
      --> ```iter=$((iter+1))```
          untuk memberi nama gambar secara urut dengan cara penambahan setiap terjadi proses looping.
          
          
      --> ```done```  
          yaitu penutup dari perintah do.
          
          

   4) melakukan perintah : ```crontab -e```
   
   
      --> Agar skrip tersebut dijalankan pada pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari, cronjob yang sesuai adalah sebagai berikut:
      
      
          ```14 14 14 2 *```` 
          ```14 14 14 2 5```
     
2. Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv.
Laporan yang diminta berupa:


a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.


b. Tentukan tiga product line yang memberikan penjualan(quantity) terbanyak pada soal poin a.


c. Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin 


Penjelasan:
a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.
   Penyelesaian :
   
   
   ```awk -F ',' '{if($7 == '2012') iter[$1]+=$10} END {for(hasil in iter) {print hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | head -1```
   
   
   Penjelasan:
   
   
   --> Akan mengaktifkan awk (berfungsi untuk mencari dan mengganti teks, database sort/validate/index), 
       awk bisa digenerate menjadi laporan yang berformat dan awk mempunyai operator aritmatika dan string.
       
       
   --> ```if($7 == '2012')``` 
       Artinya adalah mencari data yang mengandung tahun “2012”
       
       
   --> ```iter[$1]+=$10```
       {$10} artinya adalah kolom ke-10.Karena di soal diminta untuk mencari penjualan(quantity) terbanyak, maka diperoleh bahwa quantity berada pada kolom ke-10.
       
       
   --> ```{for(hasil in iter)``` 
       kemudian nama variable “iter” tersebut disimpan dalam hasil.
       
       
   --> ```{print hasil}}```
       artinya mencetak hasil
       
       
   --> ```WA_Sales_Products_2012-14.csv``` 
       adalah nama file yang berformat csv
       
       
   --> ```sort -nr```
       artinya mengurutkan hasil dalam bentuk file 
       
       
   --> ```head -1```
       artinya menampilkan output bagian pertama dari file (dengan out put satu baris saja yang diminta).
       
       
       
b. Tentukan tiga product line yang memberikan penjualan(quantity) terbanyak pada soal poin a.
   Penyelesaian :
   
   
         awk -F ',' '{if($7 == '2012' && $1 == "United States") p[$4]+=$10} END {for(hasil in p) {print p[hasil],hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $2,$3}'
   
   
   --> akan mengaktifkan awk (berfungsi untuk mencari dan mengganti teks, database sort/validate/index),
       awk bisa digenerate menjadi laporan yang berformat dan awk mempunyai operator aritmatika dan string.
       
       
   --> ``if($7 == '2012') ``
       artinya adalah mencari data yang mengandung tahun “2012” 
       
       
   --> ``1 == "United States ``
       artinya adalah mencari negara yang sama dengan poin 2 a
       
       
      
   --> ``p[$4]+=$10 ``
       {$10} artinya adalah kolom ke-10. Hasil data yang dicari akna disimpan dalam array yang bernama p
       
       
   -->`` for(hasil in p)``
       artinya adalah kemudian nama variable “p” tersebut disimpan dalam hasil
       
     
   --> ``WA_Sales_Products_2012-14.csv ``
       artinya adalah nama file yang berformat csv
       
       
   -->`` sort -nr ``
       artinya adalah mengurutkan hasil dalam bentuk file 
       
       
   --> ``awk 'NR<=3 {print $2,$3}' ``
       artinya adalah akan ditampilkan data kedua dan ketiga teratas
    
c. Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin. 
   Penjelasan :
       echo "Outdoor Protection"
       awk -F ',' '{if($7=='2012' && $1=="United States" && $4=="Outdoor Protection") p[$6]+=$10} END {for(hasil in p) {print p[hasil], hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $2,3$,4$}’
       --> program yang berfungsi dengan nomor 2b dan dengan suatu kondisi bahwa program akan mengecek apakah data sesuai dengan product line “Outdoor Protection”  dan akan menampilkan data ke-2, ke-3,dan ke-4

       echo "Camping Equipment"
       awk -F ',' '{if($7=='2012' && $1=="United States" && $4=="Camping Equipment") p[$6]+=$10} END {for(hasil in p) {print p[hasil], hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $2,$3,$4}’
       --> program yang berfungsi dengan nomor 2b dan dengan suatu kondisi bahwa program akan mengecek apakah data sesuai dengan product line "Camping Equipment" dan akan menampilkan data ke-2, ke-3, dan ke-4

       echo "Personal Accesories"
       awk -F ',' '{if($7=='2012' && $1=="United States" && $4=="Personal Accessories") p[$6]+=$10} END {for(hasil in c) {print p[hasil], hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $2$,$3,$4}’
       --> program yang berfungsi dengan nomor 2b dan dengan suatu kondisi bahwa program akan mengecek apakah data sesuai dengan product line"Personal Accesories" dan akan menampilkan data ke-2, ke-3, dan ke-4.



 3. Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut:
 
 
    a. Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt  
    
    
    b. Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
    
    
    c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
    
    
    d. Password yang dihasilkan tidak boleh sama.
    
Penjelasan :
     `` #!/bin/bash``
         untuk membuat script bash terlebih dahulu
     ``loop=1`` 
         untuk loop dimulai dari 1
     ``urutanke=1``
         untuk memberi penamaan pada variabel urutanke
      ``while [ $loop -ne 0 ]``
         artinya loop tidak sama dengan 0
        ``do``
         artinya melakukan perintah
    ``if [[ -f /home/isnaini/praktikum1/password$urutanke.txt ]] ; then`` 
     ``urutanke=$((urutanke + 1))``
         artinya mengecek apakah password sudah ada atau belum
     ``else``
      ``cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1 > /home/isnaini/praktikum1/password$urutanke.txt``
      ``loop=0``
      ``fi``
         artinya mengakhiri perintah if
       ``done`` 
         artinya mengakhiri perintah do


4. Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:
       a. Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki urutan ke 12+2 = 14.

b. Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya.
       
c. setelah huruf z akan kembali ke huruf a

d. Backup file syslog setiap jam.

e. dan buatkan juga bash script untuk dekripsinya.
       
    Penjelasan :
    
    #!/bin/bash 
    hour=$(date +"%H")
    if [[ ${hour:0:1} -eq 0 ]]
    then
    hour=${hour:1:1}
    fi
    
    #echo $hour
    lowcase=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
    syslog=$(</var/log/syslog)
    #echo "$syslog"
    syslog=$(echo "$syslog" | tr "${lowcase:0:26}" "${lowcase:${hour}:26}")
    #echo "$syslog"
    upcase=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
    syslog=$(echo "$syslog" | tr "${upcase:0:26}" "${upcase:${hour}:26}")
    #echo "$syslog"
    thishour=$(date +"%H:%M %d-%m-%Y")
    #echo "$thishour"
    #echo "$syslog" > /home/zahrul/praktikum1/sislog
    echo "$syslog" > "$thishour"
    
    #!/bin/bash
    hour=$(date +"%H")
    if [[ ${hour:0:1} -eq 0 ]]
    then
    hour=${hour:1:1}
    fi
    
    #echo $hour
    lowcase=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
    syslog=$(</var/log/syslog) #mengambil isi dari varlog/syslog dimasukkan ke syslog
    #echo "$syslog"
    syslog=$(echo "$syslog" | tr "${lowcase:0:26}" "${lowcase:${hour}:26}") #artinya di 	print, menyeleksi yang sesuai lowcase dan ditambahkan nilai alfabet sesuai jamnya untuk 	lowcase
    #echo "$syslog"
    upcase=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
    syslog=$(echo "$syslog" | tr "${upcase:0:26}" "${upcase:${hour}:26}")
    #di print, menyeleksi yang sesuai upcase dan ditambahkan nilai alfabet sesuai jamnya untuk 	upcase
    #echo "$syslog"
    thishour=$(date +"%H:%M %d-%m-%Y") #penamaan nama file
    #echo "$thishour" 
    #echo "$syslog" > /home/awin/praktikum1/sislog
    echo "$syslog" > "$thishour" →di print isi dari syslog dipindahkan dalam  file thisour
   
5. Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi kriteria berikut:

   a. Tidak mengandung string “sudo”, tetapi mengandung string “cron”, serta buatlah pencarian stringnya tidak bersifat case sensitive, sehingga huruf kapital atau tidak, tidak menjadi masalah.
   
   b. Jumlah field (number of field) pada baris tersebut berjumlah kurangdari 13.
   
   c. Masukkan record tadi ke dalam file logs yang berada pada direktori
      /home/[user]/modul1.
      
   d. Jalankan script tadi setiap 6 menit dari menit ke 2 hingga 30, contoh
      13:02, 13:08, 13:14, dst. 
  JAWAB
   •	Crontabnya
      a)	Untuk menghilangkan sudo dan memunculkan string cron
          ``$0 !/sudo/``
         `` $0 /cron/ || /CRON/``
     
     
     b)	Memasukkan record kedalam file direkstori
         `` /home/galihpribadi04/modul1/syslogno5.log``
      
      
      c)	Membuat baris field < 13 awk ‘NF < 13’
      
      
      d)	Pengaturan crontab setiap 6 menit pada meit 2 sampai 30
         `` 2-30 * * * * /bin/bash/ /home/galihpribadi04/soal5.sh``
          Untuk code lengkapnya bisa dilihat sebagai berikut :
         ``awk ‘/cron/ || /CRON/, !/sudo/’ /var/log/syslog | awk ‘NF < 13’ >> /home/galihpribadi04/modul1/syslogno5.log


       

       
       
   



