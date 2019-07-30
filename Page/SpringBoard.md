**SpringBoard** 是 [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink") 负责管理主屏幕的基础程序，并在设备启动时启动 [WindowServer](https://zh.wikipedia.org/wiki/WindowServer "wikilink")、开启应用程序（实现该功能等程序称为****）和对设备进行某些设置。有时候**主屏幕**也被作为 SpringBoard 的代称。

## 历史

2008 年[苹果公司发布了](https://zh.wikipedia.org/wiki/苹果公司 "wikilink") iPhone OS 1.1.3及一月应用包时，跳板，SpringBoard 的诞生引发了实质性的改动。 在任一[应用上用手指按几秒会让所有的应用图标开始](../Page/应用程序.md "wikilink")**抖动**，这时可以重新布局、跨页移动图标和及由 [Safari](../Page/Safari.md "wikilink") 创建的[网页应用或快捷方式](../Page/网络应用程序.md "wikilink")，直到按下[主屏幕按钮使图标停止抖动](https://zh.wikipedia.org/wiki/主屏幕按钮 "wikilink")。\[1\]

同年 7 月发布的 iPhone OS 2.0 推出了 [App Store](../Page/App_Store_\(iOS\).md "wikilink")，用户由此可以下载第三方应用，并可以同早前网页应用的方式删除他们。

在 2009 年 6 月发布的 iPhone OS 3 中，SpringBoard 添加了 [Spotlight](../Page/Spotlight_\(應用程式\).md "wikilink") 功能来搜索信息、邮件或应用等。

2010 年 6 月发布的 iOS 4 允许为主屏幕设置[背景图片](https://zh.wikipedia.org/wiki/桌布_\(使用者介面\) "wikilink")（此前为黑底）、在「抖动」时拽住一个应用图标覆盖在另一个上来创建[文件夹](https://zh.wikipedia.org/wiki/文件夹 "wikilink")。把图标从文件夹中拖拽至外侧即可移出该文件夹；如果文件夹内没有任何图标便会自动删除。

设备被[越狱后](../Page/越獄_\(iOS\).md "wikilink")，可以通过 [Cydia](../Page/Cydia.md "wikilink") 添加未被苹果签名而不能上架 App Store 的第三方应用，但不能像一般应用一样删除（除非安装 CyDelete 插件），而仍需要通过 Cydia 移除。

一般来说，用户会根据使用频率或为了美观（如应用的颜色）来排列主屏幕上的图标。\[2\]

## 在越狱过的设备上

### 图标显示

SpringBoard 的布局存放于[属性列表](../Page/属性列表.md "wikilink")文件 <span class="monospaced">/var/mobile/Library/SpringBoard/IconState.plist</span> 中。在 iPhone OS 1.1.3 之前，越狱程序会对该此[打补丁来在主屏幕上显示或排列未上架](https://zh.wikipedia.org/wiki/修補程式 "wikilink") App Store 的第三方应用图标。

iPhone OS 1.1.3 及以后，SpringBoard 原生地支持重新排列图标顺序，便不再需要补丁。同时通过越狱安装的应用的文件不再存放在 iOS 原生应用目录 <span class="monospaced">/var/mobile/Applications</span> 中，而可以直接放在 <span class="monospaced">/Applications。</span>

### 自定义

#### 主题

修改配置文件可以改变 SpringBoard 的[外观](https://zh.wikipedia.org/wiki/皮肤_\(电脑\) "wikilink")（称作**主题**或**皮肤**），如图标形状、状态栏的样式和其内的项目等。但由于对这些文件等修改比较繁琐，并容易修改不当产生错误甚至无法进入系统（俗称**白苹果**），于是催发出许多**主题管理平台**如 WinterBoard ([iPhone OS 2](https://zh.wikipedia.org/wiki/IPhone_OS "wikilink") – [iOS9](../Page/IOS_9.md "wikilink"))\[3\]、SummerBoard、Anemone ([iOS7](../Page/IOS_7.md "wikilink") – [iOS11](../Page/IOS_11.md "wikilink"))\[4\]、SnowBoard ([iOS11](../Page/IOS_7.md "wikilink") – [iOS12](../Page/IOS_12.md "wikilink"))\[5\] 和 iThemer ([iOS11](../Page/IOS_11.md "wikilink") – [iOS12](../Page/IOS_12.md "wikilink"))\[6\] 等。 用户可以在 Cydia 等上下载为特定主题管理平台适配的[包来方便地启用](../Page/软件包管理系统.md "wikilink")、停用主题，有时还可以修改该主题的一些细节。

#### 替换 SpringBoard

如果不想使用 iOS 默认的启动器，可以将其替换成如 FrontPage\[7\] 等。

## 漏洞

SpringBoard 导致设备崩溃、死机或重启的漏洞通常被称为某某「炸弹」。

### 文本炸弹

文本炸弹即会导致 SpringBoard 无响应或崩溃重启的一串字符。

#### 「effective. Power」

2015 年，SpringBoard 被发现一个 [bug](../Page/程序错误.md "wikilink")，即会被一串特定的 [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") 字符串导致崩溃并重启。\[8\]\[9\]如果有人在通过[即时聊天等将这串字符发送来](../Page/IMessage.md "wikilink")，收到消息时候就可能导致 iOS 设备死机，进一步甚至导致设备不再能接收短信或电话、经常失去网络连接和被重置成出厂设定。\[10\]之后这个 bug 缩减到只有在弹出通知或锁屏上出现该字符串时才会复现。\[11\]

该字符串看起来像：\[12\]

> effective. Power لُلُصّبُلُلصّبُررً ॣ ॣh ॣ ॣ 冗

为了避免该 bug 复现，已被稍作修改。这个 bug 会出现于同期的 [iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")、[iPad、](../Page/IPad.md "wikilink")[iPod Touch](../Page/IPod_touch.md "wikilink")、[Apple Watch](https://zh.wikipedia.org/wiki/Apple_Watch "wikilink") 和 [Mac](../Page/麥金塔.md "wikilink") 。

iOS 8.4 中，这个 bug 被修复。

#### 天城文字符

类似于上例，这个会导致 iOS 11 设备崩溃的字符为

> జ్ఞా

该错误可能和对天城文的[连字处理有关](../Page/合字.md "wikilink")\[13\]。iOS 11.3 beta 3 中，这个 bug 被修复。

#### 黑点

iOS 11.3 以及 iOS 11.4 测试版中，一个与「⚫️」黑色圆形 emoji 有关的字符串会导致崩溃。这个黑点的主要问题是包含了大量不可见的 Unicode 字符，这些字符会导致 CPU 在处理时负载过高。\[14\]

### 时间炸弹

#### 1970 年

对于配有 64 位处理器的 iOS 设备，如果将系统时间设定至早于 1970 年 5 月，则无法正常开机。该问题被认为是 [UNIX 时间戳置负而无法通过验证](../Page/UNIX时间.md "wikilink")。苹果并没有解决这个问题，而是在后续版本的 iOS 中禁止将系统时间设定到早于 2000 年。

#### 12 月 2 日

iOS 11.1.2 发布后，一些用户表示他们的 iOS 设备会在 12 月 2 日凌晨 0:15 分后若接收到基于时间的通知提醒，就会持续崩溃或重启 SpringBoard。\[15\] 苹果建议用户暂时不允许所有通知，并等待新版本的 iOS 发布\[16\]。苹果尝试在 iOS 12.2 修复这个 bug，。直到 iOS 12.2 被发布，这个 bug 才得到解决。

## 应用程序载入

iOS 4.3.3 开始，SpringBoard 会搜索系统中  和  两个目录下的应用并显示于主屏幕。

## macOS 中的应用

[Mac OS X Lion](../Page/Mac_OS_X_Lion.md "wikilink") 推出了借鉴于 iOS SpringBoard 主屏幕的新功能 [Launchpad](../Page/Launchpad_\(macOS\).md "wikilink")。两者有很多类似的地方（例如应用的文件夹），不过 Launchpad 并不会占据整个主屏幕，而更像是一个 Space（类似于[仪表板](../Page/Dashboard.md "wikilink")）。

开发者预览版的 [Mac OS X Lion](../Page/Mac_OS_X_Lion.md "wikilink") 公布时，Mac OS X 上的该功能被命名为 Launchpad，不过在 [Dock](../Page/Dock_\(MacOS\).md "wikilink") 上仍显示称作 SpringBoard（在  中可以被找到）。

## 参考文献

<references />

[Category:IOS软件](https://zh.wikipedia.org/wiki/Category:IOS软件 "wikilink")

1.  [Apple – iPod touch features](https://www.apple.com/ipodtouch/features/homescreen.html)
2.  Matthias Böhmer, Antonio Krüger. [A Study on Icon Arrangement by Smartphone Users](http://matthiasboehmer.de/2013/01/study-on-icon-arrangement/). In Proceedings of the SIGCHI Conference on Human Factors in Computing Systems (CHI '13). ACM, New York, NY, USA, 2137–2146.
3.
4.
5.
6.   Twitter|url=[https://twitter.com/DODGraphics|accessdate=2019-06-04|work=twitter.com|language=en](https://twitter.com/DODGraphics%7Caccessdate=2019-06-04%7Cwork=twitter.com%7Clanguage=en)}}
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