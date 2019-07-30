**Windows Server 2016**\[1\]（前称**Windows Server vNext**）是[微软](../Page/微软.md "wikilink")推出的第七个[Windows Server系列](../Page/Windows_Server.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，它是[Windows 10的服务器版本](../Page/Windows_10.md "wikilink")。它的第一个早期预览版本（技术预览版）连同System Center的第一个技术预览版于2014年10月1日推出\[2\]。正式版于2016年9月26日推出\[3\]，并于同年10月12日正式发售\[4\]。Server 2016没有和Windows 10同时发布，对此官方解释称这是为了在正式版发布前推出更多的技术预览版以便改善系统的稳定性。

## 功能

Windows Server 2016具有多种新功能，其中包括：

  - ：可以配置活动目录联合服务来验证用户存储在非[活动目录的身份](https://zh.wikipedia.org/wiki/活动目录 "wikilink")，例如[X.500兼容的](https://zh.wikipedia.org/wiki/X.500 "wikilink")[轻量级目录访问协议](https://zh.wikipedia.org/wiki/轻量级目录访问协议 "wikilink")（LDAP）目录和[SQL](../Page/SQL.md "wikilink")数据库。\[5\]

  - [Windows Defender](../Page/Windows_Defender.md "wikilink")：Windows Server反恶意软件已經安装并默认启用（无GUI），这是一个可安装的Windows功能。\[6\]

  - [Remote Desktop Services](https://zh.wikipedia.org/wiki/Remote_Desktop_Services "wikilink")：支持[OpenGL](../Page/OpenGL.md "wikilink") 4.4和[OpenCL](../Page/OpenCL.md "wikilink") 1.1，性能和稳定性改进；MultiPoint Services角色（见[Windows MultiPoint Server](https://zh.wikipedia.org/wiki/Windows_MultiPoint_Server "wikilink")）\[7\]

  - ：中心化存储QoS策略；（使用[SMB3在服务器间提供存储无关](../Page/伺服器訊息區塊.md "wikilink")、块级别、基于卷、同步和异步复制的[灾难恢复](https://zh.wikipedia.org/wiki/灾难恢复 "wikilink")）。\[8\]存储副本复制块而非文件；文件可以正在使用。它不是多主，不是一对多和不可传递。它定期复制快照，并可更改复制方向。

  - ：群集操作系统滚动升级、存储副本\[9\]

  - ：为[HTTP基本认证](../Page/HTTP基本认证.md "wikilink")应用程序提供预身份验证，通配符发布应用程序，HTTP到HTTPS重定向，客户端IP地址传播到后端应用程序\[10\]

  - [IIS 10](../Page/網際網路資訊服務.md "wikilink")：支持[HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")

  - Windows Server Containers

  - [Windows PowerShell 5.0](../Page/Windows_PowerShell.md "wikilink")\[11\]

  - ，一项Windows特性，跳过硬件初始化并只重置软件以加快启动流程。\[12\]

### 网络功能

  - [动态主机设置协议](../Page/动态主机设置协议.md "wikilink")：因为[網路存取保護技術在Windows](https://zh.wikipedia.org/wiki/網路存取保護技術 "wikilink") Server 2012 R2中已弃用，在Windows Server 2016中DHCP角色不再支持NAP\[13\]

  - [DNS](../Page/域名系统.md "wikilink")：

      - DNS客户端：服务绑定——增强对具有[多个网络接口的计算机的支持](../Page/內送流量備援容錯機制.md "wikilink")。\[14\]

      - ：DNS策略，新的DDS记录类型（TLSA、SPF和位置记录），新的PowerShell cmdlets和参数\[15\]

  - 现在支持[通用路由封装](../Page/通用路由封装.md "wikilink")（GRE）隧道\[16\]

  - （IPAM）：支持/31、/32和/128子网；基于文件的发现，加入域的DNS服务器；新的DNS功能；更好的DNS、DHCP和IP地址（DDI）集成管理\[17\]

  - [网络控制器](https://zh.wikipedia.org/wiki/网络控制器 "wikilink")，一个新的服务器角色来配置、管理、监控和故障排除数据中心中虚拟和物理的网络设备与服务。\[18\]

  - Hyper-V：可编程Hyper-V切换（微软[軟體定義網路](../Page/軟體定義網路.md "wikilink")解决方案的新构建块）；[VXLAN封装支持](../Page/虛擬局域網擴展.md "wikilink")。微软软件负载平衡器互操作性；更好的兼容IEEE以太网标准。\[19\]

### Hyper-V

  - 滚动群集更新：不同于群集从Windows 2008 R2升级到2012级别，Windows Server Technical Preview的群集节点可以添加到一个运行有Windows Server 2012 R2节点的Hyper-V群集。该群集仍可继续使用Windows Server 2012 R2功能级别，直到群集内的所有节点都已經升级，群集的功能级别才会升级。\[20\]

  - 存储系统服务质量（QoS），集中、端到端监控存储性能和为Hyper-V和Scale-Out文件服务器创建策略

  - 新的、更有效率的二进制虚拟机配置格式（.VMCX扩展名用于虚拟机配置数据，.VMRS扩展名用于运行时状态数据）

  - 生产环境检查点

  - Hyper-V管理器：备用凭据支持，低级别管理，协议

  - 为通过[Windows Update分发的Windows客户机集成服务](../Page/Windows_Update.md "wikilink")

  - 热添加和移除网络适配器（面向第二代虚拟机）和内存（面向第一代和第二代虚拟机）

  - Linux

  - 兼容

  - 的弹性存储功能将检测VM存储的连接丢失而出现的暂时删除。VM将被暂停直至连接重新建立。\[21\]

### Nano Server

微软宣布了新的安装选项：Nano Server。这是Windows Server的最小足迹安装选项。它不包括图形用户界面、[WoW64](../Page/WoW64.md "wikilink")（用于支持32位软件）和[Windows Installer](../Page/Windows_Installer.md "wikilink")，不支持控制台登录和本地或[远程桌面连接的登录](https://zh.wikipedia.org/wiki/远程桌面连接 "wikilink")。所有管理均通过[Windows Management Instrumentation](https://zh.wikipedia.org/wiki/Windows_Management_Instrumentation "wikilink")（WMI）和PowerShell远程执行。微软工程师Jeffrey Snover称，Nano Server降低93%大小，92%关键安全通告，并比Windows Server减少80%重新启动。\[22\]\[23\]

## 开发

自[萨蒂亚·纳德拉担任微软首席执行官后](https://zh.wikipedia.org/wiki/萨蒂亚·纳德拉 "wikilink")，Windows Server和System Center的开发团队合二为一（以前Server团队Windows客户端团队的合作更加紧密）。另外，[Azure团队也同样和Windows](../Page/Microsoft_Azure.md "wikilink") Server团队紧密地合作着。\[24\]

## 发布

### 技术预览版

2014年10月1日，微软推出“Windows Server Technical Preview”，这是Windows Server 2016（当时仍称）的第一个测试版本，这一版本的目标用户为企业用户。第一个技术预览版本原定于2015年4月15日发布\[25\]，但后来微软推出了一个工具导致该版本发布日期延期，直至2015年5月4日第二个技术预览版本推出\[26\]。2015年8月19日，Windows Server 2016的第三个预览版本发布\[27\]。2015年11月19日，Windows Server 2016的第四个预览版本发布\[28\]。2016年4月27日，微软发布Windows Server 2016的第五个预览版本\[29\]。

### 正式发布

Windows Server 2016于2016年9月26日正式推出\[30\]\[31\]，于同年10月12日正式发售\[32\]。与前代不同的是，Windows Server 2016是根据[处理器的核心数而非](https://zh.wikipedia.org/wiki/多核心处理器 "wikilink")[处理器的数量进行授权](../Page/CPU插座.md "wikilink")，在此之前，[BizTalk Server 2013以及](https://zh.wikipedia.org/wiki/BizTalk "wikilink")[SQL Server 2014等就曾采用过这种授权方式](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")\[33\]。

### 版本历史

|  |      |  |      |  |      |
|  | ---- |  | ---- |  | ---- |
|  | 无效发布 |  | 历史发布 |  | 最新发布 |

<table>
<thead>
<tr class="header">
<th><p>Windows Server 2016平台版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>内部版本版本<br />
</p></td>
</tr>
<tr class="even">
<td><p>6.4.9841<br />
Technical Preview<br />
[34]</p></td>
</tr>
<tr class="odd">
<td><p>10.0.10074<br />
Technical Preview 2<br />
</p></td>
</tr>
<tr class="even">
<td><p>10.0.10514<br />
Technical Preview 3<br />
</p></td>
</tr>
<tr class="odd">
<td><p>10.0.10586<br />
Technical Preview 4<br />
</p></td>
</tr>
<tr class="even">
<td><p>10.0.14300<br />
Technical Preview 5<br />
</p></td>
</tr>
<tr class="odd">
<td><p>10.0.14393<br />
<a href="https://zh.wikipedia.org/wiki/軟件版本週期#RTM" title="wikilink">RTM</a><br />
</p></td>
</tr>
<tr class="even">
<td><p>10.0.16299<br />
</p></td>
</tr>
</tbody>
</table>

## 参考资料

## 外部链接

  - [PluralSight: Windows Server vNext First Look – An introduction to the new features of the Windows Server vNext operating system](http://www.pluralsight.com/courses/windows-server-vnext-first-look)
  - [Our Server Journey – video session describing the path that Windows Server has taken from its creation to the current day and where it is going from here](https://web.archive.org/web/20150407060318/http://channel9.msdn.com/events/Future-Decoded-Tech-Day-2014/TechDays-Online-2015/Microsoft-Corporate-Keynote-and-Interview-Jeffrey-Snover)
  - [Michael Pietroforte: Nano Server – Goodbye Windows Server?](https://4sysops.com/archives/nano-server-goodbye-windows-server/)

[Category:2016年软件](https://zh.wikipedia.org/wiki/Category:2016年软件 "wikilink") [Category:Windows服务器](https://zh.wikipedia.org/wiki/Category:Windows服务器 "wikilink")

1.

2.

3.

4.
5.  [TechNet: Active Directory Federation Services Overview – AD FS in Windows Server Technical Preview](https://technet.microsoft.com/en-us/library/hh831502.aspx?f=255&MSPPError=-2147217396#BKMK_preview)

6.  [TechNet: Windows Server Antimalware Overview for Windows Server Technical Preview (Updated: February 19, 2015)](https://technet.microsoft.com/en-us/library/dn765478.aspx?f=255&MSPPError=-2147217396)

7.  [TechNet: What's New in Remote Desktop Services in the Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765476.aspx)

8.  [TechNet: What's New in Storage Services in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765475.aspx?f=255&MSPPError=-2147217396)

9.  [TechNet: What's New in Failover Clustering in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765474.aspx)

10. [TechNet: What's New in Web Application Proxy in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765473.aspx?f=255&MSPPError=-2147217396)

11. [TechNet: What's New in Windows PowerShell (Updated: September 30, 2014)](https://technet.microsoft.com/library/hh857339.aspx#BKMK_new50)

12. [System Center Central: Windows Server Technical Preview – New/Removed Windows Server Roles and Features](http://www.systemcentercentral.com/windows-server-technical-preview-newremoved-windows-server-roles-features/)

13. [TechNet: What's New in DHCP in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765482.aspx)

14. [TechNet: What's New in DNS Client in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765479.aspx?f=255&MSPPError=-2147217396)

15. [TechNet: What's New in DNS Server in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765484.aspx)

16. [TechNet: GRE Tunneling in Windows Server Technical Preview (Updated: October 1, 2014)](https://technet.microsoft.com/en-us/library/dn765485.aspx?f=255&MSPPError=-2147217396)

17. [TechNet: What's New in IPAM in Windows Server Technical Preview (Updated: February 6, 2015)](https://technet.microsoft.com/en-us/library/dn765487.aspx)

18. [TechNet: Network Controller (Updated: December 18, 2014)](https://technet.microsoft.com/en-us/library/dn859239.aspx?f=255&MSPPError=-2147217396)

19. [TechNet: What's New in Hyper-V Network Virtualization in Windows Server Technical Preview (Updated: March 11, 2015)](https://technet.microsoft.com/en-us/library/dn931986.aspx?f=255&MSPPError=-2147217396)

20. [TechNet: What's New in Hyper-V in Technical Preview (Updated: November 12, 2014)](https://technet.microsoft.com/en-us/library/dn765471.aspx#BKMK_hot)

21. [TechNet Wiki: Hyper-V Features in Windows Server 2016](http://social.technet.microsoft.com/wiki/contents/articles/33635.hyper-v-aspects-in-windows-server-2016.aspx)

22. [Windows Server Blog: Microsoft Announces Nano Server for Modern Apps and Cloud](http://blogs.technet.com/b/windowsserver/archive/2015/04/08/microsoft-announces-nano-server-for-modern-apps-and-cloud.aspx)

23. [Server & Cloud Blog: Microsoft Announces New Container Technologies for the Next Generation Cloud](http://blogs.technet.com/b/server-cloud/archive/2015/04/08/microsoft-announces-new-container-technologies-for-the-next-generation-cloud.aspx)

24.

25.

26.

27.

28.

29.

30.

31.

32.
33.

34.