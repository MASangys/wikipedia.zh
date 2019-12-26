**Void Linux**\[1\]是一个独立的[Linux发行版](../Page/Linux发行版.md "wikilink")（即[操作系统](../Page/操作系统.md "wikilink")），以自有的作为[软件包管理器](https://zh.wikipedia.org/wiki/软件包管理器 "wikilink")，并以[Runit](../Page/Runit.md "wikilink")作为[init系统](../Page/Init.md "wikilink")。除了Linux内核中的[binary blob之外](https://zh.wikipedia.org/wiki/binary_blob "wikilink")，其基本安装仅由[自由软件](../Page/自由软件.md "wikilink")组成，但也提供了官方的非自由软件仓库以便利[专有软件](../Page/专有软件.md "wikilink")的安装。\[2\]\[3\]

## 历史

Void Linux由[NetBSD](../Page/NetBSD.md "wikilink")的前维护者Juan Romero Pardines于2008年创立，\[4\]其开始是为了给XBPS包管理器提供测试平台。

在2018年五月，由于项目领导者失联数月，核心开发者将此项目迁移到了新的网站及[代码仓库](../Page/仓库_\(版本控制\).md "wikilink")\[5\]\[6\]

## 特性

Void的特殊之处在于其以[Runit](../Page/Runit.md "wikilink")作为[init系统](https://zh.wikipedia.org/wiki/init "wikilink")，而非更为常见的[systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")。后者为包含[Arch Linux](../Page/Arch_Linux.md "wikilink")、[CentOS](../Page/CentOS.md "wikilink")、[Debian](../Page/Debian.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")、[Mageia](../Page/Mageia.md "wikilink")以及 [Ubuntu](../Page/Ubuntu.md "wikilink")在内的诸多其它发行版所采用。\[7\]Void还是第一个以[LibreSSL](../Page/LibreSSL.md "wikilink")作为系统预设[密码学](../Page/密码学.md "wikilink")[库的发行版](https://zh.wikipedia.org/wiki/库 "wikilink")。最獨特之處在於Void提供了分別以[glibc和](https://zh.wikipedia.org/wiki/glibc "wikilink")[musl構建的](https://zh.wikipedia.org/wiki/musl "wikilink")[安裝媒介](../Page/ISO映像.md "wikilink")。

Void遵循[滾動更新的發佈模式](https://zh.wikipedia.org/wiki/滚动更新 "wikilink")，\[8\]源碼倉庫託管於[GitHub](../Page/GitHub.md "wikilink")。\[9\]其提供了輔助編譯的腳本，支持[交叉編譯](../Page/交叉編譯器.md "wikilink")。

从2017年4月起，Void支持[Flatpak](../Page/Flatpak.md "wikilink")。后者能够从上游软件仓库安装最新的软件包。\[10\]

[DistroWatch](../Page/DistroWatch.md "wikilink")的Jesse Smith指出这一系统启动较快，并认为这歸功於Runit，但同时也指出此项目缺乏文档及bug测试。其[官方wiki](https://wiki.voidlinux.org) 是用户文档的主要来源。

## 版本

這一項目提供了預設不同[桌面环境](../Page/桌面环境.md "wikilink")的安装媒介（*flavours*），其中包含[Cinnamon](../Page/Cinnamon.md "wikilink")、[Enlightenment](../Page/Enlightenment.md "wikilink")、[LXDE](../Page/LXDE.md "wikilink")、[MATE](../Page/MATE.md "wikilink")及[Xfce](../Page/Xfce.md "wikilink")等常见桌面环境。其[live映像的安装器提供了一个基于](../Page/Live_CD.md "wikilink")[ncurses的用戶界面](https://zh.wikipedia.org/wiki/ncurses "wikilink")。 预设shell是[Dash](../Page/Almquist_shell.md "wikilink")。

<table>
<caption>Void Linux的<a href="https://zh.wikipedia.org/wiki/Live_USB" title="wikilink">live映像表</a>[11]</caption>
<tbody>
<tr class="odd">
<td></td>
<td><p><a href="../Page/C.md" title="wikilink">C</a><a href="https://zh.wikipedia.org/wiki/庫" title="wikilink">庫</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/桌面環境" title="wikilink">桌面環境</a></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/musl" title="wikilink">musl</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/glibc" title="wikilink">glibc</a></p></td>
<td><p>Cinnamon</p></td>
</tr>
<tr class="odd">
<td><p>Platform</p></td>
<td><p>i686</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>amd64</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ARM-based</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/BeagleBoard#BeagleBone" title="wikilink">beaglebone</a></p></td>
<td><p>rowspan="5" colspan="2" </p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Cubieboard" title="wikilink">cubieboard 2</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/ODROID" title="wikilink">ODROID</a> U2/U3</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Raspberry_Pi" title="wikilink">Raspberry Pi</a> 1/2/3</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/USB_Armory" title="wikilink">USB Armory</a></p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 附注

## 参考文献

## 外部連結

  -
  -
[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:2008年软件](https://zh.wikipedia.org/wiki/Category:2008年软件 "wikilink") [Category:可从只读媒体启动的操作系统发行版](https://zh.wikipedia.org/wiki/Category:可从只读媒体启动的操作系统发行版 "wikilink")

1.
2.  [Void Linux: A Salute to Old-School Linux | Linux.com | The source for Linux information](https://www.linux.com/learn/intro-to-linux/2017/10/void-linux-salute-old-school-linux)
3.  [DistroWatch Weekly, Issue 714, 29 May 2017](https://distrowatch.com/weekly.php?issue=20170529#void)
4.
5.
6.
7.
8.
9.  \[//github.com/void-linux/void-packages *xbps-src*\]. Manual.md
10. [Flatpak](https://voidlinux.org/news/2017/04/Flatpak.html)
11.