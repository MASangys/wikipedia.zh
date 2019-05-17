**FTPFS**是指支持通过标准文件系统的[应用程序接口](../Page/应用程序接口.md "wikilink")（API）访问[文件传输协议](../Page/文件传输协议.md "wikilink")（FTP）服务器的[文件系统](../Page/文件系统.md "wikilink")。

在[Linux系统中](../Page/Linux.md "wikilink")，FTPFS最初实现为一个[Linux内核模块](../Page/Linux内核.md "wikilink")，允许用户[挂载一个](https://zh.wikipedia.org/wiki/挂载 "wikilink")[FTP服务器到本地文件系统](../Page/文件传输协议.md "wikilink")，但它从不被认为是完美的方式。在2003年，它已转换为使用LUFS，以及之后变为[FUSE](../Page/FUSE.md "wikilink")。现在它被称为，因为它使用为FTP传输通用的[libcurl](../Page/CURL.md "wikilink")，并正成为主要[Linux发行版的一部分](../Page/Linux发行版.md "wikilink")。也有用于FTP站点智能镜像的LftpFS。

在[Mac OS
X中包含一个只读的FTP文件系统](../Page/MacOS.md "wikilink")，它可以通过[用户图形界面](https://zh.wikipedia.org/wiki/用户图形界面 "wikilink")（）或命令行（mount_ftp）使用。只读限制在mount_ftp的手册页面中指出（在OS
X系统上，Terminal.app中，查阅“man
mount_ftp”）。不过，免费应用程序Macfusion包括一个FTPFS的可用实现。此外，有报告称OS
X Fuse已经启用，但此方法未被列入文档（截至2013年3月4日），无论是各个明显的手册页面（例如sshfs）或是OS X Fuse
wiki。

对于[Windows XP](../Page/Windows_XP.md "wikilink")、[Windows
7和其他](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows操作系统](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，此功能通过“网络位置”壳层设备部分提供。网络位置可以指向一个FTP服务器或一个[WebDAV服务器](https://zh.wikipedia.org/wiki/WebDAV "wikilink")，并可在[Windows文件资源管理器中犹如另一个网络文件系统一样访问](https://zh.wikipedia.org/wiki/Windows文件资源管理器 "wikilink")。\[1\]这并不为最底层的[Win32文件系统API提供透明访问](../Page/Windows_API.md "wikilink")。类似的功能可通过第三方程序提供，例如或。

## 参见

  - SSHFS

## 参考资料

## 外部链接

  -
  - [LftpFS](http://lftpfs.sourceforge.net/)

  - <http://macfusionapp.org>

[Category:FTP](https://zh.wikipedia.org/wiki/Category:FTP "wikilink")
[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")

1.