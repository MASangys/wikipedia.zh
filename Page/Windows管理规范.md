**Windows管理规范**（**Windows Management Instrumentation**，缩写**WMI**）由一系列对[Windows Driver Model的扩展组成](../Page/Windows_Driver_Model.md "wikilink")，它通过组件提供信息和通知，並提供了一个[操作系统](../Page/操作系统.md "wikilink")的接口。WMI是[微软](../Page/微软.md "wikilink")对（DMTF）的（WBEM）和[通用信息模型](../Page/通用信息模型.md "wikilink")（CIM）标准的实现。

WMI预装在[Windows 2000及更新版的微软](../Page/Windows_2000.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")中，适用于[Windows NT](../Page/Windows_NT.md "wikilink")、[Windows 95和](../Page/Windows_95.md "wikilink")[Windows 98等操作系统](../Page/Windows_98.md "wikilink")，\[1\]\[2\]並允许使用[脚本语言](../Page/脚本语言.md "wikilink")（例如[VBScript](../Page/VBScript.md "wikilink")或[Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")）来本地或远程管理[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[个人电脑](../Page/个人电脑.md "wikilink")和[服务器](../Page/服务器.md "wikilink")。

微软亦为WMI提供了一个称为**Windows Management Instrumentation Command-line**（**WMIC**）的[命令行界面](../Page/命令行界面.md "wikilink")。\[3\]

## WMI目的

WMI通过提供统一的模型来补充其他标准。该模型表示可以通过一种常用方式来访问受管环境的任何来源的管理数据。其規範目的是定义一系列独立于环境的专有规范，並允许管理信息在管理应用程序之间共享。此規範规定了[企业管理标准以及现有的适用于Windows的相关技术](https://zh.wikipedia.org/wiki/企业管理 "wikilink")，例如（DMI）和[SNMP](../Page/简单网络管理协议.md "wikilink")。

## 开发过程

因为WMI使用了CIM 物件管理員和資料提供者(Provider) 集合来抽取可管理的实体\[4\]，資料提供者程序的开发可意味着有数个步骤。主要步骤如下：

1.  创建可管理的实体模型
    1.  定义一个模型
    2.  实现该模型
2.  创建WMI資料提供者
    1.  确定要实现的資料提供者类型
    2.  确定该資料提供者的托管模型
    3.  用ALT向导创建資料提供者模板
    4.  在该資料提供者中实现代码逻辑
    5.  使用WMI和该系统注册该資料提供者
3.  测试该資料提供者
4.  创建使用者样本代码

## WMI資料提供者的重要性

自从[Windows NT 4.0](../Page/Windows_NT_4.0.md "wikilink") SP4的第一个作为外部下载的WMI发布以来，微软一直向WindowsWMI提供添加的功能：

  - 在Windows NT 4.0，安装WMI后，微软提供了大约15个可用的WMI資料提供者
  - 在[Windows 2000发布时](../Page/Windows_2000.md "wikilink")，微软已发布29个WMI資料提供者作为操作系统预装的一部分
  - 在[Windows Server 2003发布时](../Page/Windows_Server_2003.md "wikilink")，微软在平台上包含80多个WMI資料提供者
  - [Windows Vista中包含](../Page/Windows_Vista.md "wikilink")13个新的WMI資料提供者\[5\]，总数量接近100个
  - [Windows Server 2008包含更多資料提供者](../Page/Windows_Server_2008.md "wikilink")，例如用于[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink") 7、[PowerShell和](../Page/Windows_PowerShell.md "wikilink")[虚拟化的資料提供者](https://zh.wikipedia.org/wiki/虚拟化 "wikilink")

即使微软从未明确承诺，有许多客户將資料提供者数量的增长解釋为WMI已经成为微软Windows一项“无处不在”管理层的標志。

由於Windows中通过WMI管理数据不断增加，[信息技术](../Page/信息技术.md "wikilink")领域的人员开始开发基于WMI的脚本和自动化程序。除了脚本需求外，大多数领先的管理软件（包括[MOM](../Page/MOM.md "wikilink")、、ADS、[HP](../Page/惠普.md "wikilink")  for Windows（HPOV）、[BMC Software](../Page/BMC軟件公司.md "wikilink")、[CA, Inc](https://zh.wikipedia.org/wiki/CA科技 "wikilink")）都提供WMI功能，亦允许通过各种用户接口使用或提供WMI信息。这使得无法在WMI上编程的[系统管理员](../Page/系统管理员.md "wikilink")和操作员无需预先了解也能享受到WMI的优势。

## 特性

对于愿意开发一个或多个WMI提供者的人来说，WMI提供了许多「開箱即用」的特性。

## 参考资料

## 外部链接

  - \[<https://msdn.microsoft.com/en-us/library/aa394582(v=vs.85>).aspx WMI at the Microsoft Developer Network\]
  - [CIM terminology](http://msdn2.microsoft.com/en-us/library/ms811530.aspx)
  - [WMI Overview and Background](http://msdn2.microsoft.com/en-us/library/ms811553.aspx)
  - [WMI and CIM overview](http://msdn2.microsoft.com/en-us/library/ms811552.aspx)
  - [How improved support for WMI makes PowerShell the best environment to use and script WMI](http://blogs.msdn.com/powershell/archive/2006/06/26/647038.aspx)
  - [Microsoft WMI Webcast](https://web.archive.org/web/20100305163352/http://msevents.microsoft.com/CUI/WebCastEventDetails.aspx?culture=en-US&EventID=1032290321&CountryCode=US)
  - [WMI Code Creator](http://www.microsoft.com/en-us/download/details.aspx?id=8572)
  - [Use Java to work with WMI from any platform](http://j-interop.org)
  - [Working with WMI providers to PowerShell](http://searchwincomputing.techtarget.com/generic/0,295582,sid68_gci1250536,00.html)
  - [WMI (and SMART) Components for Delphi](http://www.magsys.co.uk/delphi/magwmi.asp)
  - [How To Get Windows Experience Index (WEI) Score In Windows 8.1 or higher](http://www.myfavoritegadgets.info/tipstricks/WEIwin81.html)
  - [使用WMIC查看硬件参数](https://www.ytyzx.org/index.php/%E4%BD%BF%E7%94%A8WMIC%E5%91%BD%E4%BB%A4%E6%9F%A5%E7%9C%8B%E7%A1%AC%E4%BB%B6%E5%8F%82%E6%95%B0)

[Category:管理信息系统](https://zh.wikipedia.org/wiki/Category:管理信息系统 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:網路管理](https://zh.wikipedia.org/wiki/Category:網路管理 "wikilink") [Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink") [Category:Windows通信和服务](https://zh.wikipedia.org/wiki/Category:Windows通信和服务 "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.  [WMI Redistributable for Windows NT](http://www.microsoft.com/downloads/details.aspx?familyid=C174CFB1-EF67-471D-9277-4C2B1014A31E&displaylang=en)
2.
3.  [Description of WMIC](http://support.microsoft.com/kb/290216)
4.
5.  [Windows Vista Client Manageability](http://download.microsoft.com/download/b/e/3/be37cbce-425e-45c2-a9f5-378026b5be81/04-d-WinMgmtTech-v03-TOURB-FINAL.ppt)