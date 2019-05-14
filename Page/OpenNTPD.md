**OpenNTPD**是一个[Unix系统](../Page/Unix.md "wikilink")[网络时间协议](https://zh.wikipedia.org/wiki/网络时间协议 "wikilink")（NTP）实现的[守护进程](../Page/守护进程.md "wikilink")，可以使计算机系统的本地时钟与远程NTP服务器同步。它也可以作为一个NTP兼容客户端的NTP服务器。

OpenNTPD作为[OpenBSD计划的一部分](../Page/OpenBSD.md "wikilink")，主要由[亨宁·布劳尔负责开发](https://zh.wikipedia.org/wiki/亨宁·布劳尔 "wikilink")。其设计目标包括安全（不可被[利用](https://zh.wikipedia.org/wiki/Exploit "wikilink")）、易于配置、在大多数情况足够精确及可在[BSD许可证下分发](../Page/BSD许可证.md "wikilink")[源代码](../Page/源代码.md "wikilink")。如[OpenSSH](../Page/OpenSSH.md "wikilink")，它另有一个单独的子项目来开发[可移植版本](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")，其为OpenBSD的版本添加了兼容性代码，且与主项目分开发布新版本。可移植版由[达伦·塔克开发](https://zh.wikipedia.org/wiki/达伦·塔克 "wikilink")。最新的可移植版发布于2006年。该项目的开发者得到了一些来自[OpenBSD基金会的资助](https://zh.wikipedia.org/wiki/OpenBSD基金会 "wikilink")。

## 历史

当时NTP守护进程的一系列问题促成了OpenNTPD的开发：难以配置，复杂、难以审计的代码，及不合适的许可\[1\]。OpenNTPD的目标就是要解决这些问题，扩大时间同步的用户数量。经过一段时间的开发，OpenBSD
3.6中第一次出现了OpenNTPD\[2\]。它的第一个版本于2004年11月2日发布\[3\]。

## 目标

OpenBSD团队计划开发一个安全、易于安全审计、极简的设置和管理、占用较小内存的同时又能足够精确的NTP守护进程实现，这就是OpenNTPD。因此，OpenNTPD的设计目标是：安全、易用及性能\[4\]。强力的网络输入路径有效性检查、由[strlcpy保证的有界缓冲区操作](https://zh.wikipedia.org/wiki/strlcpy "wikilink")、[权限分离以防止利用守护进程进行](https://zh.wikipedia.org/wiki/权限分离 "wikilink")[权限提升](https://zh.wikipedia.org/wiki/权限提升 "wikilink")，减小可能存在的安全漏洞的影响，这些都使得OpenNTPD更加安全。为了简化NTP的使用，较其它如网络时间协议项目所提供的NTP守护进程，OpenNTPD只实现了部分功能。只提供足够的功能的目标对典型的使用已经足够，但却可能无法满足奇怪或或特殊的需求。OpenNTPD通过*ntpd.conf*配置文件进行配置\[5\]。其中提供的选项也是最小化的：OpenNTPD监听的IP地址或主机名，将要修改的时间设备，及用于同步时间的一组服务器。OpenNTPD尽力做到精确；守护进程会尽可能精确，但不对具体的精度做出保证。

## 示例

OpenNTPD逐步调整系统时钟，如在[64位](https://zh.wikipedia.org/wiki/64位 "wikilink")[Arch
Linux系统上运行OpenNTPD输出示例所示](../Page/Arch_Linux.md "wikilink")：

    [root@nikolai karam]# more /var/log/daemon.log | grep ntp | grep adjusting | tail -20
    Aug  4 02:58:21 nikolai ntpd[4784]: adjusting local clock by -2.134620s
    Aug  4 03:02:38 nikolai ntpd[4784]: adjusting local clock by -1.983869s
    Aug  4 03:06:53 nikolai ntpd[4784]: adjusting local clock by -1.884521s
    Aug  4 03:08:28 nikolai ntpd[4784]: adjusting local clock by -1.819296s
    Aug  4 03:12:46 nikolai ntpd[4784]: adjusting local clock by -1.712934s
    Aug  4 03:15:48 nikolai ntpd[4784]: adjusting local clock by -1.607747s
    Aug  4 03:19:31 nikolai ntpd[4784]: adjusting local clock by -1.535188s
    Aug  4 03:21:05 nikolai ntpd[4784]: adjusting local clock by -1.439628s
    Aug  4 03:24:56 nikolai ntpd[4784]: adjusting local clock by -1.376086s
    Aug  4 03:29:12 nikolai ntpd[4784]: adjusting local clock by -1.271529s
    Aug  4 03:32:20 nikolai ntpd[4784]: adjusting local clock by -1.162333s
    Aug  4 03:36:08 nikolai ntpd[4784]: adjusting local clock by -1.023899s
    Aug  4 03:40:02 nikolai ntpd[4784]: adjusting local clock by -0.902637s
    Aug  4 03:43:43 nikolai ntpd[4784]: adjusting local clock by -0.789431s
    Aug  4 03:47:35 nikolai ntpd[4784]: adjusting local clock by -0.679320s
    Aug  4 03:50:45 nikolai ntpd[4784]: adjusting local clock by -0.605858s
    Aug  4 03:53:31 nikolai ntpd[4784]: adjusting local clock by -0.529821s
    Aug  4 03:56:33 nikolai ntpd[4784]: adjusting local clock by -0.429573s
    Aug  4 03:59:46 nikolai ntpd[4784]: adjusting local clock by -0.312575s
    Aug  4 04:03:14 nikolai ntpd[4784]: adjusting local clock by -0.232646s
    [root@nikolai karam]#

## 批评

OpenNTPD被批评\[6\]没有网络时间协议项目的NTP守护进程\[7\]精确。OpenNTPD项目也承认这种说法的合理性，但它声称这是在微秒精度和OpenNTPD提供的简便性及安全性之间做出的平衡。

OpenNTPD也被批评违反了NTP协议，因为其在传输数据时省略掉了精确性信息：OpenNTPD服务器声明自己是无限精确的（早期版本在第1层声明；虽然前述问题已得到修复\[8\]，OpenNTPD
3.9p1仍然提供的是零误差时间\[9\]）。

在OpenNTPD3.6发布后不久，布拉德·诺尔斯发表了一篇题为《OpenNTPd是有害的》\[10\]的文章，从各个方面批评了OpenNTPD，以及该项目及[OpenSSH和](../Page/OpenSSH.md "wikilink")[OpenBGPD所采用的](../Page/OpenBGPD.md "wikilink")[拆分开发模式](https://zh.wikipedia.org/wiki/拆分开发 "wikilink")。作为回应，OpenNTPD可移植分支的主要开发者达伦·塔克写了一篇详细的文章\[11\]，阐述了一些在OpenNTPD
3.6.1所解决的问题，并认为诺尔斯的一些言论“有误导之嫌”。诺尔斯的文章也使OpenBSD网络常见问题添加了一个章节\[12\]，解释和反驳其主张。

## 参考

## 外部链接

  -
  - [亨宁·布劳尔对OpenNTPD的解析](http://www.openbsd.org/papers/ntpd_sucon04/index.html)

  - [OpenNTPD相关的OpenBSD网络常见问题](http://www.openbsd.org/faq/faq6.html#OpenNTPD)

[Category:网络时间相关软件](https://zh.wikipedia.org/wiki/Category:网络时间相关软件 "wikilink")
[Category:BSD软件](https://zh.wikipedia.org/wiki/Category:BSD软件 "wikilink")
[Category:OpenBSD](https://zh.wikipedia.org/wiki/Category:OpenBSD "wikilink")

1.

2.

3.

4.

5.  . 26 May 2006. Retrieved 16 September 2006.

6.

7.  [网络时间协议项目官方网站](http://www.ntp.org/)

8.

9.

10.

11.
12.