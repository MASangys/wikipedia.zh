**Synergy**是一款[开放源代码软件](https://zh.wikipedia.org/wiki/开放源代码软件 "wikilink")，能让用户通过网络在视线范围内使用一套[键盘](https://zh.wikipedia.org/wiki/键盘 "wikilink")[鼠标](../Page/鼠标.md "wikilink")控制多台电脑。因为Synergy不能传输视频，所以每台电脑都需要连接[显示器](../Page/显示器.md "wikilink")。除了在多台计算机间共享键盘鼠标，Synergy还能共享[剪贴板](../Page/剪贴板.md "wikilink")。

Synergy是[跨平台的软件](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，可以在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[Linux](../Page/Linux.md "wikilink")和[Mac OS X之间共享键盘和滑鼠](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，将来还可能支持[Windows Mobile和](../Page/Windows_Mobile.md "wikilink")[iPhone平台](https://zh.wikipedia.org/wiki/iPhone "wikilink")，也容易[移植到更多平台](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")。但是会存在一些技术上的限制，使得软件只能作为客户端或者服务器使用。

## 历史

Synergy+是**Synergy**项目的分支，其开发意在解决Synergy的[程序错误](../Page/程序错误.md "wikilink")。

Synergy的前身是1996年由Richard Lee和Adam Feder在Cosmo Software（[SGI的](https://zh.wikipedia.org/wiki/SGI "wikilink")[子公司](../Page/子公司.md "wikilink")）编写的**CosmoSynergy**，Chris Schoeneman为解决一些恼人的问题，如在[桌面上总有一个窗口](https://zh.wikipedia.org/wiki/桌面 "wikilink")，而加入开发团队。CosmoSynergy的开发已经相当完善，但Cosmo Software公司之后[倒闭了](https://zh.wikipedia.org/wiki/倒闭 "wikilink")，于是Chris Schoeneman公布了[源代码](../Page/源代码.md "wikilink")将其发展成Synergy项目。\[1\]该项目在2001年\[2\]至2006年期间运作，在2006年4月发布1.3.1版本后一直没有新的进展（截止2009年底）。\[3\]长期不更新的Synergy对2006年之后的操作系统，如[Windows Vista](../Page/Windows_Vista.md "wikilink")，兼容性较差。 2009年2月，出现了Synergy+的第一个版本：1.3.2，承接Synergy的版本号。Synergy+的作者表示希望与Synergy的作者Chris Schoeneman取得联系，将目前的多个类似项目合而为一。\[4\]Chris Schoeneman在公开的讨论中说自己正在开发Synergy 1.3.x系列的替代品：Synergy 2.0。\[5\]

## 原理

这是一个[C/S结构的软件](https://zh.wikipedia.org/wiki/C/S结构 "wikilink")，安装有键盘鼠标的电脑是[服务器](../Page/服务器.md "wikilink")，接受输入的是[客户端](https://zh.wikipedia.org/wiki/客户端 "wikilink")。

## 使用

[光标从屏幕的边缘进入另一个屏幕](https://zh.wikipedia.org/wiki/光标 "wikilink")，键盘输入将发送到光标所在的屏幕。由于连接未加密，尤其剪贴板的内容是用明文传输的，因此在不可靠的网络中使用要小心。作者将来会将加密功能纳入软件中。 Scroll Lock键可以将光标限制在当前的屏幕裡，对玩全屏游戏有用。

### Windows操作系统

Windows平台的用户需要安装Microsoft Visual C++ 2008 Redistributable Package，否则会出现This application has failed to start...的提示。 \[6\]

#### 服务器

选择服务器模式，并填写客户端和服务器的**屏幕名**和**连接**（Link），屏幕名默认是计算机名，至少设置两行连接，如：pc1 is left of pc2,pc2 is right of pc1，最后开始。

#### 客户端

输入服务器的[IP地址](../Page/IP地址.md "wikilink")或使用 [尋找伺服器](https://zh.wikipedia.org/wiki/尋找伺服器 "wikilink").點擊[連線](https://zh.wikipedia.org/wiki/連線 "wikilink") ，并开始。

### 其他操作系统

官方建议使用第三方的[图形用户界面](../Page/图形用户界面.md "wikilink")[前端配置本软件](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")，或者自己写配置文件。\[7\]

## 参见

  - [KVM切换器](../Page/KVM切换器.md "wikilink")，类似用途的硬件，不能共享剪贴板。
  - [VNC](../Page/VNC.md "wikilink")
  - [BZFlag](../Page/BZFlag.md "wikilink")，Chris Schoeneman的作品

## 参考文献

## 外部链接

  - [Synergy-Plus Controls Multiple Systems from a Single Keyboard & Mouse](http://lifehacker.com/5186942/synergy+plus-controls-multiple-systems-from-a-single-keyboard--mouse)
  - [使用Ghosd和Synergy增强多屏幕用户界面](http://www.ibm.com/developerworks/cn/opensource/os-ghosd-synergy/)
  - [原创：真是绝了！多台电脑只要一套键鼠](http://zl.pcw.com.cn/post/121/4023)

[Category:输入/输出](https://zh.wikipedia.org/wiki/Category:输入/输出 "wikilink") [Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink") [Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink") [Category:鍵盤](https://zh.wikipedia.org/wiki/Category:鍵盤 "wikilink") [Category:远程管理软件](https://zh.wikipedia.org/wiki/Category:远程管理软件 "wikilink") [Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.