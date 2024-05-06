#!/bin/bash
echo "日志排查 "
read -p "按下回车键继续..."
echo "wtmp 登录信息： "
cat /var/log/wtmp 
read -p "按下回车键继续..."
echo "cron 定时任务日志： "
cat /var/log/cron 
read -p "按下回车键继续..."
echo "系统启动后的信息和错误日志： "
cat /var/log/messages 
read -p "按下回车键继续..."
echo "apache访问日志： "
cat /var/log/apache2/access.log
read -p "按下回车键继续..."
echo "系统授权信息日志： "
cat /var/log/auth.log
read -p "按下回车键继续..."
echo "所有用户信息日志： "
cat /var/log/userlog
read -p "按下回车键继续..."
echo "Linux ftp日志： "
cat /var/log/xferlog
read -p "按下回车键继续..."
echo "lastlog登录日志： "
cat /var/log/lastlog
read -p "按下回车键继续..."
echo "应用输入账号密码登陆记录： "
cat /var/log/secure
read -p "按下回车键继续..."
echo "未成功登录信息日志： "
cat /var/log/faillog