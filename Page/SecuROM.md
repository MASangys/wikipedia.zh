**SecuROM**
是一个保护[CD](../Page/CD.md "wikilink")／[DVD版权的产品](../Page/DVD.md "wikilink")，由开发。常用于保护[Microsoft
Windows下运行的](../Page/Microsoft_Windows.md "wikilink")[电脑游戏](../Page/电脑游戏.md "wikilink")。SecuROM旨在阻止家用刻录机、光盘拷贝机和[逆向工程技术的企图](../Page/逆向工程.md "wikilink")。最新的版本（第4版或更高）在防止1:1的[CD-R拷贝已经取得一定进展](../Page/CD-R.md "wikilink")。但某些程序仍可以绕过保护。使用SecuROM是很有争议的，因为保护程序在某些方面有类似恶意软件的行为，并且SecuROM会在用户并不知情的情况自动安装到你的电脑。[EA因这个问题曾被提起诉讼](../Page/EA.md "wikilink")\[1\]。

## SecuROM的版本及检测技术

### SecuROM v1.x–v3.x

下列文件应该存在于安装目录（根据不同的操作系统）或在原始光盘的根目录下：

  - CMS16.DLL
  - CMS_95.DLL
  - CMS_NT.DLL

被保护的CD在内环上会有DCAC的字样。DADC是一个光盘生产厂，最近SecuROM保护的游戏CD也在其他工厂壓製。使用十六进制编辑器打开主程序文件可以搜索以下ASCII文本“CMS”（它应该会出现两次）。

### SecuROM v4.7及以上

经过发展，显然SecuROM v4.x已停止更新，新的SecuROM带来若干有关如何整合和保护程序的重大变化。

不同于SecuROM
v4.6，这不依靠检测SubQ信息。新的计划是利用“数据存储密度测量”（不要和“数据位置测量”混为一谈）。数据存储密度的SecuROM
v4.7（或更高）保护的CD/DVD光盘是多样化的。这种密度测量模式通过高精密时间测量中间件和CD/DVD驱动器的相互作用来实现。

这样的定义保护了每个光盘驱动器的每一点。由于光盘旋转时，两个读取命令所花费的时间返回取决于所花费的时间光盘做充分全面，从而依赖于数据密度。为了实现所需的时序精度，读取指令使用一般小于0.01微秒。

该模式是由来自72个地点，每个点的密度都正常或高于正常的密度，从而反映了厂商特定的信息。

SecuROM v4.84和以后版本包括“触发器”，允许开发人员充分定制验证检查整个应用程序的计划。
由于保护本身在应用程序的代码和操作系统之间，它可以选择的改变系统功能的行为。

考虑下列[伪代码](../Page/伪代码.md "wikilink")：

    if (GetCurrentDate() == '13-32-2999') then
        WorkCorrectly()
    else
        PreventProgramUse()
    end if

显然，一个“正常” 的GetCurrentDate() 函数永远不会返'13-32-2999'。
然而，由于SecuROM可以修改函数的结果，应用程序在运行时可以检查保护的存在，如果保护已被删除，该函数将返回与其他一些有效价，从而使函数有机会应用，这显示一个错误信息或使应用程序无法使用。

有许多不同的方式将“触发器”集成到一个程序，使其拥有更加复杂的普遍规避保护。

### SecuROM v7.x

最新的SecuROM v7.x版本正在不断发布的和更新。

SecuROM v7.x如果在非管理员用户帐户下运行，将在电脑操作系统[Ring
3级别特权上安装自己的服务UAService](../Page/Ring_3.md "wikilink")7.exe，它可以使用户在非管理员用户权限下获得SecuROM的所有功能。

#### 已知的问题

使用该版本SecuROM的[武装突袭](../Page/武装突袭.md "wikilink")，[潜行者：切尔诺贝利的阴影](../Page/潜行者：切尔诺贝利的阴影.md "wikilink")（欧洲版本），[无冬之夜2](../Page/无冬之夜2.md "wikilink")，[命令与征服3：泰伯利亚战争](../Page/命令与征服3：泰伯利亚战争.md "wikilink")（v1.04），[古墓丽影：十周年纪念版](../Page/古墓丽影：十周年纪念版.md "wikilink")（演示和正式版），[霸王](../Page/霸王.md "wikilink")（Steam版不包含SecuROM），[生化奇兵](../Page/生化奇兵.md "wikilink")（演示和正式版），（单人游戏模式），（PC版），[冲突世界](../Page/冲突世界.md "wikilink")（仅单人战役）和[孢子](../Page/Spore.md "wikilink")（游戏和[孢子生物编辑器](../Page/孢子生物编辑器.md "wikilink")）会阻止游戏运行在安装有旧版本（v11之前）的电脑之上。

在[Windows
Vista中](../Page/Windows_Vista.md "wikilink")，当网络配置中启用[顯式擁塞通知时](../Page/顯式擁塞通知.md "wikilink")，该版本的SecuROM会阻止游戏运行，解决方法是运行命令`netsh
interface tcp set global ecncapability=disabled`禁用ECN。

使用该版本SecuROM的游戏（德国版）安装的一个外壳扩展会使Explorer.exe崩溃。使用相同版本SecuROM的[无冬之夜2也存在这样的问题](../Page/无冬之夜2.md "wikilink")。

有些版本的SecuROM会安装名为CmdLineContextMenu的外壳扩展，它会检查每一个弹出菜单的可执行文件。这可能导致Windows资源管理器反应迟钝，甚至失去响应。

## 争议

### 与其他软件的冲突

有些版本的SecuROM（特别是2.x版本）所安装的外壳扩展，可能会阻止Windows资源管理器删除16位可执行文件。

### 生化奇兵和Rootkit

[生化奇兵采用SecuROM保护](../Page/生化奇兵.md "wikilink")，使用了[Rootkit技术来防止盗版](../Page/Rootkit.md "wikilink")，使用检测工具来检测Rootkit的是很困难的，因为这些原因，Rootkit可能被用于隐藏恶意程序。

### 模拟人生

[模拟人生2和它一些附带产品先前使用SafeDisc保护](../Page/模拟人生2.md "wikilink")。直到2007年4月，从[模拟人生2
宠物物语使用SecuROM](../Page/模拟人生2.md "wikilink") 7.x取代了SafeDisc。这包括[模拟人生2
孤岛物语](../Page/模拟人生2.md "wikilink")，[模拟人生2
特别版等](../Page/模拟人生2.md "wikilink")。

### \-{zh-cn:质量效应; zh-hk:質量效應; zh-sg:質量效應; zh-tw:質量效應;}-

2008年5月EA宣布，-{zh-cn:[质量效应](../Page/质量效应.md "wikilink");
zh-hk:[質量效應](../Page/質量效應.md "wikilink");
zh-sg:[質量效應](../Page/質量效應.md "wikilink");
zh-tw:[質量效應](../Page/質量效應.md "wikilink");}-将采用SecuROM
7.x，每10天需要重新激活一次软件\[2\]。由于大量的投诉，EA去除了为期10天的激活限制。
SecuROM限制了激活产品的次数，客户最多可以激活他们购买的游戏3次，如果超过，游戏就不能再运行，直到联系EA的客户支持重置激活次数或之前使用一些可以绕过激活的工具。不同于生化奇兵，卸载游戏不退还以前使用的激活\[3\]。

### Spore

EA在2008年9月7号发布的[Spore中使用了SecuROM](../Page/Spore.md "wikilink")。可能是由于反对基于SecuROM的DRM，网上出现了大量的孢子P2P盗版。EA迫于压力放松了《Spore》的安装次数，从先前的允许在3台电脑安装增加到5台\[4\]\[5\]。

### 圣域2：堕落天使

10月2日在欧洲公布的[圣域2：堕落天使将使用SecuROM](../Page/圣域2：堕落天使.md "wikilink")。开发商Ascaron宣布，SecuROM将与圣域2一同安装，并需要在进一步安装时激活。一旦安装过程完成后，游戏DVD不再需要放在光盘驱动器内。圣域2的每份拷贝最多允许有两名玩家激活单人模式和局域网模式，一名玩家激活联网模式。不过人们最近发现，上述版本的SecuROM在游戏中引起了一些技术问题，这些问题只能通过重新格式化系统解决。

### 辐射3

开发商Bethesda曾向公众保证不会使用DRM来保护[辐射3](../Page/辐射3.md "wikilink")，而只使用基本的光盘检查。
然而，不久人们发现，游戏中的SecuROM
v7.36不仅仅会检查光盘信息，还会检查系统中常用的CD/DVD刻录软件，如果发现，游戏将中止安装。Steam版本没有这种限制。

### 龙腾世纪2

有玩家发现在PC版会在没有任何提示信息的情况下自行安装SecuROM\[6\]。

### Windows 10

微軟公司於2015年8月發表的[Windows
10作業系統禁止了採用SecuROM與](../Page/Windows_10.md "wikilink")[SafeDisc等光碟版權管理程式的遊戲執行](../Page/SafeDisc.md "wikilink")，理由是這類版權管理程式有可能造成[資安風險](../Page/資安.md "wikilink")\[7\]。

## 参考文献

## 外部链接

  - [SecuROM](http://www.securom.com)
  - [Sony DADC](http://www.sonydadc.com)
  - [如何移除
    SecuROM](http://www.tomshardware.com/forum/98241-13-remove-securom-malware-uninstalling-bioshock-demo)

[Category:索尼](https://zh.wikipedia.org/wiki/Category:索尼 "wikilink")
[Category:數位版權管理](https://zh.wikipedia.org/wiki/Category:數位版權管理 "wikilink")
[Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.