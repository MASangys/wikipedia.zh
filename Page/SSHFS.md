> 本文内容由[SSHFS](https://zh.wikipedia.org/wiki/SSHFS)转换而来。


[右](https://zh.wikipedia.org/wiki/File:Unmount_SSHFS.png "fig:右") **SSHFS**（**SSH Filesystem**）是一种通过普通[ssh连接来](https://zh.wikipedia.org/wiki/ssh "wikilink")[挂载和与远程](https://zh.wikipedia.org/wiki/挂载 "wikilink")[服务器](../Page/服务器.md "wikilink")或[工作站](../Page/工作站.md "wikilink")上的[目录和](../Page/目录_\(文件系统\).md "wikilink")[文件交互的](../Page/電腦檔案.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")[客户端](https://zh.wikipedia.org/wiki/客户端 "wikilink")。\[1\]该种客户端通过[SSH文件传输协议](../Page/SSH文件传输协议.md "wikilink")（SFTP）与远程文件系统交互，\[2\]这是一种通过任何可靠提供[文件访问](https://zh.wikipedia.org/wiki/文件访问 "wikilink")、和[文件管理功能的网络协议](https://zh.wikipedia.org/wiki/文件管理器 "wikilink")，它在设计上是[Secure Shell](../Page/Secure_Shell.md "wikilink")（SSH）协议2.0版的一个扩展。

当前使用[FUSE](../Page/FUSE.md "wikilink")的SSHFS实现是早期版本的一个重写。该重写由完成，他也编写[FUSE](../Page/FUSE.md "wikilink")。\[3\]

## 功能

SFTP能提供安全的文件传输和安全的远程文件系统。虽然SFTP客户端可以传输文件和目录，但使用SFTP的相关文件系统可能不会单独在本地挂载。在使用SSHFS时，远程文件系统可能以与其他卷（诸如CD、DVD、USB驱动器、共享磁盘）相同的方式处理请求。

在sshfs中使用[Unix命令](../Page/Unix实用程序列表.md "wikilink")[ls有时不能正确列出文件的所有者](https://zh.wikipedia.org/wiki/ls "wikilink")，尽管可以手动映射它们。\[4\]\[5\]

有多个用户的分布式远程文件系统较常使用诸如[苹果归档协议](../Page/苹果归档协议.md "wikilink")（AFP）、[网络文件系统](../Page/网络文件系统.md "wikilink")（NFS）和[伺服器訊息區塊](../Page/伺服器訊息區塊.md "wikilink")（SMB）。SSHFS是这些协议的备选方案，仅适合用于用户确信文件和目录不会同时在被另一个用户写入。

SSHFS在与其他网络文件系统协议相比时的优点是，由于用户已具有对主机的SSH访问，它不需要任何额外的配置工作，也不需要在[防火墙](../Page/防火墙.md "wikilink")中打开额外的传入端口。

## 参见

  -
  - （FISH）

  - [FileZilla](../Page/FileZilla.md "wikilink")，一个自由软件实用工具，面向多个平台。

  - [FTPFS](../Page/FTPFS.md "wikilink")

  - [GVfs](https://zh.wikipedia.org/wiki/GVfs "wikilink")

  - [SSH文件传输协议](../Page/SSH文件传输协议.md "wikilink")（SFTP）

  - [安全复制](../Page/安全复制.md "wikilink")（SCP）

  - [WinSCP](../Page/WinSCP.md "wikilink")

## 参考资料

## 外部链接

  -
  - [win-sshfs](http://code.google.com/p/win-sshfs/)，面向[Windows的SSHFS客户端](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（已停止发展）。

[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink") [Category:网络文件系统](https://zh.wikipedia.org/wiki/Category:网络文件系统 "wikilink") [Category:远程管理软件](https://zh.wikipedia.org/wiki/Category:远程管理软件 "wikilink") [Category:用户空间文件系统](https://zh.wikipedia.org/wiki/Category:用户空间文件系统 "wikilink")

1.
2.
3.
4.
5.