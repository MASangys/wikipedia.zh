**Openfiler**是一个[操作系统](../Page/操作系统.md "wikilink")，其提供基于文件的[网络附加存储和基于块的](https://zh.wikipedia.org/wiki/网络附加存储 "wikilink")[存储区域网络功能](../Page/存储区域网络.md "wikilink")。它由[Xinit
Systems创建](https://zh.wikipedia.org/wiki/Xinit_Systems "wikilink")，并基于[rPath](https://zh.wikipedia.org/wiki/rPath "wikilink")
[Linux](../Page/Linux.md "wikilink")
[分发](https://zh.wikipedia.org/wiki/Linux分发 "wikilink")。它是由[GNU
General Public
License](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")
version 2授权的[自由软件](../Page/自由软件.md "wikilink")。它的软件接口使用开放源码的第三方软件。

## 历史

[Openfiler_Installer_2.png](https://zh.wikipedia.org/wiki/File:Openfiler_Installer_2.png "fig:Openfiler_Installer_2.png")

2001年，[Mukund
Sivaraman在Xinit](https://zh.wikipedia.org/wiki/Mukund_Sivaraman "wikilink")
Systems上创建了Openfiler基础代码。2003年10月，公司为其创建项目并且捐助。2004年5月，Openfiler首次公开发行。

## 硬件要求

### 最低要求

Openfiler至少需要500MHz的CPU，256MB内存，1.2GB硬盘空间，一个光盘驱动器（本地安装）和一个以太网接口。 \[1\]

### 建议

1.6GHz的64位CPU，或者更高，1GB内存，2GB硬盘空间和一个硬件的[RAID磁盘阵列控制器](../Page/RAID.md "wikilink")，以获得最佳性能。\[2\]

## 特点

Openfiler支持的网络协议包括：[NFS](../Page/网络文件系统.md "wikilink")，[SMB/CIFS](https://zh.wikipedia.org/wiki/服务器消息区块 "wikilink")，[HTTP](../Page/超文本传输协议.md "wikilink")/[WebDAV](https://zh.wikipedia.org/wiki/WebDAV "wikilink")，[FTP和](../Page/文件传输协议.md "wikilink")[iSCSI](https://zh.wikipedia.org/wiki/iSCSI "wikilink")（initiator和target）。Openfiler支持的网络目录包括：[NIS](../Page/網路資訊服務.md "wikilink")，[LDAP](../Page/轻型目录访问协议.md "wikilink")（支持SMB/CIFS密码加密），[Active
Directory](../Page/Active_Directory.md "wikilink")（本地和混合模式），基于[Windows
NT的](../Page/Windows_NT.md "wikilink")[域控制器和](https://zh.wikipedia.org/wiki/网域控制器 "wikilink")[Hesiod](https://zh.wikipedia.org/wiki/Hesiod_\(name_service\) "wikilink")。认证协议包括[Kerberos
5](../Page/Kerberos.md "wikilink")。Openfiler支持基于卷的分区技术：如本地文件系统的[ext3](https://zh.wikipedia.org/wiki/ext3 "wikilink")、[JFS和](https://zh.wikipedia.org/wiki/JFS_\(file_system\) "wikilink")[XFS格式](../Page/XFS.md "wikilink")；实时快照；磁盘配额管理；统一标准的接口使得为各种网络文件系统协议分配共享资源变得更容易。

以下是Openfiler目前可用的一些功能（除非另有说明）：

1.  **基于块的虚拟化**
    1.  支持带有调度功能的实时快照
    2.  在线卷扩展（测试中）
    3.  卷使用报告
    4.  支持多个卷组最佳存储分配
    5.  iSCSI initiator（目前仅支持手动）
    6.  卷迁移及复制（目前仅支持手动）
2.  **账户管理**
    1.  身份验证使用可插拔认证模块，可从web接口配置
    2.  NIS，LDAP，Hesiod，Active Directory（本地和混合模式），NT4域控制器
    3.  Guest/public账号支持
3.  **配额/资源分配**
    1.  基于卷对用户组进行空间和文件配额管理
    2.  基于卷对用户进行空间和文件配额管理
    3.  基于卷对guest进行磁盘空间和文件配额管理
    4.  支持用户和组的配额模板
4.  **共享管理**
    1.  基于卷的共享创建
    2.  多层次的共享目录树
    3.  基于组的共享访问控制
    4.  基于主机/子网的共享访问控制
    5.  支持自动创建SMB home目录
5.  **行业标准协议套件**
    1.  基于微软Windows客户端的CIFS/SMB支持
    2.  支持NFSv4（测试中）
    3.  支持FTP
    4.  支持WebDAV和HTTP 1.1

## 参见

  - [Celerra](https://zh.wikipedia.org/wiki/Celerra "wikilink")
  - [NetApp
    filer](https://zh.wikipedia.org/wiki/NetApp_filer "wikilink")
  - [FreeNAS](../Page/FreeNAS.md "wikilink")
  - [Gluster](https://zh.wikipedia.org/wiki/Gluster "wikilink")
  - [NASLite](https://zh.wikipedia.org/wiki/NASLite "wikilink")
  - [NexentaStor](https://zh.wikipedia.org/wiki/NexentaStor "wikilink")
  - [Open-E](https://zh.wikipedia.org/wiki/Open-E "wikilink")

## 参考文献

<references />

  - Bill Childers (May 2009) *[OpenFiler: an Open-Source Network Storage
    Appliance](http://www.linuxjournal.com/article/10414)*, [Linux
    Journal](https://zh.wikipedia.org/wiki/Linux_Journal "wikilink")
    issue 181
  - Jennifer Schiff (June 24, 2009) *[Linux-Powered Enterprise Storage:
    Openfiler](http://www.linuxplanet.com/linuxplanet/reports/6781/1/)*,
    [LinuxPlanet](https://zh.wikipedia.org/wiki/LinuxPlanet "wikilink")
  - Rick Grehan (February 24, 2009) *[More specialty Linuxes to the
    rescue.
    OpenFiler](http://www.computerworld.com/s/article/9128521/More_specialty_Linuxes_to_the_rescue?pageNumber=3#OpenFiler)*,
    [Computerworld](https://zh.wikipedia.org/wiki/Computerworld "wikilink")
  - Cory Buford (September 10, 2008) *[Turn your machine into enterprise
    storage with
    Openfiler](http://www.linux.com/archive/feature/146861)*,
    [Linux.com](https://zh.wikipedia.org/wiki/Linux.com "wikilink")
  - Steven J. Vaughan-Nichols, (Sep. 20, 2006) *[Openfiler simplifies
    Linux NAS and
    SAN](http://www.linux-watch.com/news/NS4683277422.html)*,
    [Linux-Watch](https://zh.wikipedia.org/wiki/Linux-Watch "wikilink")
  - Chris Mellor (4 Nov 2003) *[Open Source NAS with SAN possibly
    coming](http://news.techworld.com/storage/615/open-source-nas-with-san-possibly-coming/)*,
    [Techworld](https://zh.wikipedia.org/wiki/Techworld "wikilink")

## 延伸阅读

  - Darrell Dunn (October 19, 2007) *[Low-Cost Storage Tools:
    Open-Source Projects Provide Increasing
    Choices](https://web.archive.org/web/20071030044427/http://www.processor.com/editorial/article.asp?article=articles%2Fp2942%2F23p42%2F23p42.asp&guid=&searchtype=&WordList=&bJumpTo=True)*,
    [Processor
    (magazine)](https://zh.wikipedia.org/wiki/Processor_\(magazine\) "wikilink"),
    Vol.29 Issue 42, Page 12 in print issue
  - Deni Connor (February 23, 2007) *[10 free storage utilities. Some
    software is truly offered without
    strings](http://www.computerworld.com/s/article/9011725/10_free_storage_utilities)*,
    [Computerworld](https://zh.wikipedia.org/wiki/Computerworld "wikilink")

## 外部链接

  - [Openfiler official homepage](http://www.openfiler.com/)
  - [Openfiler project website](https://project.openfiler.com/)
  - [Openfiler vs FreeNAS: Tips for building your own
    NAS](http://blog.patyuen.com/lessons/technology/openfiler-vs-freenas-tips-for-building-your-own-nas/)

[Category:Computer_storage](https://zh.wikipedia.org/wiki/Category:Computer_storage "wikilink")
[Category:Computer_storage_devices](https://zh.wikipedia.org/wiki/Category:Computer_storage_devices "wikilink")
[Category:Free_file_transfer_software](https://zh.wikipedia.org/wiki/Category:Free_file_transfer_software "wikilink")
[Category:Software_appliances](https://zh.wikipedia.org/wiki/Category:Software_appliances "wikilink")

1.  [Openfiler install
    How-to](http://www.openfiler.com/learn/how-to/text-based-installation)
2.  <http://www.openfiler.com/products/system-requirements>