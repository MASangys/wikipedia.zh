**BeOS API**亦被[Be公司称作](../Page/Be公司.md "wikilink")**Be API** after [Be
Inc.](../Page/Be_Inc..md "wikilink")，是在[BeOS上编写图形应用程序所需要的](../Page/BeOS.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，并由此延伸出了[Magnussoft
ZETA](../Page/Magnussoft_ZETA.md "wikilink")。

该API被分为数个“包”，“包”中包含类似的[类](../Page/类_\(计算机科学\).md "wikilink")，并容忍一些与包含支持代码的[库的联系](../Page/库_\(计算机\).md "wikilink")。

该API与[C++基本相同](../Page/C++.md "wikilink")，但包含一些第三方绑定的包含大部分[Python的类](../Page/Python.md "wikilink")，以及主要在存储包中使用到的一个小的[Perl库的子集](../Page/Perl.md "wikilink")。

## 包

### 程序包

程序包包含用于运行BeOS程序的基本类，以及对全局[剪切板的支持](../Page/剪切板.md "wikilink")，程序内部及系统内部通信和，计时器，名册和其他支持图形应用程序的功能。程序包所包含的类亦被libbe.so支持。

### 存储包

存储包提供各种操控文件的方法，从创建、管理可以打开或保存应用程序面板的[符号链接到修改](../Page/符号链接.md "wikilink")[Be文件系统的属性](../Page/Be文件系统.md "wikilink")。存储包的类基本上包含在libtracker.so中，所以Tracker即为BeOS原生的文件管理器。

### 界面包

界面包提供数量可观的控件可供用于构建应用程序，从主窗口类到[对话框](../Page/对话框.md "wikilink")，以及控制字体的处理和渲染。libbe.so包括了界面包的大部分内容。

### 内核包

内核包提供[线程](../Page/线程.md "wikilink")，[信号标以及访问系统信息的通力](../Page/信号标.md "wikilink")，亦包含于libbe.so中。

### 支持包

支持包提供不易被分配在其他包中的先进功能，例如辅助内存分配以及对列表的支持。

### 网络包

网络包提供基本的（在[BeOS R5及更低版本中](../Page/BeOS_R5.md "wikilink")）或基本完整的（在BeOS
Dano及更高版本中）对[伯克利套接字及](../Page/伯克利套接字.md "wikilink")[BIND的支持](../Page/BIND.md "wikilink")，基于Nettle
C++网络库的“原生”功能。libnet.so为R5提供伯克利套接字的支持，后来基于系统命名法被更换为更为普遍的libsocket.so及libbind.so；R5上的libnetapi.so在后来被libbnetapi替换以提供修改版的Nettle
C++网络库。

### 邮件包

邮件包提供原生的[电子邮件格式和用来收取](../Page/电子邮件.md "wikilink")、发送邮件的标准协议（[POP3和](../Page/POP3.md "wikilink")[SMTP](../Page/SMTP.md "wikilink")）。邮件包包含在libmail.so中。

### 翻译包

翻译包提供一种将图片和纯文本通过以插件来处理，因而使应用程序支持一种即时的原生方式来保存、读取插件所支持的格式。该API同样支持通过库进行的视频、音频翻译，尽管这种方式在BeOS
R4中被废弃并随后被停用。翻译包通过libtranslation.so提供支持。

### 媒体库

媒体库基于可选的插件来提供音频及视频输入输出的抽象层，以及处理混音，食品和音频的格式转换和其他相关功能。媒体包通过libmedia.so提供支持。

### [MIDI包](../Page/MIDI.md "wikilink")

MIDI包提供MIDI硬件的输入输出的抽取。在BeOS R5中包含一个由Headspace提供的软件合成器。libmidi.so提供了BeOS
R3时代的旧的MIDI API，libmidi2.so为BeOS R4及更高版本提供API。

### 游戏包

游戏包提供适合计算机游戏输出的音频格式，以及通过视频叠加来运行全屏应用程序。

### [OpenGL包](../Page/OpenGL.md "wikilink")

OpenGL包提供完整的OpenGL执行能力，以及使其在原生程序中生效的支持类。在BeOS R5中支持OpenGL
1.1，尽管该包是硬件中立的，该版本可以使用软件加速。事实上，这个方式甚至胜过在竞争平台上使用硬件加速方式的效果。基于效率底下的设计，那些竞争平台无法传递类似的潜在的、抑或是带宽上的表现。[1](https://web.archive.org/web/20010202233200/http://www.benews.com/story/3587).

### 设备包

设备包提供从平台分离的通过直接访问串口、并口，以及[BeBox中并不知名的](../Page/BeBox.md "wikilink")[GeekPort](../Page/GeekPort.md "wikilink")。

## 非BeOS实现方式

大部分的Be
API在[Haiku这个开源BeOS替代品中被重新实现](../Page/Haiku.md "wikilink")，以赶上自Be公司被[Palm收购后多年的差距](../Page/Palm.md "wikilink")，为邮件包增加了对IMAP的支持，加密连接和多账户支持，并且通过[Mesa
3D实现了OpenGL](../Page/Mesa_3D.md "wikilink") 1.5的支持。

替代的系统尝试通过Be API得到一些灵感（例如[Syllable
Desktop](../Page/Syllable_Desktop.md "wikilink")），但并非完全移植。

[Gobe
Software](https://web.archive.org/web/20071012005455/http://www.gobe.com/)将Be
API移植到[微软](../Page/微软.md "wikilink")[Windows操作系统](../Page/Windows.md "wikilink")，后期通过[GTK+移植到](../Page/GTK+.md "wikilink")[Linux操作系统](../Page/Linux.md "wikilink")，以移植他们先前为BeOS开发的[Gobe
Productive办公套件](../Page/Gobe_Productive.md "wikilink")。

## 文档

所有的API在BeOS R3阶段被记录在两本纸质书籍中——Be Developer Guide和Be Advanced
Topics，由[奥莱理出版公司在Be公司的许可下于](../Page/奥莱理.md "wikilink")1997年[八月出版发行](../Page/八月.md "wikilink")。此外，电子版在亦被发行和更新，尽管略显粗燥。在2007年，Be公司知识产权的拥有者[爱可信公司以](../Page/爱可信.md "wikilink")[创作共用协议释出了这些文档](../Page/创作共用.md "wikilink")。[2](https://web.archive.org/web/20070407172603/http://haiku-os.org/news/2007-04-03/access_co_releases_bebook_and_be_newsletters).

[Category:BeOS](https://zh.wikipedia.org/wiki/Category:BeOS "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")