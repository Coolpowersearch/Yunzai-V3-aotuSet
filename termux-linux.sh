#!/bin/bash
cd $HOME
clear
echo "Choose a apt-source for Termux"
sleep 2s
termux-change-repo
clear
sleep 1s
export ERR1=如果不出差错的话，Linux已经安装完成了，请在Ubuntu端执行“”
source $HOME/.bashrc
echo "---------------------------------------------------------------------------------"
echo "please enter your chooice:"
echo "为确保兼容，将安装Ubuntu，若失败，请使用其他脚本"
echo "选择一个："
echo "(1) Use Tmoe "
echo "(2) Use Anlinux "
echo "(3) Use Guoguang (国光) shell "
echo "(4) Use proot "
echo "(5) Use chroot "
echo "(6) Use  Anlinux "
echo "(0) Exit Menu"
echo "----------------------------------------------------------------------------------"
read input

case $input in
    0)
    echo "你选择“0”所以退出：exit"
    sleep 1s
    exit;;
    1)
    echo Tmoe
    sleep 1
    apt update && apt install curl git
    curl -LO https://l.tmoe.me/2.awk
    awk -f 2.awk
    echo $ERR1;;
    2)
    echo Anlinux
    sleep 1
    pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
    echo $ERR1;;
    3)
    echo Guoguang
    sleep 1
    pkg install proot git python -y
    git clone https://github.com/sqlsec/termux-install-linux
    cd termux-install-linux
    echo "请选择Ubuntu！"
    sleep 5s
    python termux-linux-install.py
    echo $ERR1;;
    4)
    echo proot
    sleep 1
    apt install -y proot proot-distro
    proot-distro install ubuntu
    echo $ERR1;;
    0)
    exit;;
esac
