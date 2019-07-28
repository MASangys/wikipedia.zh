**Oracle Database**，又名**Oracle
RDBMS**，或簡稱**Oracle**。是[甲骨文公司](../Page/甲骨文公司.md "wikilink")的一款[关系数据库](../Page/关系数据库.md "wikilink")管理系统。到目前仍在数据库市场上占有主要份额。\[1\]

[劳伦斯·埃里森和他的朋友](https://zh.wikipedia.org/wiki/劳伦斯·埃里森 "wikilink")，之前的同事和在1977年建立了软件开发实验室咨询公司（SDL，Software
Development
Laboratories）。SDL开发了Oracle软件的最初版本。*Oracle*的名称来自于埃里森在[Ampex](../Page/Ampex.md "wikilink")工作时参加的一个由[中央情报局创建的项目的代码名称](https://zh.wikipedia.org/wiki/CIA "wikilink")。\[2\]

## 實體和邏輯結構

一個Oracle資料庫系統是以一個由字母和數字组成的系統識別碼（SID, Site
ID）來做唯一性的區別\[3\]—包含了至少一個應用程式的[實例](https://zh.wikipedia.org/wiki/資料庫 "wikilink")，和資料儲存設備。一個實例（instance）是由一個實例數字（或是一個啟動ID：SYS.V_$DATABASE.ACTIVATION\#）表示—包含了一個作業系統[程序的集合和與儲存設備進行交談的內部結構](https://zh.wikipedia.org/wiki/程序 "wikilink")。典型的程序有PMON（the
process monitor程序監看器）和SMON（the system monitor系統監看器）。

Oracle資料庫的用户設計到了SGA（System Global
Area系统全局领域）服务器端内存结构。SGA保存了[缓存](../Page/缓存.md "wikilink")信息比如数据缓冲区，[SQL](../Page/SQL.md "wikilink")命令，和用户信息。在存储之外，数据库由保存了数据变更历史的在线恢复日志。进程可以把在线的恢复日志转换成存档的日志（离线恢复日志），给数据回复和再生提供了基础。

如果Oracle数据库管理员实现了Oracle
[RAC](https://zh.wikipedia.org/wiki/RAC "wikilink")（Real Application
Clusters真正应用集群），那么在不同的服务器上的多个实例，隶属于一个中央[磁盘阵列](https://zh.wikipedia.org/wiki/磁盘阵列 "wikilink")。这个方案提供了一些优点，比如更高的效率、扩展性和冗余。然而，这样会导致系统更复杂，因此许多站点并不使用RAC。在10g版本中，[网格计算](../Page/网格计算.md "wikilink")引进了共享资源，这样一个实例可以使用（例如）网格中另一个节点的[CPU资源](https://zh.wikipedia.org/wiki/CPU "wikilink")。

Oracle数据库管理系统可以保存并运行自己的[存储程序](../Page/存储程序.md "wikilink")和函数。[PL-SQL](../Page/PL-SQL.md "wikilink")（Oracle公司的专有的SQL扩展语言），或面向对象语言[Java](../Page/Java.md "wikilink")可以调用那些代码对象或者编写这些代码。

### 存储

Oracle关系型数据库管理系统从逻辑上把数据保存在[表空间](../Page/表空间.md "wikilink")内，在物理上以数据文件的形式存储。表空间可以包含多种类型的[内存区段](https://zh.wikipedia.org/wiki/内存区段 "wikilink")，例如数据区段（Data
Segment）、索引区段（Index
Segment）等等。区段相应的由一个或多个扩展（extent）组成。扩展由相连的数据区块组成。数据区块是数据存储的基本单元。

Oracle数据库管理系统通过存储在`SYSTEM`表空间内的信息来跟踪数据存储。`SYSTEM`表空间包含了[数据字典](https://zh.wikipedia.org/wiki/数据字典 "wikilink")—以及（默认的）[索引和](https://zh.wikipedia.org/wiki/数据库索引 "wikilink")[集群](../Page/计算机集群.md "wikilink")。数据字典包含了一个保存了所有数据库中用户对象的信息的[表](https://zh.wikipedia.org/wiki/数据库表 "wikilink")。从8i版本开始，Oracle开始支持*本地管理*表空间，即把空间管理信息保存在它们自己的[信头的位图中而不是](https://zh.wikipedia.org/wiki/信头 "wikilink")`SYSTEM`表空间内。

#### 磁盘文件

##### 数据文件

在物理层，由一个或多个[数据区块组成](../Page/块_\(数据存储\).md "wikilink")。区块的大小根据数据库的不同而不同。

数据文件可以使用计算机服务器的文件系统的预先分配空间，直接操作磁盘，或保存在[自动存储管理逻辑卷内](https://zh.wikipedia.org/wiki/ASM "wikilink")。\[4\]

##### 控制文件

一个或多个控制文件保存了系统整体的信息和状态。\[5\]

## 国际化

Oracle数据库软件有63个语种的版本（包括了区域差异语言比如美国英语和英国英语）。不同语言版本间的差异包括了日期和月份的名字，缩写，时间格式和排序。\[6\]

Oracle公司已经把Oracle数据库的错误信息翻译到阿拉伯语、加泰罗尼亚语、中文、捷克语、丹麦语、荷兰语、英语、芬兰语、法语、德语、希腊语、希伯来语匈牙利语、意大利语、日语、韩语、挪威语、波兰语、葡萄牙语、罗马尼亚语、俄语、斯洛伐克语、西班牙语、瑞典语、泰语和土耳其语。\[7\]

Oracle公司给数据库开发人员提供产生国际化的数据库应用程序的工具与机制。\[8\]

## 历史

## 版本

### 資料庫管理及開發工具

  - [Navicat for
    Oracle](http://www.navicat.com/cht/products/navicat_oracle/oracle_overview.html)是一套專為Oracle設計的強大資料庫管理及開發工具。它可以用於任何版本的Oracle資料庫，並支援大部份Oracle的功能，包括觸發器、索引、檢視等。
  - [Toad for
    Oracle](http://www.quest.com/toad-for-oracle/)是一款老牌的Oracle开发管理工具，比任何一款Oracle开发管理工具功能更多，并针对使用者不同的角色有多个分支版本。版本包括：Toad
    DBA Suite for Oracle是一款专门为Oracle DBA管理Oracle数据库工具, Toad Development
    Suite for Oracle是一款专门为Oracle开发工具， Toad DBA Suite for Oracle –
    Exadata Edition是一款专门为Oracle Exadata一体服务器及Oracle数据库管理工具, Toad DBA
    Suite for Oracle - RAC Edition是一款专门为Oracle搭建集群RAC的DBA管理工具

## 支持平台

在2001年发布的Oracle9i之前，甲骨文公司把他们的数据库产品广泛的移植到了不同的平台上。近期，甲骨文公司巩固了一小部分的操作系统平台。

截止至2006年10月，甲骨文公司的Oracle10g支持以下的操作系统和硬件：

  - [Apple](https://zh.wikipedia.org/wiki/Apple_Computer "wikilink")
    [Mac OS X
    Server](https://zh.wikipedia.org/wiki/Mac_OS_X_Server "wikilink"):
    [PowerPC](../Page/PowerPC.md "wikilink")
  - [HP](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")
    [HP-UX](../Page/HP-UX.md "wikilink"):
    [PA-RISC](https://zh.wikipedia.org/wiki/PA-RISC "wikilink"),
    [Itanium](https://zh.wikipedia.org/wiki/Itanium "wikilink")
  - HP : [Alpha](../Page/DEC_Alpha.md "wikilink")
  - HP [OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink"):
    Alpha, Itanium
  - [IBM](../Page/IBM.md "wikilink")
    [AIX5L](../Page/IBM_AIX.md "wikilink"): [IBM
    POWER](../Page/IBM_POWER.md "wikilink")
  - IBM :
  - [Linux](../Page/Linux.md "wikilink"):
    [x86](https://zh.wikipedia.org/wiki/x86 "wikilink"),
    [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink"), PowerPC,
    zSeries, Itanium
  - [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
    [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"):
    x86, x86-64, Itanium
  - [Sun](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")
    [Solaris](../Page/Solaris.md "wikilink"):
    [SPARC](../Page/SPARC.md "wikilink"), x86, x86-64

## 引用

## 外部連結

  - [Oracle Database](https://www.oracle.com/database/technologies/), a
    view provided by Oracle Corporation
  - [Oracle 18c Database
    Documentation](https://docs.oracle.com/en/database/oracle/oracle-database/18/index.html)

## 参见

  - [PL-SQL](../Page/PL-SQL.md "wikilink")

{{-}}

[Category:数据库管理系统](https://zh.wikipedia.org/wiki/Category:数据库管理系统 "wikilink")
[Category:甲骨文公司软件](https://zh.wikipedia.org/wiki/Category:甲骨文公司软件 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.