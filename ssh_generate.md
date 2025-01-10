# 如何在A上免密登录服务器
如果没有在本机A上设置ssh，首先输入指令
```bash
ssh-keygen -t rsa -C "MY_SSH"
```
参数解释：
- -t表示ssh的秘钥类型，常用的有rsa、ed25519、dss，一般用rsa
- -C表示注释或者名称，这个值随意，但最好使用纯英文

创建好ssh公钥和私钥之后，输入指令:
```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub name@xx.xx.xx.xx
```
上面这条命令是写到服务器的ssh目录。可以在服务器的`~/.ssh`目录下查看`authorized_keys`，可以查看到客户端写入到服务器的id_rsa.pub公钥内容。

