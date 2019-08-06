**uname**（*unix name*的简写）是一个[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")上的[程序](../Page/计算机程序.md "wikilink")，可以打印当前计算机和操作系统的名称、版本及其他细节。`uname`系统调用和命令第一次出现在[PWB/UNIX上](https://zh.wikipedia.org/wiki/PWB/UNIX "wikilink")。这两个由[POSIX指定](https://zh.wikipedia.org/wiki/POSIX "wikilink")。\[1\]\[2\]

一些Unix变种，如[AT\&T](../Page/AT&T.md "wikilink") [System V](https://zh.wikipedia.org/wiki/System_V "wikilink")3.0版，包含了相关的`setname`程序，用来改变uname报告的值。

[GNU](../Page/GNU.md "wikilink")版本的uname包含在“sh-utils”或“coreutils”包中。uname本身不是一个独立的程序。

## 范例

在[Darwin系统上](https://zh.wikipedia.org/wiki/Apple_Darwin "wikilink")，带有`-a`[命令行参数运行](../Page/命令行界面.md "wikilink")`uname`的输出结果可能会像这样：

`Darwin Roadrunner.local 10.3.0 Darwin Kernel Version 10.3.0: Fri Feb 26 11:58:09 PST 2010; root:xnu-1504.3.12~1/RELEASE_I386 i386`

下表包含了各种版本的`uname`在各种平台上的例子。\[3\]在[bash](https://zh.wikipedia.org/wiki/bash "wikilink") shell中，[环境变量](../Page/环境变量.md "wikilink")**OSTYPE**包含一个与`uname -o`类似（但不完全相同）的值。

<table>
<thead>
<tr class="header">
<th><p>操作系统</p></th>
<th><p>操作系统或内核名称（<code>-s</code>）</p></th>
<th><p>操作系统名称（<code>-o</code>）</p></th>
<th><p>硬件架构（<code>-m</code>）</p></th>
<th><p>处理器（<code>-p</code>）</p></th>
<th><p>硬件平台（<code>-i或-M</code>）</p></th>
<th><p>操作系统或内核版本（<code>-v</code>）</p></th>
<th><p>操作系统或内核发行号（<code>-r</code>）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Cygwin.md" title="wikilink">Cygwin</a> (Windows XP), Pentium 4</p></td>
<td><p>CYGWIN_NT-5.1</p></td>
<td><p>Cygwin</p></td>
<td><p>i686</p></td>
<td></td>
<td></td>
<td><p>2006-01-20 13:28</p></td>
<td><p>1.5.19(0.150/4/2)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Cygwin.md" title="wikilink">Cygwin</a> 1.7 (Windows 7 64-bit), Core i7</p></td>
<td><p>CYGWIN_NT-6.1-WOW64</p></td>
<td><p>Cygwin</p></td>
<td><p>i686</p></td>
<td></td>
<td></td>
<td><p>2012-05-09 10:25</p></td>
<td><p>1.7.15(0.260/5/3)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/MSYS" title="wikilink">MSYS</a> (Windows Vista)</p></td>
<td><p>MINGW32_NT-6.0</p></td>
<td><p>Msys</p></td>
<td><p>i686</p></td>
<td></td>
<td></td>
<td><p>2009-07-11 17:46</p></td>
<td><p>1.0.11(0.46/3/2)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/UWIN" title="wikilink">UWIN</a> (64 bit Windows 7), Intel Core i5</p></td>
<td><p>UWIN-W7</p></td>
<td><p>UWIN</p></td>
<td><p>i686-64</p></td>
<td><p>x64</p></td>
<td><p>64/64</p></td>
<td><p>2012-06-26</p></td>
<td><p>5.0/6.1</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a> 6.1, Intel</p></td>
<td><p>FreeBSD</p></td>
<td><p>无效选项</p></td>
<td><p>i386</p></td>
<td><p>i386</p></td>
<td><p>[内核配置文件中的内核名称。即：GENERIC]</p></td>
<td><p>FreeBSD 6.1-RELEASE-p15 #1: Sun Apr 15 18:04:51 EDT 2007</p></td>
<td><p>6.1-RELEASE-p15</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a> 9.0, Intel</p></td>
<td><p>FreeBSD</p></td>
<td><p>FreeBSD</p></td>
<td><p>amd64</p></td>
<td><p>amd64</p></td>
<td><p>[内核配置文件中的内核名称。即：GENERIC]</p></td>
<td><p>FreeBSD 9.0-RELEASE #0: Tue Jan 3 07:46:30 UTC 2012 root@farrell.cse.buffalo.edu:/usr/obj/usr/src/sys/GENERIC</p></td>
<td><p>9.0-RELEASE</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/IRIX.md" title="wikilink">IRIX</a> 6.5.30, Origin 2000</p></td>
<td><p>IRIX64</p></td>
<td><p>无效选项</p></td>
<td><p>IP30</p></td>
<td><p>mips</p></td>
<td><p>无效选项</p></td>
<td><p>07202013</p></td>
<td><p>6.5</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Solaris_(操作系统)" title="wikilink">Solaris</a> 9, Sun Fire 280R</p></td>
<td><p><a href="../Page/SunOS.md" title="wikilink">SunOS</a></p></td>
<td><p>无效选项</p></td>
<td><p>sun4u</p></td>
<td><p>sparc</p></td>
<td><p>SUNW,Sun-Fire-280R</p></td>
<td><p>Generic_112233-08</p></td>
<td><p>5.9</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Solaris_(操作系统)" title="wikilink">Solaris</a> 10, Sun Fire V490</p></td>
<td><p><a href="../Page/SunOS.md" title="wikilink">SunOS</a></p></td>
<td><p>无效选项</p></td>
<td><p>sun4u</p></td>
<td><p>sparc</p></td>
<td><p>SUNW,Sun-Fire-V490</p></td>
<td><p>Generic_142900-13</p></td>
<td><p>5.10</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Solaris_(操作系统)" title="wikilink">Solaris</a> 11.1, Sun Fire X4540</p></td>
<td><p><a href="../Page/SunOS.md" title="wikilink">SunOS</a></p></td>
<td><p>Solaris</p></td>
<td><p>i86pc</p></td>
<td><p>i386</p></td>
<td><p>i86pc</p></td>
<td><p>11.1</p></td>
<td><p>5.11</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/openSUSE" title="wikilink">openSUSE</a> 10.3, Core2-duo 64-bit</p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>GNU/Linux</p></td>
<td><p>x86_64</p></td>
<td><p>x86_64</p></td>
<td><p>x86_64</p></td>
<td><p>#1 SMP 2007/09/21 22:29:00 UTC</p></td>
<td><p>2.6.22.5-31-default</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Gentoo_Linux.md" title="wikilink">Gentoo</a>, <a href="https://zh.wikipedia.org/wiki/UltraSPARC_II#UltraSPARC_IIe" title="wikilink">UltraSparc IIe</a></p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>GNU/Linux</p></td>
<td><p>sparc64</p></td>
<td><p>sun4u</p></td>
<td><p>TI UltraSparc IIe (Hummingbird)</p></td>
<td><p>#1 SMP Wed Nov 10 02:04:26 CET 2010</p></td>
<td><p>2.6.34-gentoo-r12</p></td>
</tr>
<tr class="odd">
<td><p>any, coreutils 7.1</p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>GNU/Linux</p></td>
<td><p>sparc64</p></td>
<td><p>sparc64</p></td>
<td><p><a href="../Page/UltraSPARC_T1.md" title="wikilink">UltraSPARC T1</a> (Niagara)</p></td>
<td><p>(all)</p></td>
<td><p>(all)</p></td>
</tr>
<tr class="even">
<td><p>any, coreutils 7.1–8.4</p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>GNU/Linux</p></td>
<td><p>ppc64</p></td>
<td><p>ppc64</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/PowerPC_970" title="wikilink">PPC 970FX</a> (<a href="https://zh.wikipedia.org/wiki/XServe#Xserve_G5" title="wikilink">XServe G5</a>)</p></td>
<td><p>(all)</p></td>
<td><p>(all)</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Linux_Mint.md" title="wikilink">Linux Mint</a> 10 "Julia" 64-bit</p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a></p></td>
<td><p>GNU/Linux</p></td>
<td><p>x86_64</p></td>
<td></td>
<td></td>
<td><p>#33-Ubuntu SMP Sun Sep 19 20:32:27 UTC 2010</p></td>
<td><p>2.6.35-22-generic</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Debian_GNU/kFreeBSD" title="wikilink">Debian GNU/kFreeBSD</a> 6.0, AMD</p></td>
<td><p>GNU/kFreeBSD</p></td>
<td><p>GNU/kFreeBSD</p></td>
<td><p>x86_64</p></td>
<td><p>amd64</p></td>
<td><p>AMD Sempron(tm) Processor 3000+</p></td>
<td><p>#0 Thu Nov 26 04:22:59 CET 2009</p></td>
<td><p>8.0-1-amd64</p></td>
</tr>
<tr class="odd">
<td><p>Debian 6.0.5 on B型<a href="../Page/树莓派.md" title="wikilink">树莓派</a></p></td>
<td><p>Linux</p></td>
<td><p>GNU/Linux</p></td>
<td><p>armv61</p></td>
<td></td>
<td></td>
<td><p>#90 Wed Apr 18 18:23:05 BST 2012</p></td>
<td><p>3.1.9+</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Ubuntu.md" title="wikilink">Ubuntu</a> 12.0.4 on <a href="https://zh.wikipedia.org/wiki/PandaBoard" title="wikilink">Pandaboard ES</a></p></td>
<td><p>Linux</p></td>
<td><p>GNU/Linux</p></td>
<td><p>armv7l</p></td>
<td><p>armv7l</p></td>
<td><p>armv7l</p></td>
<td><p>#33-Ubuntu SMP PREEMPT Sat Jan 26 00:46:04 UTC 2013</p></td>
<td><p>3.2.0-1425-omap4</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Android.md" title="wikilink">Android</a> 4.2.1 on <a href="../Page/Nexus_4.md" title="wikilink">Nexus 4</a></p></td>
<td><p>Linux</p></td>
<td><p>GNU/Linux</p></td>
<td><p>armv7l</p></td>
<td></td>
<td></td>
<td><p>#1 SMP PREEMPT Thu Nov 8 15:42:02 PST 2012</p></td>
<td><p>3.4.0-perf-ge039dcb</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Mac_OS_X_Snow_Leopard.md" title="wikilink">Mac OS X Snow Leopard</a> 10.6, MacBook3,1 (Late 2007)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Apple_Darwin" title="wikilink">Darwin</a></p></td>
<td><p>无效选项</p></td>
<td><p>i386</p></td>
<td><p>i386</p></td>
<td><p>无效选项</p></td>
<td><p>Darwin Kernel Version 10.0.0: Fri Jul 31 22:47:34 PDT 2009; root:xnu-1456.1.25~1/RELEASE_I386</p></td>
<td><p>10.0.0</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Mac_OS_X_Lion.md" title="wikilink">Mac OS X Lion</a> 10.7.3 build 11D50, MacbookPro7,1 (Late 2010)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Apple_Darwin" title="wikilink">Darwin</a></p></td>
<td><p>无效选项</p></td>
<td><p>x86_64</p></td>
<td><p>i386</p></td>
<td><p>无效选项</p></td>
<td><p>Darwin Kernel Version 11.3.0: Thu Jan 12 18:47:41 PST 2012; root:xnu-1699.24.23~1/RELEASE_X86_64</p></td>
<td><p>11.3.0</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Mac_OS_X_Mountain_Lion" title="wikilink">Mac OS X Mountain Lion</a> 10.8.3 build 12D78, MacbookPro10,1 (Mid 2012)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Apple_Darwin" title="wikilink">Darwin</a></p></td>
<td><p>无效选项</p></td>
<td><p>x86_64</p></td>
<td><p>i386</p></td>
<td><p>无效选项</p></td>
<td><p>Darwin Kernel Version 12.3.0: Sun Jan 6 22:37:10 PST 2013; root:xnu-2050.22.13~1/RELEASE_X86_64</p></td>
<td><p>12.3.0</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Haiku.md" title="wikilink">Haiku</a> R1/Alpha 1, QEMU</p></td>
<td><p><a href="../Page/Haiku.md" title="wikilink">Haiku</a></p></td>
<td><p>Haiku</p></td>
<td><p>BePC</p></td>
<td></td>
<td></td>
<td><p>r33109 Sep 12 2009 17:45:45</p></td>
<td><p>1</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/IBM_AIX.md" title="wikilink">IBM AIX</a> 5.3</p></td>
<td><p>AIX</p></td>
<td><p>AIX</p></td>
<td><p>00C57D4D4C00</p></td>
<td><p>powerpc</p></td>
<td><p>IBM,8205-E6B</p></td>
<td><p>5</p></td>
<td><p>3</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/MINIX_3" title="wikilink">MINIX</a> 3.1.7, x86</p></td>
<td><p>Minix</p></td>
<td><p>无效选项</p></td>
<td><p>i686</p></td>
<td><p>i386</p></td>
<td><p>无效选项</p></td>
<td><p>1.7</p></td>
<td><p>3</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/DragonFlyBSD" title="wikilink">DragonFlyBSD</a> 2.7, AMD64</p></td>
<td><p>DragonFly</p></td>
<td><p>无效选项</p></td>
<td><p>x86_64</p></td>
<td><p>x86_64</p></td>
<td><p>[内核配置文件的文件名]</p></td>
<td><p>DragonFly v2.7.3.122.g0ba92-DEVELOPMENT #0: Tue June 8 16:50:35 CEST 2010</p></td>
<td><p>2.7-DEVELOPMENT root@Chance.: /usr/obj/usr/src/sys/X86_64_GENERIC</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Ubuntu.md" title="wikilink">Ubuntu</a> 11.04</p></td>
<td><p>Linux</p></td>
<td><p>GNU/Linux</p></td>
<td><p>x86_64</p></td>
<td><p>x86_64</p></td>
<td><p>x86_64</p></td>
<td><p>#46-Ubuntu SMP Tue Jun 28 15:07:17 UTC 2011</p></td>
<td><p>2.6.38-10-generic</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/HP-UX.md" title="wikilink">HP-UX</a> 11i v3</p></td>
<td><p>HP-UX</p></td>
<td><p>无效选项</p></td>
<td><p>ia64</p></td>
<td><p>无效选项</p></td>
<td><p>[如果不能确定，则显示唯一机器ID号或节点名称。]</p></td>
<td><p>U</p></td>
<td><p>B.11.31</p></td>
</tr>
<tr class="odd">
<td><p>Debian GNU/<a href="../Page/GNU_Hurd.md" title="wikilink">Hurd</a></p></td>
<td><p>GNU</p></td>
<td><p>GNU</p></td>
<td><p>i686-AT386</p></td>
<td></td>
<td><p>未知 (-i) / 无效选项 (-M)</p></td>
<td><p>GNU-Mach 1.3.99-486/Hurd-0.3</p></td>
<td><p>0.3</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/UnixWare" title="wikilink">UnixWare</a> 7.1.4</p></td>
<td><p>UnixWare</p></td>
<td><p>无效选项</p></td>
<td><p>i386</p></td>
<td><p>x86at</p></td>
<td><p>-i 硬件序列号/许可证编号，例如1AB000123；-M为无效选项</p></td>
<td><p>7.1.4</p></td>
<td><p>5</p></td>
</tr>
</tbody>
</table>

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [ver (命令)](https://zh.wikipedia.org/wiki/ver_\(命令\) "wikilink")

## 参考

## 外部链接

  -
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.  [uname](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/uname.html). The Open Group Base Specifications Issue 7/IEEE Std 1003.1, 2013 Edition. Specifies the command.
2.  [uname](http://pubs.opengroup.org/onlinepubs/9699919799/functions/uname.html). The Open Group Base Specifications Issue 7/IEEE Std 1003.1, 2013 Edition. Specifies the function/system call.
3.  这些都只是系统的共同代表，实际输出可能取决于硬件类型、操作系统的版本和已安装软件补丁。