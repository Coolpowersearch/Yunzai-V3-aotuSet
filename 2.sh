#!/bin/bash
#menu.sh
clear
echo "Choose a apt-source for Termux"
sleep 2s
termux-change-repo
clear
sleep 1s

source ~/.bashrc
echo "----------------------------------"
echo "please enter your chooice:"
echo "(1) Use Tmoe "
echo "(2) Use Anlinux "
echo "(3) Use Guoguang (国光) shell "
echo "(4) Use proot "
echo "(5) Use choot "
echo "(6) Use  Anlinux "
echo "(0) Exit Menu"
echo "----------------------------------"
read input

case $input in
    0)
    echo "exit"
    sleep 1s
    exit;;
    1)
    echo Tmoe
    sleep 1
    cd /tmp || cd $TMPDIR
    apt update && apt install curl git
    curl -LO https://l.tmoe.me/2.awk
    awk -f 2.awk -v lang=zh-mo -v tmp_dir="/tmp";;
    2)
    echo Anlinux
    sleep 1
    pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh;;
    3)
    echo Guoguang
    sleep 1
    pkg install proot git python -y
    git clone https://github.com/sqlsec/termux-install-linux
    cd termux-install-linux
    python termux-linux-install.py;;
    4)
    echo proot
    sleep 1
    apt install -y proot proot-distro
    proot-distro install ubuntu;;
    0)
    exit;;
esac
