> 本文内容由[Windows Server更新服务](https://zh.wikipedia.org/wiki/Windows_Server更新服务)转换而来。


**Windows Server更新服务**\[1\]（，缩写**WSUS**），曾称为**软件更新服务**（Software Update Services，缩写**SUS**），是[微软公司开发的一个计算机程序](https://zh.wikipedia.org/wiki/微软公司 "wikilink")，它允许管理员管理已为微软产品发布的[更新和](https://zh.wikipedia.org/wiki/修補程式 "wikilink")[热修复](../Page/热修复.md "wikilink")补丁分发到企业环境中的计算机。WSUS从[微软更新网站下载这些更新](../Page/Windows_Update.md "wikilink")，然后分发它们到网络上的计算机。WSUS运行在[Windows Server上](../Page/Windows_Server.md "wikilink")，免费[授权给微软客户](https://zh.wikipedia.org/wiki/授权 "wikilink")。

## 历史

**WSUS**的首个版本被称为“软件更新服务”（Software Update Services，缩写SUS）。\[2\]它在最初只分发适用于微软操作系统的热修复和补丁。<span class="cx-segment" data-segmentid="90"></span>在Windows Server操作系统上运行的SUS会从远端的同样由微软运营的[Windows Update网站下载适用特定Windows版本的更新](../Page/Windows_Update.md "wikilink")。客户端也可以从内部服务器而非连接到Windows Update服务器下载更新。\[3\]微软原定SUS的支持将在2016年12月6日结束，但基于用户反馈，日期被延长到2017年7月10日。\[4\]

WSUS建立在SUS基础上，并扩展了它可以更新的软件范围。WSUS可以自动下载更新、[热修复](../Page/热修复.md "wikilink")、[服务包](../Page/服務包.md "wikilink")、[驱动程序](../Page/驱动程序.md "wikilink")和功能包，从一个中心服务器到到一个组织中的客户端。

## 操作

Windows Server Update Services 2.0及以上版本包含一个微软更新包的资料库。它允许管理员在更新发布前批准或拒绝，强制在指定日期安装更新，以及获取各台机器需要哪些更新的广泛报告。系统管理员也可以配置WSUS为自动批准某类更新（关键更新、安全更新、服务包、驱动程序等）。这也可配置为仅“检测”更新，允许管理员查看各机器需要的更新并且不安装它们。<span class="cx-segment" data-segmentid="110"></span>

管理员可以使用WSUS的组策略配置客户端的自动更新，确保最终用户不能禁用或绕过公司的更新策略。WSUS不需要使用[Active Directory](../Page/Active_Directory.md "wikilink")；客户端配置也可以通过修改本地组策略或[Windows注册表应用](../Page/注册表.md "wikilink")。

WSUS使用[.NET Framework](../Page/.NET框架.md "wikilink")、[Microsoft管理控制台](https://zh.wikipedia.org/wiki/Microsoft管理控制台 "wikilink")（MMC）和[Internet Information Services](../Page/網際網路資訊服務.md "wikilink").（IIS）。WSUS 3.0使用[SQL Server Express或](../Page/SQL_Server_Express.md "wikilink")[Windows Internal Database作为其数据引擎](https://zh.wikipedia.org/wiki/Windows_Internal_Database "wikilink")，而WSUS 2.0使用WMSDE。系统中心配置管理器（SCCM）可以操作WSUS，并且可将第三方安全更新导入产品。\[5\]

## 版本历史

| 版本                                       | 日期          | 备注                                                                                                                                                                                        |
| ---------------------------------------- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 2.0 [发布候选](../Page/軟件版本週期.md "wikilink") | 2005年3月22日  |                                                                                                                                                                                           |
| 2.0 RTM                                  | 2005年6月6日   |                                                                                                                                                                                           |
| 2.0 Service Pack 1                       | 2006年5月31日  | 添加对[Windows Vista客户端的支持](../Page/Windows_Vista.md "wikilink")，更多客户端语言，使用[Microsoft SQL Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink") 2005作为数据库后端，以及改进基于网页的用户界面性能 |
| 3.0 beta 2                               | 2006年8月14日  | 基于MMC的用户界面和大量新功能                                                                                                                                                                          |
| 3.0 发布候选                                 | 2007年2月12日  |                                                                                                                                                                                           |
| 3.0 RTM                                  | 2007年4月30日  | WSUS 3.0和WSUS Client 3.0在2007年5月22日正式提供\[6\]                                                                                                                                              |
| 3.0 Service Pack 1 发布候选                  | 2007年11月1日  |                                                                                                                                                                                           |
| 3.0 Service Pack 1 RTM\[7\]              | 2008年2月7日   |                                                                                                                                                                                           |
| 3.0 Service Pack 2 RTM                   | 2009年8月25日  | 内置在Server 2008 R2中                                                                                                                                                                        |
| 4.0 RTM                                  | 2012年10月26日 | 内置在Server 2012中                                                                                                                                                                           |
| 5.0                                      | 2016年9月26日  | 内置在Server 2016中                                                                                                                                                                           |

## 参考资料

## 外部链接

  - 在Microsoft TechNet

  - [WSUS产品团队博客
    ](http://blogs.technet.com/wsus/default.aspx)

[Category:微軟伺服器技術](https://zh.wikipedia.org/wiki/Category:微軟伺服器技術 "wikilink") [Category:Windows服务器](https://zh.wikipedia.org/wiki/Category:Windows服务器 "wikilink") [Category:修补工具](https://zh.wikipedia.org/wiki/Category:修补工具 "wikilink")

1.  根据 <https://www.microsoft.com/Language/zh-tw/Search.aspx> 的官方译法
2.
3.
4.
5.
6.
7.