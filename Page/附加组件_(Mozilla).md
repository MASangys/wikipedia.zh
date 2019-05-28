[缩略图](https://zh.wikipedia.org/wiki/File:Mozilla_plugins_screenshot_without_subpixel_rendering.png "fig:缩略图")附加组件管理器，显示已安装插件的界面\]\]
**Mozilla附加组件**（**Mozilla
Add-ons**）是一种可安装的[增强组件](../Page/插件.md "wikilink")，可以安装到[Mozilla基金會的包括](../Page/Mozilla基金會.md "wikilink")[Firefox](../Page/Firefox.md "wikilink")、[Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")、[SeaMonkey和](../Page/SeaMonkey.md "wikilink")[Sunbird等及衍生项目](../Page/Mozilla_Sunbird.md "wikilink")。附加组件使用户可以增加或修改应用程序功能，使用[主题装饰外观](https://zh.wikipedia.org/wiki/主題包 "wikilink")，以及处理本并不支持的内容类型。

附加组件的三种主要类别是：扩展、主题和插件。\[1\]前两种附加组件的主要托管及分发渠道是Mozilla
Add-ons[網站](../Page/網站.md "wikilink")。

## 类型

附加组件存在多种类型：

  - **扩展**：修改现有功能的行为或者添加新功能。该功能可以是用户界面中的某处，或者执行某个动作时表现出的功能特征。[主题则是一种着重关注用户界面的扩展](https://zh.wikipedia.org/wiki/theme_\(computing\) "wikilink")。[搜索引擎定义是一种功能性扩展](../Page/搜索引擎.md "wikilink")。不完全列表见[Firefox扩展列表条目](../Page/Firefox扩展列表.md "wikilink")，除此之外还有适用于Thunderbird、SeaMonkey和Sunbird的扩展。

<!-- end list -->

  - **主题**：原名“Personas”（炫彩风格）。它是一种规范化的修改用户界面某些元素的标准。其最鲜明的特征就是将背景图像添加到浏览器主窗口的[工具栏](../Page/工具栏.md "wikilink")、[菜单栏和](https://zh.wikipedia.org/wiki/菜单栏 "wikilink")[状态栏](https://zh.wikipedia.org/wiki/状态栏 "wikilink")。它也可以更改一些文本和背景颜色。
  - **插件**：渲染应用程序本无法呈现的Web内容。例如[Adobe Flash
    Player就是一个插件](../Page/Adobe_Flash_Player.md "wikilink")，它可以在网页上呈现[Adobe
    Flash内容](../Page/Adobe_Flash.md "wikilink")。Mozilla插件基于名为[NPAPI的框架](../Page/NPAPI.md "wikilink")。Mozilla插件正在被逐步淘汰，Mozilla计划2016年在[Firefox中停止使用大多数插件](../Page/Firefox.md "wikilink")。\[2\]

## 网站

同名的**Mozilla
Add-ons**网站是Mozilla基金会为[Mozilla软件的附加组件准备的官方存储库](../Page/Mozilla.md "wikilink")，适用包括[Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")、[Mozilla
Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")、[SeaMonkey以及](../Page/SeaMonkey.md "wikilink")[Mozilla
Sunbird等软件](../Page/Mozilla_Sunbird.md "wikilink")。这些附加组件包括Mozilla扩展和Personas（炫彩风格）等，但不包括Mozilla插件。

相比为Mozilla相关项目提供免费托管的[mozdev.org](https://zh.wikipedia.org/wiki/mozdev.org "wikilink")，Mozilla
Add-ons的服务目标是[最终用户](https://zh.wikipedia.org/wiki/最终用户 "wikilink")，而不只是[软件开发者](https://zh.wikipedia.org/wiki/软件开发者 "wikilink")。许多Mozilla应用程序包括到达该网站的直接链接，并包含设置以自动检查扩展和应用程序本身的更新。Firefox
3开始包含一个功能，允许在附加组件管理器中直接检索和显示该网站的提供内容。\[3\]

2008年1月30日，网站宣布附加组件下载量已达6亿次，并且每天服务超过1亿次附加组件的自动检查更新。\[4\]

2012年7月26日，Mozilla宣布该网站的附加组件下载量已达30亿次。\[5\]

### 历史

在早期，**Mozilla Add-ons**被称之为Mozilla
Update（或简称UMO，[主机名为](https://zh.wikipedia.org/wiki/主机名 "wikilink")`update.mozilla.org`）。该网站在发布并历经多次变化后变成了**AMO**。\[6\]

  - 2006年4月4日，公共页面的重大改写发布。
  - 2006年10月24日，Firefox页面的新版界面推出，迎接Firefox 2发布和新版mozilla.com样式。
  - 2007年3月23日，完全重写的开发者和公共页面发布，代号Remora\[7\]。
  - 2008年春季，代号“Remora 3.2”的新版界面推出。
  - 2011年，采用PHP/CakePHP编写的Remora取代采用Python/Django编写的Zamboni\[8\]。网站还进行了重新设计\[9\]，代号Impala。

## 扩展

扩展可以用于修改应用程序现有功能的行为，或者添加全新功能。扩展是Firefox中极受欢迎的一项功能，因为Mozilla开发者希望浏览器是一个简约的应用程序以减少[软件膨胀和缺陷](https://zh.wikipedia.org/wiki/软件膨胀 "wikilink")，同时保持高度的[可扩展性](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")，使每个用户都能添加自己喜欢的功能。

### 扩展技术

扩展可以使用下列技术开发：\[10\]

  - [XUL](../Page/XUL.md "wikilink")：定义[用户界面和与用户交互的元素](../Page/用户界面.md "wikilink")
  - [层叠样式表](../Page/层叠样式表.md "wikilink")（CSS）
  - [文档对象模型](../Page/文档对象模型.md "wikilink")（DOM）：实时更改[XUL代码和编辑被载入的](../Page/XUL.md "wikilink")[HTML内容](../Page/HTML.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")：Mozilla浏览器的主要语言
  - XPCOM
  - [XPConnect](../Page/NPAPI.md "wikilink")
  - [XPI](https://zh.wikipedia.org/wiki/XPI "wikilink")
  - [Mozilla
    Jetpack](../Page/Mozilla_Jetpack.md "wikilink")：一个开发工具包，旨在降低制作附加组件的学习曲线和开发时间
  - [WebExtensions](https://zh.wikipedia.org/wiki/WebExtensions "wikilink")

### 使用

  - 改变用户界面
    一些扩展的用途是改变应用程序的界面。这与功能为主题管理的Personas（炫彩风格）不同。举例来说，有几个附加组件的功能是更改“Firefox按钮”的颜色，例如ColorizedButton。还有一个扩展是，将Windows上的菜单栏移动到标题栏的位置。

<!-- end list -->

  - 增加功能
    许多扩展也可为浏览器增添功能。可能添加的功能有许多，例如[RSS阅读器](../Page/RSS.md "wikilink")、[书签管理器](../Page/書籤_\(瀏覽器\).md "wikilink")、[工具栏](../Page/工具栏.md "wikilink")、特定网站的客户端程序、[FTP](../Page/文件传输协议.md "wikilink")、电子邮件、[鼠标手势](https://zh.wikipedia.org/wiki/鼠标手势 "wikilink")、[代理服务器切换器](../Page/代理服务器.md "wikilink")、[开发者工具等等](https://zh.wikipedia.org/wiki/網頁程式設計 "wikilink")。许多Firefox扩展实现了早前的Mozilla套件的一些功能，例如[ChatZilla](../Page/ChatZilla.md "wikilink")
    [IRC客户端以及日历等](../Page/IRC.md "wikilink")。

<!-- end list -->

  - 修改用户查阅的网页
    许多扩展可以改变所呈现的网页内容。比如说，Adblock扩展可以阻止浏览器加载广告性质的图片。[Greasemonkey可以让用户安装](../Page/Greasemonkey.md "wikilink")[用户脚本来以程序的方式修改修改目标网站的特定代码等](https://zh.wikipedia.org/wiki/用户脚本 "wikilink")。\[11\]

也有一些扩展的存在目的只是轻松、幽默或讽刺。还有一些扩展是为找回存在于旧版Firefox但最新版本已经删除的功能。

### 安全

不同于[Google
Chrome](../Page/Google_Chrome.md "wikilink")，Mozilla平台没有限制扩展权限的机制。扩展代码受到Mozilla应用程序的完全信任。对扩展与操作系统之间的相互通信也没有限制。这意味着一个扩展可以读取和修改另一个扩展使用的数据，以及访问用户运行Mozilla应用程序所在系统的任何可访问文件。\[12\]

Mozilla扩展默认安装到应用程序的用户配置文件夹中，用户和用户运行的任何程序都可以读写和覆盖其中的代码。由于曾经Mozilla平台不检查已安装扩展的完整性，因此这些代码可以被更改以用于任意代码执行。\[13\]

从Firefox
40.0开始，Mozilla将扩展签名列为正式版和公测版（Beta）的强制要求。从40.0开始，浏览器将向最终用户警告未签名的扩展；从43.0开始，只有在about:config页面中启用一个特殊的首选项才能安装未签名的扩展；从44.0开始，Firefox阻止未签名扩展的安装和加载。在Firefox的开发者版本（Developer
Edition）和每夜版（Nightly）中，Firefox仍保留一个首选项及相关功能来禁用或绕过签名要求。根据计划，Firefox后期也发布了“无品牌版本”的正式版和公测版，以允许开发者在特定平台上测试未签名的扩展。\[14\]\[15\]

### 兼容性与更新

扩展包含的附有[元数据的](../Page/元数据.md "wikilink")[XML文件会被附加组件安装机制使用](../Page/XML.md "wikilink")。在该文件中，此附加组件适用的Mozilla应用程序项目的最大和最小版本也被标明。如果安装的附加组件适用版本不再范围内，安装可能会被阻止或警告。然而，元数据中的版本范围并不能保证附加组件在此范围内与外一定能正常工作，并可使用方法绕过该兼容性检查。

附加组件管理器会定期的自动从Mozilla附加组件网站（或扩展自行定义的地址）检查是否存在更新，用户也可自行触发附加组件的检查更新。

## 主题

[Writer_avec_un_persona_de_Firefox.png](https://zh.wikipedia.org/wiki/File:Writer_avec_un_persona_de_Firefox.png "fig:Writer_avec_un_persona_de_Firefox.png")\]\]
主题，\[16\]原名Personas（炫彩风格），它允许用户快速的改变一个应用程序的外观。尽管最早的Personas是采用一个扩展来实现，但该功能从[Firefox
3.6开始已被内置](https://zh.wikipedia.org/wiki/Firefox_3.6 "wikilink")，并在之后被其他一些应用程序采用。这些“背景主题”与实现为Mozilla扩展的传统主题、完整主题不同。这种主题更加基础，也更容易创建和安装，但能力仅限于更改工具栏、菜单栏和状态栏的背景图像、背景颜色和文本颜色。它们不需要以扩展的形式安装，也不能更改工具栏等界面元素的形状、外观、功能表现等。安装它们非常简单，只需单击即可下载并激活，并还支持悬停预览即时效果。

该类主题最早托管于GetPersonas.com，后在2013年被转移到Mozilla
Add-ons网站。此外，因为名称与被称为“[Mozilla
Persona](../Page/Mozilla_Persona.md "wikilink")”的方案类似，Mozilla停止使用该名称并改称之为“主题”，尽管这将基于扩展实现的主题（现称之为完整主题、传统主题）与Personas混淆，但它们均由附加组件管理器安装和管理，并且显示在同一栏目中（现称之为“外观”）。\[17\]\[18\]

尽管此功能受到了一些好评，但[TechCrunch批评](../Page/TechCrunch.md "wikilink")[Mozilla只着眼于发展浏览器的外观来吸引](../Page/Mozilla.md "wikilink")-{zh-hans:眼球;
zh-tw:目光}-，而没有将精力更多地放在改进Firefox的速度和可用性上\[19\]

## 插件

Mozilla插件是为呈现应用程序本无法呈现的Web内容而准备的[浏览器扩展](https://zh.wikipedia.org/wiki/浏览器扩展 "wikilink")，采用[NPAPI框架创建](../Page/NPAPI.md "wikilink")。[Firefox](../Page/Firefox.md "wikilink")
41.0本身预装两个插件：[思科提供的](https://zh.wikipedia.org/wiki/思科 "wikilink")“开放H.264视频编解码器”和Adobe
Systems提供的“Primetime内容解密模块”。常见的第三方Mozilla插件包括：[Adobe Flash
Player](../Page/Adobe_Flash_Player.md "wikilink")、[Acrobat
Reader](https://zh.wikipedia.org/wiki/Acrobat_Reader "wikilink")、[Adobe
Shockwave
Player](https://zh.wikipedia.org/wiki/Adobe_Shockwave_Player "wikilink")、[Java
SE](https://zh.wikipedia.org/wiki/Java_SE "wikilink")、[QuickTime和](../Page/QuickTime.md "wikilink")[RealPlayer](../Page/RealPlayer.md "wikilink")。不同于其他类型的附加组件，Mozilla不分发第三方插件，附加组件管理器也不能更新它们。\[20\]

Mozilla插件正在被逐渐淘汰。Mozilla计划2016年在[Firefox中停止使用大多数插件](../Page/Firefox.md "wikilink")。\[21\]

## 参考资料

## 外部链接

  -
  - [Mozilla开发者中心上的附加组件相关文档](https://developer.mozilla.org/Add-ons)

[Category:自由軟體網站](https://zh.wikipedia.org/wiki/Category:自由軟體網站 "wikilink")
[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:Mozilla附加组件](https://zh.wikipedia.org/wiki/Category:Mozilla附加组件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. [Chapter 2: Technologies used in developing extensions - Firefox
    addons developer guide |
    MDN](https://developer.mozilla.org/en-US/Add-ons/Overlay_Extensions/Firefox_addons_developer_guide/Technologies_used_in_developing_extensions).
11. [User script - GreaseSpot
    Wiki](http://wiki.greasespot.net/User_script).
12.
13.
14.
15.
16.
17. <http://blog.mozilla.org/addons/2012/03/01/personas-are-joining-the-themes-family/>
18. <https://blog.mozilla.org/addons/2013/02/28/getpersonas-com-migration-update/>
19.
20.
21.