**Aircrack-ng**是一个与[802.11标准的无线网络分析有关的安全软件](https://zh.wikipedia.org/wiki/802.11 "wikilink")，主要功能有：网络侦测，[数据包嗅探](https://zh.wikipedia.org/wiki/嗅探 "wikilink")，[WEP和](https://zh.wikipedia.org/wiki/有线等效加密 "wikilink")[WPA](../Page/WPA.md "wikilink")/[WPA2-PSK破解](https://zh.wikipedia.org/wiki/WPA2-PSK "wikilink")。Aircrack-ng可以工作在任何支持[监听模式的无线网卡上](https://zh.wikipedia.org/wiki/监听模式 "wikilink")（设备列表请参阅其官方网站或[1](https://web.archive.org/web/20081205015616/http://wiki.remote-exploit.org/index.php/HCL%3AWireless)）并嗅探[802.11a](https://zh.wikipedia.org/wiki/802.11a "wikilink")，[802.11b](https://zh.wikipedia.org/wiki/802.11b "wikilink")，[802.11g的数据](https://zh.wikipedia.org/wiki/802.11g "wikilink")。该程序可运行在[Linux](../Page/Linux.md "wikilink")和[Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。Linux版本已经被移植到了[Zaurus和](https://zh.wikipedia.org/wiki/Sharp_Zaurus "wikilink")[Maemo](../Page/Maemo.md "wikilink")[系统平台](../Page/系统平台.md "wikilink"),
并[概念验证可移植到](https://zh.wikipedia.org/wiki/概念验证 "wikilink")[iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")。

2007年四月，[德国](../Page/德国.md "wikilink")[达姆施塔特工业大学](../Page/达姆施塔特工业大学.md "wikilink")的研究小组根据[Adi
Shamir](https://zh.wikipedia.org/wiki/Adi_Shamir "wikilink")（[RSA发明人之一](https://zh.wikipedia.org/wiki/RSA加密算法 "wikilink")）发表的论文，研究出了一种新的攻击方式。这个名叫“PTW”的方法降低了在解密WEP所需的的[初始化向量数量并从aircrack](../Page/初始向量.md "wikilink")-ng
0.9版本开始被应用。

Aircrack-ng是Aircrack项目的一个分支。

## 特性

aircrack-ng 套件包含有：

| Name           | Description                                                                                                                                                                               |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| aircrack-ng    | 破解[WEP以及](https://zh.wikipedia.org/wiki/有线等效加密 "wikilink")[WPA](https://zh.wikipedia.org/wiki/Wi-Fi_Protected_Access "wikilink")（[字典攻击](https://zh.wikipedia.org/wiki/字典攻击 "wikilink")）密钥 |
| airdecap-ng    | 通过已知密钥来解密WEP或WPA嗅探数据                                                                                                                                                                      |
| airmon-ng      | 将网卡设定为监听模式                                                                                                                                                                                |
| aireplay-ng    | [数据包注入工具](https://zh.wikipedia.org/wiki/数据包注入 "wikilink")（Linux和Windows使用[CommView驱动程序](https://zh.wikipedia.org/wiki/CommView "wikilink")）                                               |
| airodump-ng    | [数据包嗅探](https://zh.wikipedia.org/wiki/嗅探 "wikilink")：将无线网络数据输送到PCAP或IVS文件并显示网络信息                                                                                                          |
| airtun-ng      | 创建虚拟管道                                                                                                                                                                                    |
| airolib-ng     | 保存、管理ESSID密码列表                                                                                                                                                                            |
| packetforge-ng | 创建数据包注入用的加密包。                                                                                                                                                                             |
| Tools          | 混合、转换工具                                                                                                                                                                                   |
| airbase-ng     | 软件模拟AP                                                                                                                                                                                    |
| airdecloak-ng  | 消除pcap文件中的WEP加密                                                                                                                                                                           |
| airdriver-ng   | 无线设备驱动管理工具                                                                                                                                                                                |
| airolib-ng     | 保存、管理ESSID密码列表，计算对应的密钥                                                                                                                                                                    |
| airserv-ng     | 允许不同的进程访问无线网卡                                                                                                                                                                             |
| buddy-ng       | easside-ng的文件描述                                                                                                                                                                           |
| easside-ng     | 和AP接入点通讯（无WEP）                                                                                                                                                                            |
| tkiptun-ng     | WPA/TKIP攻击                                                                                                                                                                                |
| wesside-ng     | 自动破解WEP密钥                                                                                                                                                                                 |
|                |                                                                                                                                                                                           |

## Gerix Wifi Cracker

Gerix Wifi Cracker
是一个在Linux上的aircrack-ng前端[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")。
Gerix 同样遵循[GNU General Public
License协议并在某些](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")[Linux发行版](../Page/Linux发行版.md "wikilink")诸如[BackTrack](../Page/BackTrack.md "wikilink")中用来做入侵检测。Gerix囊括了大量[入侵检测工具](https://zh.wikipedia.org/wiki/入侵检测 "wikilink")：网络分析，数据包抓取（嗅探），数据包注入。

## 相关条目

  - [嗅探器](https://zh.wikipedia.org/wiki/嗅探 "wikilink")
  - [SpoonWEP/WPA](https://zh.wikipedia.org/wiki/SpoonWEP/WPA "wikilink")
  - [AirSnort](https://zh.wikipedia.org/wiki/AirSnort "wikilink")
  - [BackTrack](../Page/BackTrack.md "wikilink")
  - [TCP sequence prediction
    attack](https://zh.wikipedia.org/wiki/TCP_sequence_prediction_attack "wikilink")

## 外部链接

  - [Aircrack-ng Homepage](http://www.aircrack-ng.org)
  - [Aircrack airodump and aireplay
    tutorial](http://www.tuto-fr.com/en/tutorial/tutorial-crack-wep-aircrack.php)
  - [Aircrack-ng suite of wireless tools:
    Videos](https://web.archive.org/web/20110123110522/http://www.securitytube.net/AireplayNG-\(Part-1\)-video.aspx)
  - [Aircrack-ng (WEP, WPA-PSK crack) on
    openSUSE10.1](https://web.archive.org/web/20120805024038/http://www.grape-info.com/doc/linux/config/aircrack-ng-0.6.html)
  - [Aircrack-2.3 on Windows (Wireless WEP
    crack)](https://web.archive.org/web/20120418222144/http://www.grape-info.com/doc/win2000srv/security/aircrack-2.3.html)
  - [A list of wireless cards that can go into monitor
    mode/inject](https://web.archive.org/web/20081205015616/http://wiki.remote-exploit.org/index.php/HCL%3AWireless)
  - [Aircrack-ng on
    BackTrack](http://webarchive.loc.gov/all/20090302052258/http://remote-exploit.org//backtrack.html)

[Category:網絡分析器](https://zh.wikipedia.org/wiki/Category:網絡分析器 "wikilink")
[Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")
[Category:密码分析软件](https://zh.wikipedia.org/wiki/Category:密码分析软件 "wikilink")