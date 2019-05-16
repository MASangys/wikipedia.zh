{{ infobox OS | name = Contiki | screenshot =
[Contiki-avr.png](https://zh.wikipedia.org/wiki/File:Contiki-avr.png "fig:Contiki-avr.png")
| caption = 在Contiki的[Atmel
AVR移植版本上运行的](../Page/Atmel_AVR.md "wikilink")[VNC服务器的截图](https://zh.wikipedia.org/wiki/Virtual_Network_Computing "wikilink")。
| developer =  | source_model = [开放源代码](../Page/开放源代码.md "wikilink") |
released =  | latest release version = 3.0 | latest release date =  | ui
=  | license = [BSD许可证](../Page/BSD许可证.md "wikilink") | working_state =
当前 | website =  }}
**Contiki**是一个小型、[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")、极易移植的多任务电脑操作系统。它专门设计以适用于一系列的内存受限的网络系统，包括从8位电脑到微型控制器的嵌入系统。它的名字来自于[托尔·海尔达尔的](../Page/托尔·海尔达尔.md "wikilink")[康提基号](https://zh.wikipedia.org/wiki/康提基号 "wikilink")。

Contiki只需几千[字节的代码和几百](../Page/字节.md "wikilink")[字节的](../Page/字节.md "wikilink")[内存就能提供多任务环境和内建](https://zh.wikipedia.org/wiki/内存 "wikilink")[TCP/IP支持](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")。

作为基础的内核以及大部分的核心功能是[瑞典计算机科学研究所的网络内嵌系统小组的](https://zh.wikipedia.org/wiki/瑞典计算机科学研究所 "wikilink")[Adam
Dunkels开发的](https://zh.wikipedia.org/wiki/Adam_Dunkels "wikilink")。

## 设计

Contiki适用于只有极少量内存的嵌入式系统。在一个较为典型的配置中，Contiki系统只需2Kb的RAM与40Kb的ROM。
Contiki包括了一个事件驱动的内核，因此可以在运行时动态载入上层应用程序。Contiki中使用轻量级的[protothreads](https://zh.wikipedia.org/wiki/protothreads "wikilink")[进程模型](https://zh.wikipedia.org/wiki/进程 "wikilink")，可以在事件驱动内核上提供一种线性的、类似于线程的编程风格。

## 平台

Contiki可运行于各种平台上，包括嵌入式微控制器（例如TI
[MSP430及](../Page/MSP430.md "wikilink")[Atmel
AVR](../Page/Atmel_AVR.md "wikilink")）以及旧的家用电脑。程序代码量只有几K，存储器的使用量也只有几十Kb。

## 特点

Contiki可以在每个进程内选择是否支持先占式多线程，[进程间通讯通过事件利用消息来实现](https://zh.wikipedia.org/wiki/进程间通讯 "wikilink")。Contiki中还包括一个可选的[GUI子系统](https://zh.wikipedia.org/wiki/GUI "wikilink")，可以提供对本地终端、基于[VNC的网络化虚拟显示或者](../Page/VNC.md "wikilink")[Telnet的图形化支持](../Page/Telnet.md "wikilink")。

完整的Contiki系统包括以下特性：

  - 多任务内核
  - 每个应用程序中可选的先占式多线程
  - [Protothreads模型](https://zh.wikipedia.org/wiki/Protothreads "wikilink")
  - [TCP/IP网络支持](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")，包括[IPv6](../Page/IPv6.md "wikilink")
  - [视窗系统与](https://zh.wikipedia.org/wiki/视窗系统 "wikilink")[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")
  - 基于[VNC的网络化远程显示](../Page/VNC.md "wikilink")
  - [网页浏览器](../Page/网页浏览器.md "wikilink")
  - 个人[网络服务器](https://zh.wikipedia.org/wiki/网络服务器 "wikilink")
  - 简单的[Telnet客户端](../Page/Telnet.md "wikilink")
  - [屏幕保护程序](https://zh.wikipedia.org/wiki/屏幕保护程序 "wikilink")

## 移植版本

Contiki操作系统已被[移植到以下系统中](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")：

  - 电脑：
      - [Apple II
        family](https://zh.wikipedia.org/wiki/Apple_II_series "wikilink")\[1\]
      - [Atari
        8-bit](https://zh.wikipedia.org/wiki/Atari_8-bit_family "wikilink")\[2\]
      - [雅达利ST](https://zh.wikipedia.org/wiki/雅达利ST "wikilink")
      - [Atari
        Portfolio](https://zh.wikipedia.org/wiki/Atari_Portfolio "wikilink")
      - [Casio
        Pocketview](https://zh.wikipedia.org/wiki/Casio_Pocketview "wikilink")
      - [Commodore
        PET](https://zh.wikipedia.org/wiki/Commodore_PET "wikilink")\[3\]
      - [Commodore
        VIC-20](https://zh.wikipedia.org/wiki/Commodore_VIC-20 "wikilink")\[4\]
      - [Commodore
        64](https://zh.wikipedia.org/wiki/Commodore_64 "wikilink")\[5\]
      - [Commodore
        128](https://zh.wikipedia.org/wiki/Commodore_128 "wikilink")\[6\]
      - [Oric](https://zh.wikipedia.org/wiki/Tangerine_Computer_Systems "wikilink")\[7\]
      - [PC-6001](https://zh.wikipedia.org/wiki/NEC_PC-6001 "wikilink")
      - [Sharp
        Wizard](https://zh.wikipedia.org/wiki/Sharp_Wizard "wikilink")\[8\]

<!-- end list -->

  - 游戏机平台：
      - [PC
        Engine](https://zh.wikipedia.org/wiki/TurboGrafx-16#PC_Engine "wikilink")
      - [FC游戏机](https://zh.wikipedia.org/wiki/FC游戏机 "wikilink")
      - [雅达利Jaguar](../Page/雅达利Jaguar.md "wikilink")

<!-- end list -->

  - 手持游戏机平台：
      - [Game Boy](../Page/Game_Boy.md "wikilink")
      - [Game Boy Advance](../Page/Game_Boy_Advance.md "wikilink")
      - [GP32](https://zh.wikipedia.org/wiki/GP32 "wikilink")

<!-- end list -->

  - 微型控制器：
      - [Atmel AVR](../Page/Atmel_AVR.md "wikilink")
      - [LPC2103](https://zh.wikipedia.org/wiki/LPC2103 "wikilink")
      - [TI MSP430](https://zh.wikipedia.org/wiki/TI_MSP430 "wikilink")
      - [TI CC2430](https://zh.wikipedia.org/wiki/CC2430 "wikilink")

## 参见

  -
  -
  - [RIOT](https://zh.wikipedia.org/wiki/RIOT_\(operating_system\) "wikilink")

  -
  - [TinyOS](../Page/TinyOS.md "wikilink")

  -
  -
## 参考资料

## 外部链接

  -
  - [Contiki主页](https://web.archive.org/web/20100825150207/http://www.sics.se/contiki/)

  - [Contiki官方博客](http://contiki-os.blogspot.com)

  - [最全面的Contiki 6Lowpan物联网技术中文研究网站](http://www.iotdev.net)

  - [C64WEB.COM一个运行在一台未修改过的1982生产的Commodore 64上的网站](http://www.c64web.com/)

  - [1.x版本网站的非官方历史镜像](http://hitmen.c02.at/html/tools_contiki.html)

  - [关于IPv6的新信息](https://web.archive.org/web/20081018181149/http://www.sics.se/contiki/current-events/uipv6-contiki-is-ipv6-ready.html)

  - [移植到LPC2103的精简Contiki系统](https://web.archive.org/web/20140604192611/http://www.manishshakya.com.np/index.php/page/code)

[Category:嵌入式作業系統](https://zh.wikipedia.org/wiki/Category:嵌入式作業系統 "wikilink")
[Category:自由網頁瀏覽器](https://zh.wikipedia.org/wiki/Category:自由網頁瀏覽器 "wikilink")
[Category:自由作業系統](https://zh.wikipedia.org/wiki/Category:自由作業系統 "wikilink")
[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")

1.  [cc65](https://zh.wikipedia.org/wiki/cc65 "wikilink") based
    development

2.
3.
4.
5.
6.
7.
8.  [Running Contiki under
    Windows](https://web.archive.org/web/20031209140045/http://hstein.trix.net/contiki/)