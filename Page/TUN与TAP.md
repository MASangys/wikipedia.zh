在[计算机网络中](../Page/计算机网络.md "wikilink")，**TUN**与**TAP**是操作系统内核中的虚拟网络设备。不同于普通靠硬件[网路板卡实现的设备](https://zh.wikipedia.org/wiki/网络适配器 "wikilink")，这些虚拟的网络设备全部用软件实现，并向运行于操作系统上的软件提供与硬件的网络设备完全相同的功能。

**TAP**
等同于一个[以太网设备](../Page/以太网.md "wikilink")，它操作[第二层数据包如](../Page/OSI模型.md "wikilink")[以太网数据帧](../Page/以太网.md "wikilink")。**TUN**模拟了[网络层设备](../Page/网络层.md "wikilink")，操作[第三层数据包比如](../Page/OSI模型.md "wikilink")[IP数据封包](https://zh.wikipedia.org/wiki/IP "wikilink")。

[操作系统通过TUN](../Page/操作系统.md "wikilink")/TAP设备向绑定该设备的[用户空间的程序发送数据](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，反之，用户空间的程序也可以像操作硬件网络设备那样，通过TUN/TAP设备发送数据。在后种情况下，TUN/TAP设备向操作系统的网络栈投递（或“注入”）数据包，从而模拟从外部接受数据的过程。

TUN/TAP被用于：

  - [虚拟私有网络](https://zh.wikipedia.org/wiki/虚拟专用网络 "wikilink")
      - [OpenVPN](../Page/OpenVPN.md "wikilink")，[Ethernet](https://zh.wikipedia.org/wiki/Ethernet "wikilink")／IP
        over
        [TCP](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")／[UDP](https://zh.wikipedia.org/wiki/User_Datagram_Protocol "wikilink")；encrypted,
        compressed
      - [tinc
        (protocol)](https://zh.wikipedia.org/wiki/tinc_\(protocol\) "wikilink")
        [1](http://www.tinc-vpn.org/),
        Ethernet/IPv4/[IPv6](../Page/IPv6.md "wikilink") over TCP/UDP;
        encrypted, compressed
      - [VTun](https://zh.wikipedia.org/wiki/VTun "wikilink")
        [2](http://vtun.sourceforge.net/), Ethernet/IP/serial/[Unix
        pipe](https://zh.wikipedia.org/wiki/Pipeline_\(Unix\) "wikilink")
        over TCP; encrypted, compressed, traffic shaping
      - [OpenSSH](../Page/OpenSSH.md "wikilink")
      - [ICMPTX](https://zh.wikipedia.org/wiki/ICMPTX "wikilink")
        [3](http://thomer.com/icmptx/), IP over
        [ICMP](https://zh.wikipedia.org/wiki/ICMP "wikilink") (ping)
      - [NSTX](https://zh.wikipedia.org/wiki/NSTX "wikilink")
        [4](http://thomer.com/howtos/nstx.html), IP over
        [DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")
      - [HTun](https://zh.wikipedia.org/wiki/HTun "wikilink")
        [5](https://web.archive.org/web/20070222105318/http://htun.runslinux.net/),
        [IP](https://zh.wikipedia.org/wiki/Internet_Protocol "wikilink")
        over [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
      - [coLinux](https://zh.wikipedia.org/wiki/coLinux "wikilink")，[Ethernet](https://zh.wikipedia.org/wiki/Ethernet "wikilink")／IP
        over
        [TCP](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")／[UDP](https://zh.wikipedia.org/wiki/User_Datagram_Protocol "wikilink")
      - [Hamachi](https://zh.wikipedia.org/wiki/Hamachi "wikilink")
      - [VPN-X](https://zh.wikipedia.org/wiki/VPN-X "wikilink")
        用Java封装的TAP驱动，并实现了P2P/SSL VPN
  - virtual machine networking
      - [Bochs](../Page/Bochs.md "wikilink")
      - [coLinux](https://zh.wikipedia.org/wiki/coLinux "wikilink")
      - [QEMU](../Page/QEMU.md "wikilink")
      - [Hercules (S/390
        emulator)](https://zh.wikipedia.org/wiki/Hercules_emulator "wikilink")

TUN/TAP设备驱动程序能支持如下平台：

  - [FreeBSD](../Page/FreeBSD.md "wikilink")
  - [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
  - [Linux](../Page/Linux.md "wikilink")，starting around version 2.1.60
  - [Microsoft
    Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
    2000及後續版本
  - [OpenBSD](../Page/OpenBSD.md "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
  - [Solaris Operating
    System](https://zh.wikipedia.org/wiki/Solaris_Operating_System "wikilink")

## 外部链接

  - <http://vtun.sourceforge.net/>
  - <http://www.kernel.org/pub/linux/kernel/people/marcelo/linux-2.4/Documentation/networking/tuntap.txt>

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink")