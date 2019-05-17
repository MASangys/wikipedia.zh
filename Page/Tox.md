**Tox**是一个使用[端到端加密法及](https://zh.wikipedia.org/wiki/端到端加密法 "wikilink")[点对点网络的即时通讯和视频电话协议](https://zh.wikipedia.org/wiki/点对点网络 "wikilink")，遵循[GNU通用公共许可证协议发布](../Page/GNU通用公共许可证.md "wikilink")。该项目的目标是为所有人提供安全而方便的通信方式\[1\]。此协议的一个参考实现已作为[自由及开放源代码软件发布](../Page/自由及开放源代码软件.md "wikilink")。

## 历史

2013年6月23日**Tox**原始代码由用户irungentoo托管于GitHub上 \[2\]。2014年2月3日，可供用户测试使用的技术预览版二进制文件发布，此后的nightly版本通过[Jenkins
Automatron发布](https://zh.wikipedia.org/wiki/Jenkins_\(软件\) "wikilink")\[3\]。2014年7月12日，Tox的开发进入了alpha阶段，网站的下载页面也被重新设计公布。

## 特点

Tox用户将会分配到一个公钥和一个私钥，之后直接通过一个分布式[对等网络互相连接](https://zh.wikipedia.org/wiki/对等网络 "wikilink")。用户可以通过Tox给朋友发送信息、语音或进行视频聊天，群聊或发送文件。所有通过Tox的流量将使用[NaCl](http://nacl.cr.yp.to/)进行端到端加密。

qTox、µTox等Tox客户端设计提供及时通讯、群聊、语音及视频通话、语音及视频会议、文件加密共享、正在输入提示、已阅提示、远程桌面演示。任何使用Tox协议的不同客户端之间可以互相通讯。与协议无关功能限制于各客户端的开发。开发方强烈建议各客户端开发人员坚持使用标准Tox协议，以保正各客户端之间的兼容性和安全性\[4\]。

## 组件

### Core（核心）

Tox
core是一个包含创建的协议和应用程序接口的程序库。各用户前端或客户端都将建立在core之上。任何人都可以利用core创建客户端。描述core的技术文档由核心开发人员irungentoo编写，并公开使用\[5\]。

### Protocol（协议）

Tox core是通过Tox protocol（Tox协议）建立的\[6\]。

Tox使用[Opus实现音频流](https://zh.wikipedia.org/wiki/Opus_codec "wikilink")，使用[VP8实现视频流](../Page/VP8.md "wikilink")。

### Encryption（加密）

Tox通过使用基于NaCl进行开发的libsodium加密库进行加密。

### Clients（客户端）

Tox客户端用于运行Tox
core与其他客户端通信。不同客户端的开发使得Tox可以跨平台运行。下表不完整地列出了已发布的Tox客户端。\[7\]

| 客户端           | 适用操作系统                                                                                                                                                                                     | 使用编程语言                                                                                                                                                      |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TOK\[8\]      | [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink"), [Android](../Page/Android.md "wikilink")                                                                                              | [C++](../Page/C++.md "wikilink")，[Java](../Page/Java.md "wikilink"), [Swift](../Page/Swift.md "wikilink"), [Objective-C](../Page/Objective-C.md "wikilink") |
| Antidote\[9\] | [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")                                                                                                                                        | [Objective-C](../Page/Objective-C.md "wikilink")                                                                                                            |
| Antox\[10\]   | [Android](../Page/Android.md "wikilink")                                                                                                                                                   | [Scala](../Page/Scala.md "wikilink"), [Java](../Page/Java.md "wikilink")                                                                                    |
| Cyanide\[11\] | [Sailfish OS](../Page/Sailfish_OS.md "wikilink")                                                                                                                                           | [C++](../Page/C++.md "wikilink")                                                                                                                            |
| gTox\[12\]    | [Linux](../Page/Linux.md "wikilink")                                                                                                                                                       | [C++](../Page/C++.md "wikilink") ([GTK+ 3](https://zh.wikipedia.org/wiki/GTK+ "wikilink"))                                                                  |
| qTox\[13\]    | [Linux](../Page/Linux.md "wikilink"), [FreeBSD](../Page/FreeBSD.md "wikilink"), [OS X](../Page/MacOS.md "wikilink"), [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") | [C++](../Page/C++.md "wikilink") ([Qt](../Page/Qt.md "wikilink"))                                                                                           |
| Toxic\[14\]   | [Linux](../Page/Linux.md "wikilink"), [BSD](../Page/BSD.md "wikilink"), [OS X](../Page/MacOS.md "wikilink")                                                                                | [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") ([Ncurses](../Page/Ncurses.md "wikilink"))                                                                |
| Toxy\[15\]    | [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")                                                                                                                      | [C\#](../Page/C♯.md "wikilink") ([WPF](../Page/Windows_Presentation_Foundation.md "wikilink"))                                                              |
| Toxygen\[16\] | [Linux](../Page/Linux.md "wikilink"), [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")                                                                                | [Python](../Page/Python.md "wikilink") ([Qt](../Page/Qt.md "wikilink") via [PySide](https://zh.wikipedia.org/wiki/PySide "wikilink"))                       |
| xWinTox\[17\] | [Linux](../Page/Linux.md "wikilink"), [Solaris](../Page/Solaris.md "wikilink"), [BSD](../Page/BSD.md "wikilink")                                                                           | [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++](../Page/C++.md "wikilink") ([FLTK](../Page/FLTK.md "wikilink"))                                     |
| µTox\[18\]    | [Linux](../Page/Linux.md "wikilink"), [FreeBSD](../Page/FreeBSD.md "wikilink"), [OS X](../Page/MacOS.md "wikilink"), [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") | [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") (Win32 API, [Xlib](../Page/Xlib.md "wikilink"))                                                           |

同样存在使用Tox协议的[Pidgin](../Page/Pidgin.md "wikilink")\[19\]和[Miranda
NG](../Page/Miranda_IM.md "wikilink")\[20\]插件。

## 与Tox基金会分离

2015年7月11日，Tox主要开发人员正式宣布他们与Tox基金会分离一事，原因为Tox基金会负责人和首席执行官Sean
Qureshi滥用捐赠基金。\[21\]该团队已经建立了一个新的网站和源代码存储库，但旧网站也保持就位。

## 外界态度

Tox在早期概念阶段就受到了大量全球科技新闻网站的关注与宣传\[22\]\[23\]\[24\]\[25\]。Tox在2013年8月15日的GitHub热门列表中排第五位。\[26\]因为担心[元数据泄漏](../Page/元数据.md "wikilink")，Tox开发人员设计通过[洋葱路由技术实现friend](../Page/洋葱路由.md "wikilink")-finding过程\[27\]。Tox在2014年和2015年被[Google编程之夏接纳作为指导组织](https://zh.wikipedia.org/wiki/Google编程之夏 "wikilink")\[28\]\[29\]。

## 延伸阅读

  - [即时通讯软件比较](../Page/即时通讯软件比较.md "wikilink")
  - [VoIP软件的比较](../Page/VoIP軟體的比較.md "wikilink")

## 参考文献

## 外部链接

[Tox主页](https://tox.chat/)

<div>

[Tox官方wiki](https://wiki.tox.chat/doku.php)

</div>

<div>

[Tox规范说明](https://toktok.ltd/spec)

</div>

<div>

[Tox客户端标准](https://www.gitbook.com/book/tox/tox-client-standard/details)

</div>

[Category:有非常模棱两可或者十分空泛语句的条目](https://zh.wikipedia.org/wiki/Category:有非常模棱两可或者十分空泛语句的条目 "wikilink")
[Category:2013年软件](https://zh.wikipedia.org/wiki/Category:2013年软件 "wikilink")
[Category:Android软件](https://zh.wikipedia.org/wiki/Category:Android软件 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:分布式计算](https://zh.wikipedia.org/wiki/Category:分布式计算 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:IOS软件](https://zh.wikipedia.org/wiki/Category:IOS软件 "wikilink")
[Category:即时通讯软件](https://zh.wikipedia.org/wiki/Category:即时通讯软件 "wikilink")
[Category:保密通信](https://zh.wikipedia.org/wiki/Category:保密通信 "wikilink")
[Category:视频通讯](https://zh.wikipedia.org/wiki/Category:视频通讯 "wikilink")
[Category:VoIP軟體](https://zh.wikipedia.org/wiki/Category:VoIP軟體 "wikilink")
[Category:Windows即时通讯客户端](https://zh.wikipedia.org/wiki/Category:Windows即时通讯客户端 "wikilink")

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
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.