#!/bin/bash

#快捷上传小助手，使用前，现在github上创建好仓库，gitclone下来以后再使用
#！！注意保护好自己的密码,切忌给本文件改名
#需要安装/usr/bin/expect 

username=#YOUR GITHUB ACCOUNT
password=#YOUR GITHUB PASWORD

nowtime=$(date "+%Y-%m-%d-%H:%M:%S")

git add *
git rm --cached commit_push.sh 
git status
git commit -m \'$nowtime\'

cat > github.sh <<-EOF
#!/usr/bin/expect -f

set username [lindex $argv 0]
set password [lindex $argv 1]

spawn git push origin master
expect "*sername*"
send "$username\n"
expect "*assword*"
send "$password\n"
interact
EOF

chmod +x github.sh

expect github.sh $username$password

rm -rf github.sh
