**Windows Server 2003**是[微软](../Page/微软.md "wikilink")的[服务器](../Page/服务器.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，對應[Windows XP](../Page/Windows_XP.md "wikilink")。

该产品最初叫作“Windows .NET Server”，后改成“Windows .NET Server 2003”，最终被改成“Windows Server 2003”，于2003年3月28日发布，並在同年四月底上市。

相對於[Windows 2000](../Page/Windows_2000.md "wikilink")，此版本做了很多改进，特别是：

  - 改进的[Active Directory](../Page/Active_Directory.md "wikilink")（活动目录，如可以从[schema中删除](https://zh.wikipedia.org/wiki/schema "wikilink")[类](https://zh.wikipedia.org/wiki/类 "wikilink")）
  - 改进的Group Policy（-{zh-hans:组策略; zh-hant:群組原則;}-）操作和管理
  - 改进的磁盘管理，如可以从Shadow Copy（[卷影复制](https://zh.wikipedia.org/wiki/卷影复制 "wikilink")）中备份文件。
  - 改进的[脚本和](https://zh.wikipedia.org/wiki/Scripting_language "wikilink")[命令行工具](https://zh.wikipedia.org/wiki/Command_line_interface "wikilink")，这是微软的革新——把一个完整的命令外壳带进下一版本Windows——的一部分。
  - 支持基于硬件的“看门狗定时器”，如果操作系统在一定时间内没有响应的话，它可以將服务器重啟。\[1\]

## 版本

Windows Server 2003有多种版本，每种都适合不同的商业需求：

  - Windows Server 2003 Web版
  - Windows Server 2003标准版
  - Windows Server 2003企业版
  - Windows Server 2003数据中心版

<table>
<caption>Windows Server 2003各版本硬件支持能力[2]</caption>
<thead>
<tr class="header">
<th><p>标准</p></th>
<th><p>Web版</p></th>
<th><p>标准版</p></th>
<th><p>企业版</p></th>
<th><p>数据中心版</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>物理CPU个数</p></td>
<td><p>2</p></td>
<td><p>1–4</p></td>
<td><p>1–8</p></td>
<td><p>8–64</p></td>
</tr>
<tr class="even">
<td><p>最大支持RAM</p></td>
<td><p>IA-32</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>x64</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Itanium</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Windows Server 2003 Web版

用于构建和存放[Web应用程序](https://zh.wikipedia.org/wiki/Web应用程序 "wikilink")、[网页和](https://zh.wikipedia.org/wiki/网页 "wikilink")[XML Web Services](https://zh.wikipedia.org/wiki/XML_Web_Services "wikilink")。它主要使用[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink") 6.0 [Web服务器并提供快速开发和部署使用](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")[ASP.NET](../Page/ASP.NET.md "wikilink")技术的[XML Web services和应用程序](https://zh.wikipedia.org/wiki/XML_Web_services "wikilink")。支持双处理器，最低支持256MB的内存。它最高支持2GB的内存。

Web版的Server不能用來作[列印伺服器用](https://zh.wikipedia.org/wiki/列印伺服器 "wikilink")。

没有发布web版的简体中文版。

### Windows Server 2003标准版

标准的英文名称：Windows Server 2003 Standard Edition
销售目标是中小型企业，支持文件和打印机共享，提供安全的Internet连接，允许集中的应用程序部署。支持4个处理器；最低支持256MB的内存，最高支持4GB的内存。

### Windows Server 2003企业版

标准的英文名称：Windows Server 2003 Enterprise Edition
Windows Server 2003企业版与Windows Server 2003标准版的主要区别在于：Windows Server 2003企业版 支持高性能服务器，并且可以群集服务器，以便处理更大的负荷。通过这些功能实现了可靠性，有助于确保系统即使在出现问题时仍可用。在一个系统或分区中最多支持八个处理器，八节点群集，最高支持32GB的内存（安全模式下為4GB）。

### Windows Server 2003数据中心版

标准的英文名称：Windows 2003 Server Datacenter Edition
针对要求最高级别的可伸缩性、可用性和可靠性的大型企业或国家机构等而设计的。它是最强大的服务器操作系统。分为32位版与64位版：

  - 32位版支持32个处理器，支持8点集群；最低要求512M内存，最高支持512GB的内存。\[3\]
  - 64位版支持Itanium和Itanium2两种处理器，支持64个处理器与支持8点集群；最低支持1GB的内存，最高支持512GB的内存。

## 升级

### SP1

微软于2005年3月30日发布Windows Server 2003的第一个服务包（Service Pack 1）。这个升级为Windows Server 2003用户提供了很多相似于Windows XP Service Pack 2的功能。这些功能包括：

  - 安全设置向导：此工具让管理员更方便的更改安全设置。\[4\]
  - 即時更新（Hot Patching）：此功能使Windows Server 2003在不用重新启动的情况下安装DLL，驱动程序，非核心更新。
  - IIS 6.0数据库检查：允许跟踪数据库的修改。\[5\]
  - [Windows 防火墙](https://zh.wikipedia.org/wiki/Windows_防火墙 "wikilink")：将Windows XP Service Pack 2裡的许多改进加入Windows Server 2003，还包括安全设置向导，它使管理员可以更容易地管理开放的输入端口，它会自动检测并选择缺省角色。
  - 其它网络方面的改进，包括支持无线供应服务，更好的IPv6支持，以及新的对[TCP SYN攻击的防护](https://zh.wikipedia.org/wiki/SYN_\(TCP\) "wikilink")。\[6\]
  - 安装后安全升级：当Service Pack 1服务器安装完成后第一次重启时，一个缺省模式被打开。它设置防火墙阻止所有接入请求，引导用户去安装升级软件包。
  - [数据执行保护](https://zh.wikipedia.org/wiki/数据执行保护 "wikilink")（DEP）：支持[禁止执行位](https://zh.wikipedia.org/wiki/NX_bit "wikilink")，有助于防止[缓冲区溢出](../Page/缓冲区溢出.md "wikilink")攻击，它是Windows Server入侵中常用的攻击手段之一。\[7\]
  - [Windows Media Player 10](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")。
  - Internet Explorer 6 SV1（俗称IE6 SP2）

Microsoft网站提供了完整的SP1更新项目。\[8\]

### SP2

Windows Server 2003的Service Pack 2已于2007年上半年正式发布。\[9\]发布日期最初定为2006年上半年。\[10\]注：微软未在Windows Service Pack Road Map网站中更新最后修改日期。2006年6月19日，微软面向Microsoft Connect用户提供了Service Pack 2的最初测试版，该版本的内部版本号为2721。而最新的内部版本是2725（Beta 1）。微软将Service Pack 2描述为“标准”服务包而发布，包含先前发布的安全更新、修补程序、及可靠性和性能方面的改进。\[11\] 除此之外，Service Pack 2包含[Microsoft管理控制台3.0](https://zh.wikipedia.org/wiki/Microsoft_Management_Console "wikilink")、Windows开发服务（替代[远程安装服务](https://zh.wikipedia.org/wiki/远程安装服务 "wikilink")）、对[WPA2的支持与针对](https://zh.wikipedia.org/wiki/IEEE_802.11i "wikilink")[IPSec与](https://zh.wikipedia.org/wiki/IPSec "wikilink")[系统配置实用程序的改进](../Page/MSConfig.md "wikilink")。

## 价格

  - Windows Server 2003标准版零售价格为999.00[美元](../Page/美元.md "wikilink")，包括5个Active Directory。客户也可以通过原始厂商[OEM与](https://zh.wikipedia.org/wiki/OEM "wikilink")[批量许可](https://zh.wikipedia.org/wiki/批量许可 "wikilink")（Volume License；又稱「[大量授權](https://zh.wikipedia.org/wiki/大量授權 "wikilink")」）方式取得。

<!-- end list -->

  - Windows Server 2003企业版的32位版本零售价格为3,999.00美元，包括25个Active Directory；客户也可以通过原始厂商OEM与批量许可方式取得。至于64位版本的Windows Server 2003 Enterprise Edition-{只}-能通过OEM与批量许可方式取得。

<!-- end list -->

  - Windows Server 2003 Web版的Open NL价格为399美元，不需要客户端访问授权。此版本没有零售版，-{只}-能通过OEM与批量许可方式取得。

<!-- end list -->

  - Windows Server 2003数据中心版不论32位版还是64位版都必须通过OEM方式获得，因此並沒有「售價」這一概念。

## 参见

  - [操作系统](../Page/操作系统.md "wikilink")
  - [操作系统列表](../Page/操作系统列表.md "wikilink")

## 參考資料

<references />

## 外部链接

  - [Windows Server 2003英文主页](https://web.archive.org/web/20060423120113/http://www.microsoft.com/windowsserver2003/default.mspx)
  - [Windows Server 2003主页](https://www.microsoft.com/china/windowsserver2003/)

[Category:Windows服务器](https://zh.wikipedia.org/wiki/Category:Windows服务器 "wikilink") [Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.