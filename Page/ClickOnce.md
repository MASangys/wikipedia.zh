**ClickOnce**是[微软](../Page/微软.md "wikilink")公司开发的一门用于在网络上发布应用程序的技术\[1\]。于[.NET框架](../Page/.NET框架.md "wikilink")2.0版中引入\[2\]。

## 特性

ClickOnce使得用户可以从支持ClickOnce的网页中点击一个链接来运行一个程序。ClickOnce的设计目标是使得应用程序的启动和升级更加容易。

ClickOnce的安装是把文件复制到用户的配置文件下，所以不需要管理员权限，对系统的影响也比较小。.Net对ClickOnce程序采取的安全策略是基于启动位置，在默认的安全设置下，从Internet启动的程序较从本地启动的程序拥有较少的权限。

ClickOnce程序可以从程序的更新位置检查是否有更新版本，并且提示用户下载和安装新的版本。

## 支持

在[集成开发环境](../Page/集成开发环境.md "wikilink")方面，[Visual
Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")
2005版本起支持将[Windows
Forms应用程序以ClickOnce方式发布](../Page/Windows_Forms.md "wikilink")\[3\]（Visual
C++应用程序除外\[4\]）。[Visual
Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")
2008版本起支持将[Windows Presentation
Foundation应用程序以ClickOnce方式发布](../Page/Windows_Presentation_Foundation.md "wikilink")\[5\]。

在浏览器方面，[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")6及更高版本支持从链接启动ClickOnce程序。[FireFox并不内建对ClickOnce的支持](https://zh.wikipedia.org/wiki/FireFox "wikilink")，不过可以通过安装一些插件来支持ClickOnce\[6\]。.Net框架3.5
SP1版本中附带一个用于支持ClickOnce的Firefox插件Microsoft .NET Framework
Assistant。\[7\]而在2009年10月16日，Mozilla在得到微軟同意的情況下，因安全性的問題而把附加元件Microsoft
.NET Framework Assistant和外掛程式Windows Presentation
Foundation加入黑名單，上述元件會被強制從Firefox中無效化。兩天後，微軟證實漏洞不會影響Firefox後，Mozilla已把Microsoft
.NET Framework Assistant移出黑名單。\[8\]

## 参考和脚注

## 外部链接

  - [微软ClickOnce项目组blog](https://web.archive.org/web/20091217224230/http://blogs.msdn.com/clickonce/)。

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")
[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")
[Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink")

1.  Visual Basic 2005从入门到精通，汤涌涛、 金红仙、宋明钧著，清华大学出版社2006年出版，第47页
2.  C\#入门经典(第3版)，Karli Watson、Christian Nagel著，齐立波译，清华大学出版社2006年出版，第454页
3.  Deploying .NET applications: learning MSBuild and ClickOnce，Sayed
    Ibrahim Hashimi著，Apress出版社2006年出版，第32页
4.  \[<http://msdn.microsoft.com/en-us/library/ms235287(VS.80>).aspx
    ClickOnce Deployment for Visual C++ Applications, Visual Studio
    2005产品文档\]
5.  Pro WPF in C\# 2008: Windows Presentation Foundation with .Net
    3.5，Matthew MacDonald著，Apress出版社2008年出版，第966页
6.  [ClickOnce and
    FireFox](http://blogs.msdn.com/saurabh/archive/2006/03/02/541988.aspx)
7.  [Uninstalling the Clickonce Support for
    Firefox](http://blogs.msdn.com/brada/archive/2009/02/27/uninstalling-the-clickonce-support-for-firefox.aspx)
8.