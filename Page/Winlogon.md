在[微软](../Page/微软.md "wikilink")的[Windows
NT系列操作系统中](../Page/Windows_NT.md "wikilink")，'''Winlogon
'''是负责处理安全相关的用户交互界面的组件\[1\]。Winlogon的工作包括加载其他用户身份安全组件、提供图形化的登录界面，以及创建用户会话。这个模块是Windows操作系统的关键进程，其中止会造成Windows崩溃\[2\]。

Winlogon负责在登录时调用用户身份安全组件搜集用户身份凭据，在[Windows
Vista之前的NT版本Windows中](../Page/Windows_Vista.md "wikilink")，这个界面由[图形化识别和验证](https://zh.wikipedia.org/wiki/图形化识别和验证 "wikilink")（GINA）模块提供。Windows默认的实现msgina.dll根据系统的[快速用户切换设置显示一个用户列表或者一个用户名](https://zh.wikipedia.org/wiki/快速用户切换 "wikilink")/密码输入框。但是其他开发者也可以提供GINA模块使得用户可以用指纹、智能卡或者面部识别等其他方式登录系统\[3\]。在Vista及之后的版本的系统中，由于旧的GINA架构造成在安装了有缺陷的GINA时系统不稳定，微软使用LogonUI和[凭据提供者替代GINA作为用户身份凭据的插件接口](https://zh.wikipedia.org/wiki/凭据提供者 "wikilink")\[4\]。

在搜集到用户身份凭据之后，Winlogon会创建一个用户会话，并加载用户的配置，例如登录用户的所拥有的[注册表](../Page/注册表.md "wikilink")项和在域中漫游的个人文件。在这个会话中Winlogon还会创建一个Windows工作站，在这个工作站中WinLogon会创建如下三个桌面\[5\]：

  - [安全桌面负责显示系统安全界面](https://zh.wikipedia.org/wiki/安全桌面 "wikilink")
  - 应用程序桌面负责显示用户启动的应用程序
  - 屏幕保护桌面负责显示[屏幕保护程序](https://zh.wikipedia.org/wiki/屏幕保护程序 "wikilink")。

Winlogon在启动时还注册一个系统级别的[安全注意序列](https://zh.wikipedia.org/wiki/安全注意序列 "wikilink")（默认为[{{key
press](../Page/Ctrl+Alt+Del.md "wikilink")）热键，以在在用户键入这个序列的时候切换到安全桌面显示系统安全界面。在[Windows
Vista之前的NT版本Windows中](../Page/Windows_Vista.md "wikilink")，这个界面也由GINA模块提供，而在Vista及之后的版本的系统中，这个界面由凭据提供者提供。另外，在用户启用了屏幕保护程序时，Winlogon也监视用户输入以在系统空闲时切换到屏幕保护桌面并且运行屏幕保护程序，以及在屏幕保护运行时接受到用户输入之后终止屏幕保护的运行。

Winlogon在[Windows 9x系列的操作系统中不可用](../Page/Windows_9x.md "wikilink")\[6\]。

## 参考和引用

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")

1.  网络安全设计标准教程，罗斌、郭峥荣著，清华大学2005年版，104页

2.
3.  基于Gina和指纹识别增强Windows NT登录安全王瑜、邹晓著《电脑开发与应用》2007年　第1期

4.  使用Windows Vista的凭据提供程序创造自定义的登录体验Dan Griffin
    MSDN杂志2007年1月号http://msdn.microsoft.com/zh-cn/magazine/cc163489.aspx

5.  Microsoft Windows 2000 Security Handbook Jeff Schmidt、Alexander
    Kachur、Dave Bixler、Travis Davis著Que 2000年8月出版71页

6.  Introduction to MinLogon David
    Reed著　微软公司MSDN在线http://msdn.microsoft.com/en-us/library/ms838653（v=winembedded.5）.aspx