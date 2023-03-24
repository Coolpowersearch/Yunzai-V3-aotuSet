#!/bin/bash
clear
apt update && apt upgrade
clear
apt install -y busybox wget git

select fav in 部署YunzaiV3且安装喵喵插件 启动机器人 卸载机器人 退出脚本 转接到其他人的脚本 此脚本目前还在开发中（退出）; do
    case $fav in
        "部署YunzaiV3且安装喵喵插件")
            echo "你选择 $fav ，请稍候..."
            sleep 3s
            echo "OK!正在安装一些包..."
            sleep 2s
            apt install -y nano vim chromium-browser
            curl -sL https://deb.nodesource.com/setup_18.x | bash
            apt-get update && apt-get install -y nodejs
            source ~/.bashrc
            node -v
            clear 
            echo "若安装速度过于缓慢，可切换到国内的源，不过不推荐"
            sleep 2s
            npm install -g n
            n 16.13.0
            apt -y install redis && redis-server --daemonize yes
            git clone --depth=1 -b main https://gitee.com/Le-niao/Yunzai-Bot.git
            cd Yunzai-Bot
            echo "安装依赖..."
            sleep 2s
            npm install pnpm -g
            pnpm install -P
            echo "安装完成！请输入‘node app’或者输入ysbot来运行机器人，若启动失败，可以添加浏览器地址。将在10秒后自动退出脚本"
            sleep 10s
            exit
            ;;
        "启动机器人")
            echo "你选择 $fav "
            clear
            echo "请先确保你已经安装了机器人且能够正常启动！！！！！"
            sleep 5s
            cd $HOME/Yunzai-Bot
            node app
            ;;
            "卸载机器人"）
            unyz
            exit
            ;;
	"退出脚本")
	    echo "好的捏！"
	    exit
	    ;;
        "转接到其他人的脚本") 
        echo "好的！"
        changeyzshell;;
    esac
done