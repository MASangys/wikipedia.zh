[缩略图](https://zh.wikipedia.org/wiki/File:UMTS_Router_Surf@home_II,_o2-0017.jpg "fig:缩略图")
**MAC地址**（**）**，直译为**媒體存取控制位址**，也稱為**局域网地址**（LAN
Address），**以太网地址**（Ethernet Address）或**物理地址**（Physical
Address），它是一个用來确认網路設備位置的位址。在[OSI模型中](../Page/OSI模型.md "wikilink")，第三層網路層負責[IP地址](../Page/IP地址.md "wikilink")，第二層資料鏈結層則負責MAC位址。MAC地址用于在网络中唯一标示一个[网卡](../Page/网卡.md "wikilink")，一台设备若有一或多个网卡，则每个网卡都需要并会有一个唯一的MAC地址。

## 格式

MAC位址共48位元（6個位元組），以[十六進位表示](../Page/十六進位.md "wikilink")。前24位元由[IEEE決定如何分配](../Page/IEEE.md "wikilink")，後24位元由實際生產該網路設備的廠商自行指定。

ff:ff:ff:ff:ff:ff则作为廣播位址。

01:xx:xx:xx:xx:xx是多播地址，01:00:5e:xx:xx:xx是[IPv4多播地址](../Page/IPv4.md "wikilink")。

## 举例

假設現有一台[路由器](../Page/路由器.md "wikilink")，含有一個WAN埠及四個LAN埠。它的WAN埠會有一個如61.61.61.61的[IP位址](../Page/IP位址.md "wikilink")，也會有一個如00:0A:02:0B:03:0C的MAC位址。而它的四個LAN埠會各分配到一個例如192.168.1.0/24的IP位址，四個埠各會有一個不同的MAC位址。

## 如何查看MAC位址

### Windows

在[Windows命令提示符](../Page/命令提示符.md "wikilink")（cmd.exe）下运行 ipconfig /all
命令。假设运行结果含：

`        Physical Address. . . . . . . . . : 00-05-5D-E8-0F-A3`

那么其中的00-05-5D-E8-0F-A3就是本机网卡的MAC地址。如果计算机上有多个网络设备（无论物理或虚拟），则会有多组信息及MAC地址，需辨识相应的设备。

### Linux

第一种： 在 [Linux](../Page/Linux.md "wikilink") 下运行
[ifconfig](../Page/ifconfig.md "wikilink") 命令，如下：

`$ ifconfig`
`eth0    Link encap:Ethernet HWaddr 00:0C:29:01:98:27`
`        inet addr:192.168.1.88  Bcast:192.168.1.255  Mask:255.255.255.0`
`        UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1`
`        RX packets:74978 errors:0 dropped:0 overruns:0 frame:0`
`        TX packets:38451 errors:0 dropped:0 overruns:0 carrier:0`
`        collisions:0 txqueuelen:100`
`        RX bytes:14157042 (13.5 Mb)  TX bytes:5063398 (4.8 Mb)`
`        Interrupt:18 Base address:0x1080`

`lo      Link encap:Local Loopback`
`        inet addr:127.0.0.1  Mask:255.0.0.0`
`        UP LOOPBACK RUNNING  MTU:16436  Metric:1`
`        RX packets:1097 errors:0 dropped:0 overruns:0 frame:0`
`        TX packets:1097 errors:0 dropped:0 overruns:0 carrier:0`
`        collisions:0 txqueuelen:0`
`        RX bytes:151393 (147.8 Kb)  TX bytes:151393 (147.8 Kb)`

eth0 为第一块物理网卡， HWaddr 00:0C:29:01:98:27 就是MAC地址，lo为本地回环地址。

第二种： 运行 [ip](../Page/ip.md "wikilink") 命令(是一个命令，不是Tcp/Ip里的ip)，示例如下：

`$ ip link show`
`1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default `
`   link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00`
`2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP mode DEFAULT group default qlen 1000`
`   link/ether 28:d2:44:d4:e6:ea brd ff:ff:ff:ff:ff:ff`

其中'$'是linux下的命令提示符，一般情况下：$ 表示一般用户，\# 表示root用户

## 如何修改MAC地址

网卡MAC地址可以通过[驱动程式或其他工具修改](../Page/驱动程式.md "wikilink")。對於某些手機、平板電腦設備來說，其MAC地址／產品序號均由廠方連同銷售或保修時的客戶資料一併記錄在案\[1\]，而有關的MAC地址也不可通過常規手段來修改。

## 參考資料

## 外部链接

  - [IEEE-SA - Registration Authority MA-L Public
    Listing](http://standards.ieee.org/develop/regauth/oui/public.html)

  - [如何修改网卡的MAC地址](http://www.jeriffcheng.com/change-the-mac-address-of-adapter-with-ryll-mac-editor.html)

[Category:介质访问控制](https://zh.wikipedia.org/wiki/Category:介质访问控制 "wikilink")

1.