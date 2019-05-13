在[计算机网络中](../Page/计算机网络.md "wikilink")，**TUN**与**TAP**是操作系统内核中的虚拟网络设备。不同于普通靠硬件[网路板卡实现的设备](../Page/网络适配器.md "wikilink")，这些虚拟的网络设备全部用软件实现，并向运行于操作系统上的软件提供与硬件的网络设备完全相同的功能。

**TAP**
等同于一个[以太网设备](../Page/以太网.md "wikilink")，它操作[第二层数据包如](../Page/OSI模型.md "wikilink")[以太网数据帧](../Page/以太网.md "wikilink")。**TUN**模拟了[网络层设备](../Page/网络层.md "wikilink")，操作[第三层数据包比如](../Page/OSI模型.md "wikilink")[IP数据封包](../Page/IP.md "wikilink")。

[操作系统通过TUN](../Page/操作系统.md "wikilink")/TAP设备向绑定该设备的[用户空间的程序发送数据](../Page/用户空间.md "wikilink")，反之，用户空间的程序也可以像操作硬件网络设备那样，通过TUN/TAP设备发送数据。在后种情况下，TUN/TAP设备向操作系统的网络栈投递（或“注入”）数据包，从而模拟从外部接受数据的过程。

TUN/TAP被用于：

  - [虚拟私有网络](../Page/虚拟专用网络.md "wikilink")
      - [OpenVPN](../Page/OpenVPN.md "wikilink")，[Ethernet](../Page/Ethernet.md "wikilink")／IP
        over
        [TCP](../Page/Transmission_Control_Protocol.md "wikilink")／[UDP](../Page/User_Datagram_Protocol.md "wikilink")；encrypted,
        compressed
      - [tinc (protocol)](../Page/tinc_\(protocol\).md "wikilink")
        [1](http://www.tinc-vpn.org/),
        Ethernet/IPv4/[IPv6](../Page/IPv6.md "wikilink") over TCP/UDP;
        encrypted, compressed
      - [VTun](../Page/VTun.md "wikilink")
        [2](http://vtun.sourceforge.net/), Ethernet/IP/serial/[Unix
        pipe](../Page/Pipeline_\(Unix\).md "wikilink") over TCP;
        encrypted, compressed, traffic shaping
      - [OpenSSH](../Page/OpenSSH.md "wikilink")
      - [ICMPTX](../Page/ICMPTX.md "wikilink")
        [3](http://thomer.com/icmptx/), IP over
        [ICMP](../Page/ICMP.md "wikilink") (ping)
      - [NSTX](../Page/NSTX.md "wikilink")
        [4](http://thomer.com/howtos/nstx.html), IP over
        [DNS](../Page/DNS.md "wikilink")
      - [HTun](../Page/HTun.md "wikilink")
        [5](https://web.archive.org/web/20070222105318/http://htun.runslinux.net/),
        [IP](../Page/Internet_Protocol.md "wikilink") over
        [HTTP](../Page/HTTP.md "wikilink")
      - [coLinux](../Page/coLinux.md "wikilink")，[Ethernet](../Page/Ethernet.md "wikilink")／IP
        over
        [TCP](../Page/Transmission_Control_Protocol.md "wikilink")／[UDP](../Page/User_Datagram_Protocol.md "wikilink")
      - [Hamachi](../Page/Hamachi.md "wikilink")
      - [VPN-X](../Page/VPN-X.md "wikilink") 用Java封装的TAP驱动，并实现了P2P/SSL
        VPN
  - virtual machine networking
      - [Bochs](../Page/Bochs.md "wikilink")
      - [coLinux](../Page/coLinux.md "wikilink")
      - [QEMU](../Page/QEMU.md "wikilink")
      - [Hercules (S/390
        emulator)](../Page/Hercules_emulator.md "wikilink")

TUN/TAP设备驱动程序能支持如下平台：

  - [FreeBSD](../Page/FreeBSD.md "wikilink")
  - [Mac OS X](../Page/Mac_OS_X.md "wikilink")
  - [Linux](../Page/Linux.md "wikilink")，starting around version 2.1.60
  - [Microsoft Windows](../Page/Microsoft_Windows.md "wikilink")
    2000及後續版本
  - [OpenBSD](../Page/OpenBSD.md "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
  - [Solaris Operating
    System](../Page/Solaris_Operating_System.md "wikilink")

## 外部链接

  - <http://vtun.sourceforge.net/>
  - <http://www.kernel.org/pub/linux/kernel/people/marcelo/linux-2.4/Documentation/networking/tuntap.txt>

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink")