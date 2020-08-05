# typora-github

typora + github, Assistant of Sync and the method of how to use it 

**Note that you must protect your account and password. **



typora + github,同步小助手及使用方法

**注意一定要保护好自己的账号密码**



## Requirement

```shell
expect
#you can use '''ls /usr/bin | grep expect '''  to check whether it is installed.
```

### How to install expect

```shell
sudo apt-get install tcl tk expect #for Debian
```

### Some settings for typora

if we want save pictures in MD file to github, too.(Absolutely, you want it.)

You need to change the address of the folder where the pictures are stored to a relative address.

File  ==> Preferences ==> Image ==>

 ```Copy image to ./${filename}.assets``` /  

- [x] Apply above rules to local images /
- [x] Use relative path if possible



如果你想把MD文件中的图片也存到github上（你肯定想的）

你需要把存图片的地址改为相对地址。

文件  ==> 偏好设置 ==> 图像 ==> 

```复制图片到 ./${filename}.assets 文件夹``` /  

- [x] 对本地位置的图片应用上述规则/
- [x] 优先使用相对路径

## How to use them

1. Create a repository for typora‘s MD file.

2. git clone it to local

3. move ```commit_push.sh``` in to **your own folder which you need to backup it to github** , not my folder.

4. offer ```commit_push.sh```  the running permission and write you account and password.[don't reveal them]

   ```
   chmod +x commit_push.sh
   
   vim commit_push.sh
   #and put your account and password.
   ```

5. run it

   

1.创建一个用来存typora的MD文件的仓库

2.将其克隆到本地

3.把```commit_push.sh```放进**你自己将要用来备份至github中的文件夹**里，而不是我的这个。

4.赋予 ```commit_push.sh``` 运行权限，并写入你的账号密码【不要泄露他们】

   ```shell
   chmod +x commit_push.sh
   
   vim commit_push.sh
   #and put your account and password.
   ```

5.运行它

   ```
   ./commit_push.sh 
   ```

   

## Note that

- protect your password well, don't reveal them.

- don't change the name 'commit_push.sh',because it related to some setup issues

- ```commit_push.sh``` can be used not only for typora, but also some other file need to be backup on Github.

  =================================================================
  
- 保护好你的密码，不要泄露他们。

- 别给commit_push.sh改名字，这涉及到一些设置问题。

- ```commit_push.sh```不止可以给typora用，也可以给其他一些需要备份到Github上的文件用（方法如上）。
