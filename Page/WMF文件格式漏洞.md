**WMF文件格式漏洞**是一个源于[微软](../Page/微软.md "wikilink")[Windows](../Page/Windows.md "wikilink")[操作系统的漏洞](../Page/操作系统.md "wikilink")，被一个[计算机安全](../Page/计算机安全.md "wikilink")[邮件列表Bugtraq于](../Page/邮件列表.md "wikilink")2005年12月27日公开[1](http://www.securityfocus.com/archive/1/420288/30/30/)，在24小时内就成为一些恶意程序，例如[间谍软件和](../Page/间谍软件.md "wikilink")[木马程序的载体](../Page/木马程序.md "wikilink")。

微软于1月6日发布了针对[Windows 2000和](../Page/Windows_2000.md "wikilink")[Windows
XP版本中不当处理WMF函数SETABORTPROC的补丁](../Page/Windows_XP.md "wikilink")，并且在1月16日发布了针对[Windows
Vista的补丁](../Page/Windows_Vista.md "wikilink")，但是其他的操作系统仍旧会受到该漏洞的威胁。

该漏洞源于Windows的核心模块[gdi32.dll处理](../Page/图形设备接口.md "wikilink")[WMF格式的方式](../Page/WMF.md "wikilink")，允许在计算机上不经过用户许可即执行代码。因此该漏洞成为恶意代码的载体，通常被用来暗中下载其他恶意软件。1月9日，Bugtraq报告另外两个WMF函数ExtCreateRegion和ExtEscape也有同样的漏洞，但是微软声称这两个漏洞只会造成性能问题
。

## 影响的系统

微软的安全建议说一些被硬件实现的[数据执行保护功能保护的计算机对已知的攻击免疫](../Page/数据执行保护.md "wikilink")[2](http://www.microsoft.com/china/technet/security/advisory/912840.mspx)
。

因为该漏洞是WMF文件的特性之一，该漏洞的已知影响范围从[Windows
98到](../Page/Windows_98.md "wikilink")[Windows
Vista](../Page/Windows_Vista.md "wikilink")，但是甚至連[Windows
3.0和非Windows的操作系统都可能受影响](../Page/Windows_3.0.md "wikilink")。但是，因为-{只}-有Windows
XP和启用了图像预览功能的[Windows
ME默认会打开WMF文件](../Page/Windows_ME.md "wikilink")，所以这个系统比其他系统更加容易受到攻击。更旧的Windows版本和非Windows操作系统并不默认支持打开WMF文件，但是[ACDSee这样的第三方程序可能使系统受到影响](../Page/ACDSee.md "wikilink")。

非Windows的操作系统不直接受到影响，但是一些模拟Windows行为的模拟器在打开WMF文件的时候可能会受到攻击。有报告说[Linux和](../Page/Linux.md "wikilink")[BSD操作系统中可以在](../Page/BSD.md "wikilink")[WINE上运行的Cedega程序有这个漏洞](../Page/WINE.md "wikilink")[3](https://web.archive.org/web/20060317204854/http://blogs.zdnet.com/Ou/index.php?p=146)
。Wine的代码已经更新以修正这个问题[4](http://www.zdnet.com/5208-10533-0.html?forumID=1&threadID=16466&messageID=327929&start=-18)
。

## 弱点

微软的安全公告[5](http://www.microsoft.com/china/technet/security/bulletin/MS06-001.mspx)
声称，这个漏洞存在于图形呈现引擎处理特制的WMF图像的方式中，可能允许执行任意代码，控制受影响的系统。

## 传播和感染

计算机大多被附带特殊处理（感染）过的WMF文件的[电子邮件所感染](../Page/电子邮件.md "wikilink")，但也可能以下列方式被感染：

  - 浏览一个被感染的站点或者预览被感染的电子邮件。如果浏览器自动下载並显示WMF文件（有可能并非以.WMF为扩展名）的话，感染过的WMF文件中的代码可能被执行。在一些浏览器提示下载和打开感染过的WMF文件时，如果用户选择确认，那么恶意代码也可能被执行。一些允许在帖子内容中插入图像的论坛因此停止了允许插入图像的功能。
  - 在Windows资源管理器中预览感染过的WMF文件。
  - 在一些软件，比如[即时通讯软件中点击收到的消息中的链接](../Page/即时通讯软件.md "wikilink")。

其他方法也可能被用于传播感染过的WMF文件。

2005年12月31日，反病毒软件商[McAfee表示](../Page/McAfee.md "wikilink")，这种恶意程序感染了他们的超过6%的用户。根据[Secunia的报告](../Page/Secunia.md "wikilink")，“该漏洞来源于对包含特殊处理过的SETABORTPROC转义记录WMF文件的错误处理。这样的记录允许用户定义的代码在呈现WMF文件失败时被执行。”

## 补丁

因为这个WMF文件格式漏洞的影响范围仍旧在增加，而且这个漏洞并无特定的代码特征，所以需要一个可以治本的补丁来阻止恶意代码的传播。

微软公司已经于1月6日发布了针对Windows
2000以上版本SETABORTPROC函数不当处理漏洞的补丁[6](http://www.microsoft.com/china/technet/security/bulletin/MS06-001.mspx)
。该补丁原计划于1月10日发布，但是测试工作提前完成了。

[Ilfak
Guilfanov也在他的网站上发布了一个第三方的针对SETABORTPROC函数的补丁](../Page/Ilfak_Guilfanov.md "wikilink")[7](http://www.hexblog.com/2005/12/wmf_vuln.html)，声称对于WinXP
(SP1,SP2)和Win2000系统，可以移除这个gdi32中的缺陷，但是这是通过注入代码到系统模块实现的，可能在产生诸如打印包含WMF图像的文档失败的问题。在被广泛报道之后，这个网站因为过载而在2006年1月3日暂时关闭，而在2006年1月4日成为了一个简洁的网页。这个补丁在一个镜像站点[8](https://web.archive.org/web/20060105085547/http://handlers.dshield.org/jullrich/wmffaq.html)
也可以下载。

针对这个漏洞，用户可以考虑采取以下步骤：

  - 安装微软发布的官方补丁。
  - 如果使用的是硬件（例如AMD的64位CPU）实现的[数据执行保护](../Page/数据执行保护.md "wikilink")，打开所有程序的数据执行保护。
  - 设置WMF文件的默认关联程序为一个不可能执行WMF指令的程序，例如[记事本](../Page/记事本.md "wikilink")。
  - 通过设置Internet选项中的默认安全设置为高来关闭下载。
  - 確保防毒軟體為最新版本，并且考虑频繁地手动检查更新。
  - 在网络内通过过滤文件头来禁止发送WMF文件。
  - 尽可能减少用户的权限。
  - 禁用[Google
    Desktop的索引功能](../Page/Google_Desktop.md "wikilink")，直到该问题被解决。
  - 使用非Windows的操作系统，例如[Linux](../Page/Linux.md "wikilink")、[FreeBSD或者](../Page/FreeBSD.md "wikilink")[Unix](../Page/Unix.md "wikilink")。
  - 在可能自动显示WMF文件的程序，例如Internet
    Explorer[9](http://support.microsoft.com/kb/153790)
    和Outlook[10](http://support.microsoft.com/kb/843018)
    中关闭图像的显示。使用非Internet
    Explorer的浏览器会减轻一点风险，但是不能识别改名为其他扩展名的恶意WMF文件。
  - 使用非Windows的操作系统进行高危操作，例如进行聊天或者浏览可以在帖子中插入图像的论坛。
  - 在Windows中禁用[索引服务](../Page/索引服务.md "wikilink")

## 外部链接

  - [微软安全建议（912840）](http://www.microsoft.com/china/technet/security/advisory/912840.mspx)
    - 微软公司
  - [Windows现零日漏洞建议禁用.WMF图像功能](http://tech.sina.com.cn/it/2005-12-30/0832807109.shtml)
    - [新浪网](../Page/新浪网.md "wikilink")
  - [WMF
    FAQ](https://web.archive.org/web/20060105085547/http://handlers.dshield.org/jullrich/wmffaq.html)

<!-- end list -->

  - [非官方补丁](http://www.hexblog.com/2005/12/wmf_vuln.html) - Ilfak
    Guilfanov（英文）
  - [刚出补丁微软WMF图像文件又暴两个新漏洞](http://news.xinhuanet.com/world/2006-01/10/content_4034918.htm)

[Category:電腦安全](https://zh.wikipedia.org/wiki/Category:電腦安全 "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink")