#!/bin/bash
clear
echo "Choose a apt-source for Termux"
echo "为Termux选择一个软件源"
sleep 2s
echo "如果你在中国内地，建议选择清华源"
echo "If you are Chinese mainland, it is recommended to choose Tsinghua-sources"
sleep 5s
clear && cd $HOME

termux-change-repo

apt update && apt upgrade
echo -e "\033[3x Installing some software"
echo -e "\033[3x 正在安装一些必要的软件"
sleep 2s
clear
apt install -y busybox wget git && apt install -y x11-repo

clear 
echo "Please choose a apt-source for x11-repo"
echo "为x11仓库选择一个软件源（为坠落的人物起名 （雾））"
sleep 5s

clear

function Choice(){
    echo "**********************************************************"
    echo "                      Make a choice                       "
    echo "               选择一个安装基本Linux的方法                "
    echo " 项目地址:https://github.com/Coolpowersearch/Yunzai-V3-   "
    echo "Miao-Yunzai:https://github.com/yoimiya-kokomi/Miao-Yunzai "
    echo "**********************************************************"
