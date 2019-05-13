**iptables**是運行在[使用者空間的應用軟體](../Page/使用者空間.md "wikilink")，通過控制[Linux內核](../Page/Linux內核.md "wikilink")[netfilter模組](../Page/netfilter.md "wikilink")，來管理網路封包的处理和转发。在大部分[Linux发行版中](../Page/Linux发行版.md "wikilink")，可以通过[手册页](../Page/手册页.md "wikilink")\[1\]或`man
iptables`获取用户手册。通常iptables需要[内核模块支持才能运行](../Page/内核模块.md "wikilink")，此处相应的内核模块通常是Xtables。因此，iptables操作需要[超级用户权限](../Page/超级用户.md "wikilink")，其可执行文件通常位于`/sbin/iptables`或`/usr/sbin/iptables`。同时，需要说明的是，以上命令通常只用于处理[IPv4数据包](../Page/IPv4.md "wikilink")；而对于[IPv6数据包](../Page/IPv6.md "wikilink")，则使用类似的**ip6tables**命令。\[2\]

目前，iptables支持内核2.4以上版本，旧版内核环境下则使用[ipchains](../Page/ipchains.md "wikilink")（于2.2版内核）或[ipwadm](../Page/ipwadm.md "wikilink")（于2.0版内核）完成类似的功能。2014年1月19日起發行的Linux内核3.13版则使用[nftables取而代之](../Page/nftables.md "wikilink")，但仍然提供iptables命令做为兼容接口。\[3\]

## 概要

[Netfilter-packet-flow.svg](https://zh.wikipedia.org/wiki/File:Netfilter-packet-flow.svg "fig:Netfilter-packet-flow.svg")
iptables、ip6tables等都使用Xtables框架。存在「表（tables）」、「链（chain）」和「规则（rules）」三个层面。

每个「表」指的是不同类型的数据包处理流程，如`filter表`表示进行数据包过滤，而`nat表`针对连接进行地址转换操作。每个表中又可以存在多个「链」，系统按照预订的规则将数据包通过某个内建链，例如将从本机发出的数据通过`OUTPUT链`。在「链」中可以存在若干「规则」，这些规则会被逐一进行匹配，如果匹配，可以执行相应的动作，如修改数据包，或者跳转。跳转可以直接接受该数据包或拒绝该数据包，也可以跳转到其他链继续进行匹配，或者从当前链返回调用者链。当链中所有规则都执行完仍然没有跳转时，将根据该链的默认策略（「policy」）执行对应动作；如果也没有默认动作，则是返回调用者链。\[4\]

### filter表

filter表是默认的表，如果不指明表则使用此表。其通常用于过滤数据包。其中的内建链包括：

  - INPUT，输入链。发往本机的数据包通过此链。
  - OUTPUT，输出链。从本机发出的数据包通过此链。
  - FORWARD，转发链。本机转发的数据包通过此链。

### nat表

nat表如其名，用于[地址转换操作](../Page/网络地址转换.md "wikilink")。其中的内建链包括：

  - PREROUTING，路由前链，在处理路由规则前通过此链，通常用于目的地址转换（DNAT）。
  - POSTROUTING，路由后链，完成路由规则后通过此链，通常用于源地址转换（SNAT）。
  - OUTPUT，输出链，类似PREROUTING，但是处理本机发出的数据包。

### mangle表

mangle表用于处理数据包。其和nat表的主要区别在于，nat表侧重连接而mangle表侧重每一个数据包。\[5\]其中内建链列表如下。

  - PREROUTING
  - OUTPUT
  - FORWARD
  - INPUT
  - POSTROUTING

### raw表

raw表用于处理异常，有如下两个内建链：

  - PREROUTING
  - OUTPUT

## 命令示例

### 防火墙示例

一个典型的工作站的防火墙配置实例。超级用户（root）可以用"`iptables
-L`"指令顯示防火牆上的配置。完整的配置可以添加`-v`或`-vv`参数来显示更详细信息，或者使用`iptables-save
-c`导出生成当前表的命令。由于没有指明「表」，因此默认使用`filter表`。

```
 # iptables -L
 Chain INPUT(policy DROP)
 target     prot opt source               destination
 ACCEPT     all—localhost.localdomain  localhost.localdomain
 ACCEPT     all—anywhere             anywhere            state RELATED,ESTABLISHED
 REJECT     all—anywhere             anywhere

 Chain FORWARD(policy DROP)
 target     prot opt source               destination

 Chain OUTPUT(policy ACCEPT)
 target     prot opt source               destination
```

以上配置允许本机连接所有外部的系统，拒绝（REJECT）或丢弃（DROP）任何发往本机的数据包，但是有以下例外（和`INPUT链`逐一对应）：

  - 来自[本地环回地址的连接](../Page/Localhost.md "wikilink")。
  - 已建立的连接（ESTABLISHED），如本机发起到远端的连接后远端的回应。
  - 关联的连接（RELATED），如[FTP协议使用的额外端口](../Page/文件传输协议.md "wikilink")。\[6\]

此时，来自外部的[ping将没有回应](../Page/ping.md "wikilink")：

```
 $  ping -c 1 10.0.0.1
 PING 10.0.0.1 (10.0.0.1) 56(84) bytes of data.
 --- 10.0.0.1 ping statistics ---
 1 packets transmitted, 0 received, 100% packet loss, time 0ms
```

外部尝试连接本机的[HTTP端口](../Page/HTTP.md "wikilink")（即[TCP](../Page/传输控制协议.md "wikilink")
80端口）将被拒绝连接：

```
 $ telnet 10.0.0.1 80
 Trying 10.0.0.1...
 telnet: connect to address 10.0.0.1: Connection refused
```

但本机访问外部（OUTPUT）均正常，因为其链为空且默认策略为接受（ACCEPT）；且本机不转发（FORWARD）数据包，因为其默认策略为丢弃（DROP）。需要额外注意的是，这里仅展示了IPv4的情况，若同时使用IPv6则需要另行配置ip6tables。

### 端口重定向示例

iptables的重要功能之一是用于端口和/或地址的转换。如下示例展示了將預設[HTTP埠的封包由](../Page/HTTP.md "wikilink")80轉向8080埠。這樣，HTTP的daemon可以允許由一般用户權限啟動，而不需要對一般使用者無法將埠號綁在1024埠以下的限制的問題多加考慮。

`iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT
--to-port 8080`

注意：如果你在你的電腦上面運行了這個指令，它只會對連到你的機器上的外部的IP發生效果。從本地端發起的連線不會遵循nat表上PREROUTING鏈的設置。如果你想讓本地端也遵循規則，你可以另外鍵入下面的指令：

`iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT
--to-port 8080`

這條規則會將lo介面上的封包輸出由80埠轉向到8080埠上面。

### [网络地址转换示例](../Page/网络地址转换.md "wikilink")

典型设置如办公室用小型局域网，由一台Linux主机作为[路由器共享地址接入](../Page/路由器.md "wikilink")[Internet](../Page/Internet.md "wikilink")。

假设局域网接口为eth0，地址使用192.168.0.0/24；而Internet接口为eth1，使用的地址为198.51.100.3。

在局域网用户访问Internet时，源地址需要被转换为198.51.100.3，则使用规则：

```
 iptables -t nat -I POSTROUTING -s 192.168.0.0/24 -o eth1 -j SNAT --to 198.51.100.3
```

若需要在局域网192.168.0.2上开启HTTP服务，则可以设置相应的DNAT服务，将访问外部TCP 80端口的数据包重定向：

```
 iptables -t nat -I PREROUTING -p tcp -d 198.51.100.3 --dport 80 -j DNAT --to 192.168.0.2
```

需要注意的是，转发操作需要在`filter表`中`FORWARD链`中允许，并且打开系统的转发功能。\[7\]

## 其他控制界面

### 前端控制介面及命令

有很多第三方软件可以帮助设定iptables规则。前端介面像是[Ncurses或圖型介面可以讓使用者用點選的方式產生許多簡單的規則](../Page/Ncurses.md "wikilink")。命令稿通常是參照[Unix
shell產生出來的](../Page/Unix_shell.md "wikilink")（不過當然也有可能會使用其它種類型的命令稿），它們有的會用一些預先定義好的規則或簡單的範本來调用iptables或`iptables-restore`执行。一些Linux發行版公司會在它們的發行版裡面包含这些方式，當然像這樣的方式能產生的變化就相當有限，不過也因為產生規則的方式很簡單，所以甚至可以利用php網頁撰寫的方式來產生這些規則。

此类前端装置如生成器（generator）或脚本（script）往往会被其模板限制，模板仅仅能使用用户定义规则并替换指定的部分，如只能替换端口或IP地址，同时，生成的规则往往难以达到最佳状态，需要进行进一步优化，如此会增加开发和运维的成本。如果用户想要了解iptables并且优化自己的规则，则需要自己创建规则。

### 前端的設定

  - [Firewall
    Builder](https://web.archive.org/web/20081210035025/http://www.fwbuilder.org/)
    —圖形前端配合規則/字集產生器、及自動規則集（automated ruleset）載入。
  - [Shorewall](../Page/Shorewall.md "wikilink")，以本文為基礎的規則產生器。

### 其它的工具

  - Fwsnort - iptables侵入測試以字串比對法及是諾特規則（Snort
    Rule）來進行[FWSnort](http://www.cipherdyne.org/fwsnort/)，Translates
    a Snort IDS ruleset into an IPTables ruleset.

### Iptables/Netfilter圖表

為了較好地了解一個封包穿越内核層的X表（Xtables）之表/鏈（table/chain），你可以參考下列圖表的使用：

  - Netfilter封包流；勾/表（hook/table）秩列[1](http://jengelh.medozas.de/images/nf-packet-flow.png)

## 參照

  - [ipchains為iptables的前一代](../Page/ipchains.md "wikilink")
  - [Netlink為Netfilter使用之API](../Page/Netlink.md "wikilink")
  - [NuFW延伸到Netfilter之認證防火墻](../Page/NuFW.md "wikilink")
  - [nftables为iptables的后继者](../Page/nftables.md "wikilink")

### 其它防火墻的解決方案

  - [PF (firewall)](../Page/PF_\(firewall\).md "wikilink")
  - [ipfirewall](../Page/ipfirewall.md "wikilink")
  - [ipfilter](../Page/ipfilter.md "wikilink")

## 外部連結

  - [The netfilter/iptables project Web page](http://www.netfilter.org/)

  - [Freshmeat project page for the iptables
    package](http://freshmeat.net/projects/iptables/)
  - [The netfilter/iptables documentation
    page](http://www.netfilter.org/documentation/index.html) (outdated)

## 参考文献

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:防火墙软件](https://zh.wikipedia.org/wiki/Category:防火墙软件 "wikilink")

1.  <https://linux.die.net/man/8/iptables>
2.  <https://www.linux.com/learn/intro-to-linux/2017/8/iptables-rules-ipv6>
3.  <https://netfilter.org/projects/nftables/>
4.  <https://lesca.me/archives/iptables-tutorial-structures-configuratios-examples.html>
5.  <https://www.netfilter.org/documentation/HOWTO/NAT-HOWTO-6.html>
6.  <https://major.io/2007/07/01/active-ftp-connections-through-iptables/>
7.  <https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Security_Guide/s1-firewall-ipt-fwd.html>