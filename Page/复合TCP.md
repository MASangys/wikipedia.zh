**复合TCP**（，简称**CTCP**）是[微软](../Page/微软.md "wikilink")自[Windows Vista及Window](../Page/Windows_Vista.md "wikilink") Server 2008开始在[TCP栈中引入的一个算法](../Page/传输控制协议.md "wikilink")。它旨在积极调整发送方的，以在不损害的基础上（[HSTCP同样遵循](https://zh.wikipedia.org/wiki/高速TCP "wikilink")）优化TCP对高[带宽时延积连接的表现](https://zh.wikipedia.org/wiki/带宽时延积 "wikilink")。该方案还可在Linux、Windows XP以及Windows Server 2003上使用。\[1\]

## 操作原理

类似和，复合TCP采用估算排队延迟来度量拥塞；如果排队延迟小，则假设链路上没有拥塞，并迅速增加其速率。但不同于FAST和Vegas，它不追求维护恒定数量的数据包队列。

复核TCP维护两个拥塞窗口：一个常规的窗口，以及一个基于延迟的窗口。最终实际使用的滑动窗口大小是这两个窗口的和。AIMD窗口与的增加方式相同。如果延迟小，基于延迟的窗口将迅速增加以提高网络的利用率。一旦经历了排队，延迟窗口将逐渐减小以补偿增加的AIMD窗口。这样的目的是保持两者的总和大致恒定，使算法估计[带宽时延积的路径](https://zh.wikipedia.org/wiki/带宽时延积 "wikilink")。具体来说，当检测到排队时，基于时延的窗口因估计的队列大小而减少，以避免FAST和Vegas报告的“持续拥塞”。因此，不同于及其前身，复合TCP可以减少其窗口以避免响应延迟。这增加了它对于Reno的公平性。

## 支持平台

### Windows 2003和XP x64

有一个热修复补丁可以为64位Windows XP和Windows Server 2003添加CTCP支持。\[2\]

将下列注册表键设为**1**则为启用，设为**0**则为禁用：

`HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\TCPCongestionControl`

### Windows Vista/2008/7

CTCP在Beta版的Windows Server 2008中被默认启用，在Windows Vista和7上被默认禁用。

可以使用下列命令启用CTCP：

`netsh interface tcp set global congestionprovider=ctcp `

下列命令禁用CTCP：

`netsh interface tcp set global congestionprovider=none`

显示当前的CTCP设置：

`netsh interface tcp show global`

“附加拥塞控制提供程序”（Add-On Congestion Control Provider）参数为“none”表示CTCP已禁用，为“ctcp”表示它已启用。

### Windows 8 / 8.1

Windows 8/8.1需使用[PowerShell命令](../Page/Windows_PowerShell.md "wikilink")（见 <https://web.archive.org/web/20131029184023/http://technet.microsoft.com/en-us/library/hh826132.aspx>）修改拥塞控制算法。

### Linux

除了Windows支持，CTCP还被Angelo P. Castellani移植到了[Linux](../Page/Linux.md "wikilink")。Caltech开发的一个补丁包含了CTCP's TUning By Emulation (TUBE)。此补丁由于[软件专利而仅供研究人员使用](https://zh.wikipedia.org/wiki/软件专利 "wikilink")。该模块已不兼容内核2.6.17及以上版本，将由于内核API变更而编译失败。\[3\]

## 参见

  -
  - [显式拥塞通知](../Page/显式拥塞通知.md "wikilink")

  - [传输控制协议（TCP） - 发展过程](https://zh.wikipedia.org/wiki/传输控制协议#發展過程 "wikilink")

## 参考资料

## 外部链接

  - [Compound TCP Internet-Draft](http://tools.ietf.org/html/draft-sridharan-tcpm-ctcp)
  - ["A Compound TCP Approach for High-speed and Long Distance Networks"](http://research.microsoft.com/research/pubs/view.aspx?type=Technical%20Report&id=940) July 2005
  - [Performance Enhancements in the Next Generation TCP/IP Stack](https://web.archive.org/web/20060506095853/http://www.microsoft.com/technet/community/columns/cableguy/cg1105.mspx), The Cable Guy
  - [The Compound TCP for High-speed and Long Distance Networks](http://research.microsoft.com/en-us/projects/ctcp/), Microsoft Research publication
  - [Vista's TCP/IP Promises and Perils](http://www.networkperformancedaily.com/2006/12/vistas_tcpip_promises_and_peri.html), Article at Network Performance Daily
  - [Caltech's Compound TCP patch for Linux](https://web.archive.org/web/20080802222857/http://netlab.caltech.edu/lachlan/ctcp/)
  - Enabling CTCP on 2003/XP x64: [1](http://blog.tiensivu.com/aaron/archives/1537-KB-949316-Add-Compound-TCP-CTCP-support-to-XP-and-Server-2003.html),\[<http://blog.tiensivu.com/aaron/archives/901-Compound-TCP-congestion-control-algorithm-in-Vista-can-make-lossyhigh-latency-connections-behave-better>..html\]
  - [Report on experimental evaluation of Compound TCP](http://www.hamilton.ie/net/delay_tests_final.pdf) [Hamilton Institute](http://www.hamilton.ie) and [Caltech](http://netlab.caltech.edu), March 2008.
  - [A simulation-based study of Compound TCP](http://www.comp.nus.edu.sg/~wuxiucha/research/reactive/publication/ctcp_study.pdf)  July 14, 2008
  - [CTCP进驻Windows的故事](http://blog.sina.com.cn/s/blog_4caedc7a0100gd8f.html)，[微软亚洲研究院](../Page/微软亚洲研究院.md "wikilink")的博客，2009年10月27日

[Category:TCP拥塞控制](https://zh.wikipedia.org/wiki/Category:TCP拥塞控制 "wikilink")

1.  [A hotfix that adds Compound TCP (CTCP) support to computers that are running Windows Server 2003 or Windows XP is available](http://support.microsoft.com/kb/949316)
2.  [A hotfix that adds Compound TCP (CTCP) support to computers that are running Windows Server 2003 or Windows XP is available](http://support.microsoft.com/kb/949316)
3.