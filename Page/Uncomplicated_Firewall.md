[Gufw_10.04.4.png](https://zh.wikipedia.org/wiki/File:Gufw_10.04.4.png "fig:Gufw_10.04.4.png")\]\]

UFW 全称为 **Uncomplicated Firewall**\[1\]，是
[Ubuntu](../Page/Ubuntu.md "wikilink")
系统上默认的[防火墙组件](../Page/防火墙.md "wikilink"),
为了轻量化配置 iptables 而开发的一款工具。UFW
提供一个非常友好的界面用于创建基于[IPV4](https://zh.wikipedia.org/wiki/IPV4 "wikilink")，[IPV6的防火墙规则](https://zh.wikipedia.org/wiki/IPV6 "wikilink")。

但是，UFW
是沒有圖形化使用者界面的，它使用指令列操作，所以，操作起來就不是那麼的方便，有人幫它寫了個圖形化使用者界面，名字就叫做「Gufw」。

## 基本语法和例子 (Ubuntu Server 14.04)

理论上来说, 无论是桌面版还是服务器版, ufw 的命令行用法是一样的.

基本语法: ufw COMMAND

### 打开与关闭

ufw enable / 打开防火墙

ufw disable / 关闭防火墙

ufw status / 显示防火墙状态

ufw status verbose / 查看防火墙详细状态

### 允许与阻止

ufw allow / 增加一条表示允许的规则

`例子: ufw allow 53 / 允許通過 53 連接埠使用 tcp 和 udp 協定連線本機`

ufw deny / 增加一條表示阻止的規則 

`例子: ufw deny 53/tcp 阻止通過 53 連接埠使用 tcp 協定連線本機 `

ufw reject / 增加一條表示拒絕的規則

### 以服務名稱代表連接埠

可以使用

`less /etc/services`

列出所有服務的資訊，其中包括該服務使用了何連接埠及協定。

## 進階語法與參數

### 為規則編號

ufw status numbered                 show firewall status as numbered
list of RULES 

### 其他指令參數

default ARG                     set default policy / 設定預設規則

logging LEVEL                   set logging to LEVEL 

limit ARGS                      add limit rule 

delete RULE|NUM                 delete RULE / 刪除規則

insert NUM RULE                 insert RULE at NUM / 插入規則

reload                          reload firewall / 重新啟動防火牆

reset                           reset firewall / 重設防火牆

show ARG                        show firewall report 

version                         display version information

Application profile commands: 

app list                        list application profiles 

app info PROFILE                show information on PROFILE 

app update PROFILE              update PROFILE 

app default ARG                 set default application policy

### 相似指令參數介紹

deny 與 reject 的區別在於：使用 deny 時，對方不會得到任何通知，而使用 reject 時則明確告訴對方被靜止了。

[ast:Uncomplicated
Firewall](https://zh.wikipedia.org/wiki/ast:Uncomplicated_Firewall "wikilink")

[Category:防火墙软件](https://zh.wikipedia.org/wiki/Category:防火墙软件 "wikilink")
[Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink")

1.