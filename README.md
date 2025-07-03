# login-police
Send a message to yourself on telegram when a new ssh session is started

# How to use
1. Move script to proper location:
```
cp login-police.sh /etc/ssh/login-police.sh
```
2. Open the file in an editor and enter your Telegram credentials:
```
$EDITOR /etc/ssh/login-police.sh
```
3. Fix file permissions:
```
chown root:root /etc/ssh/login-police.sh
chmod 700 /etc/ssh/login-police.sh
```
4. Add the following line to /etc/pam.d/sshd:
```
session optional pam_exec.so seteuid /etc/ssh/login-police.sh
```
5. Restart sshd:
```
systemctl restart sshd
```
