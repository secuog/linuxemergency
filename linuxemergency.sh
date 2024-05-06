#!/bin/bash
echo "用户信息 "
echo "主机信息为： "
lscpu | uname -a |cat /proc/version 
read -p "按下回车键继续..."
echo "root权限用户为： "
awk -F: '$3==0{print $1}' /etc/passwd
read -p "按下回车键继续..."
echo "空口令账号为： "
awk -F: '($2==""){print $1}' /etc/shadow
read -p "按下回车键继续..."
echo "远程登陆权限用户为： "
awk '/\$1|\$6/{print $1}' /etc/shadow
read -p "按下回车键继续..."
echo "sudo权限用户为： "
more /etc/sudoers | grep -v "^#\|^$" | grep "ALL=(ALL)"
read -p "按下回车键继续..."
echo "可登陆权限用户为： "
cat /etc/passwd|grep 'bin/bash'
read -p "按下回车键继续..."
echo "可登陆权限用户为： "
cat /etc/passwd|grep 'bin/bash'
read -p "按下回车键继续..."
echo "过去登录的用户信息： "
lastlog
read -p "按下回车键继续..."
echo "所有用户最近登录信息： "
last -f /var/log/wtmp
read -p "按下回车键继续..."
echo "当前用户登陆状况： "
who
read -p "按下回车键继续..."
echo "启动项"
echo"查看init.d/rc.local"
cat /etc/init.d/rc.local
read -p "按下回车键继续..."
echo"查看rc.local"
cat /etc/rc.local
read -p "按下回车键继续..."
echo"查看init.d下是否存在木马"
ls -alt /etc/init.d
read -p "按下回车键继续..."
echo "计划任务"
echo"查看当前用户计划任务"
crontab -l
read -p "按下回车键继续..."
echo"查看当前系统的定时计划任务"
ls /etc/cron*



