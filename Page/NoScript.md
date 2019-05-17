**NoScript** 是一个为 [Mozilla
Firefox](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink") 和
[Mozilla Application
Suite](../Page/Mozilla_Application_Suite.md "wikilink")[网页](https://zh.wikipedia.org/wiki/网页 "wikilink")[浏览器](https://zh.wikipedia.org/wiki/浏览器 "wikilink")
（诸如[Flock](../Page/Flock.md "wikilink")、[SeaMonkey等](../Page/SeaMonkey.md "wikilink")）
所开发的[自由的](../Page/自由软件.md "wikilink")[扩展](../Page/Firefox扩展列表.md "wikilink")（Add-ons）。NoScript
以[白名单选择性执行](https://zh.wikipedia.org/wiki/白名单 "wikilink")
[JavaScript](../Page/JavaScript.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Flash](../Page/Adobe_Flash.md "wikilink")、[Sliverlight](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink")
以及其它插件和脚本内容。\[1\]

## 特点

### 安全和使用方法

在安装之后，JavaScript、Java、Flash、Sliverlight和其它可执行内容都会被Firefox默认阻止。用户可以手动允许这些内容。\[2\]
NoScript会在Firefox中占据一个[工具栏图标或是一个](../Page/工具栏.md "wikilink")[状态栏图标](https://zh.wikipedia.org/wiki/状态栏 "wikilink")，并显示正在浏览的页面上每个站点的内容被阻止或允许的情况，同时也可以修改之前阻止或允许的内容。

### 站点匹配和白名单

对于每个页面，可以选择允许特定的地址，特定的域名或是根域名并执行它的内容。同时，允许一个域名之后（例如,
mozilla.org），它的所有二级域名都会被默认允许（例如 www.mozilla.org,
addons.mozilla.org
等等）而且与协议无关（例如[HTTP和](https://zh.wikipedia.org/wiki/HTTP "wikilink")[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")）。而允许一个地址之后（协议:主机
例如 <http://www.mozilla.org> ），它的所有子目录都会被允许 （例如
<http://www.mozilla.org/firefox> 和 <http://www.mozilla.org/thunderbird>
），此时它的根域名和以及其它二级域名不会被。因此，mozilla.org和addons.mozilla.org就不会被自动允许。\[3\]

### 黑名单

页面也可以在NoScript中被列入黑名单。把一个页面列入黑名单不仅会阻止执行脚本内容，同时还会去掉手动执行这些内容的选项。\[4\]即使安全設定低於預設值，NoScript還是可以阻擋一些網頁攻擊，例如[DNS重新綁定攻擊](https://zh.wikipedia.org/wiki/DNS重新綁定攻擊 "wikilink")\[5\]。

### 反XSS防护

2007年4月11日，NoScript
1.1.4.7版公开发布\[6\]，新增了一个客户端的保护，针对类型0和类型1的[XSS攻击](https://zh.wikipedia.org/wiki/跨网站指令码 "wikilink")。一旦一个页面试图将HTML或是JavaScript代码插入另一个页面，NoScript就会过滤掉有害请求。\[7\]

### 强制HTTPS转换

2008年9月15日，NoScript
1.8.1版公开发布\[8\]，使得用户可以强制某些网站必须通过https访问，增加安全性。此外NoScript也可以强制https网站把[cookies加密来阻止cookies劫持](https://zh.wikipedia.org/wiki/cookie "wikilink")。\[9\]
2009年9月23日，NoScript
1.9.8.9版增加了对[HSTS的支持](https://zh.wikipedia.org/wiki/HSTS "wikilink")。\[10\]这一功能使得用户在访问支持的网站（例如，[PayPal](../Page/PayPal.md "wikilink")）的时候自动只通过HTTPS访问，以防止[中间人攻击](../Page/中间人攻击.md "wikilink")。\[11\]

### 默认阻止一切

NoScript的默认行为是阻止所有不在白名单中的脚本。这可能使大量依赖于JavaScript技术，例如[AJAX的页面无法正常工作](../Page/AJAX.md "wikilink")。不熟悉的用户也许会觉得相比起增加的安全保护而付出的麻烦不值得。\[12\]

但同时NoScript也支持一个可选的黑名单模式：用户可以选择全局启用JavaScript然后禁止他们不信任的站点。即便如此配置，NoScript仍然能在很大程度上增强安全性，由于仍然具有[XSS](https://zh.wikipedia.org/wiki/跨网站指令码 "wikilink")、[CSRF和](../Page/跨站请求伪造.md "wikilink")[点击劫持等防护功能](../Page/点击劫持.md "wikilink")。

### 内置的白名单

,
NoScript的白名单默认包含了扩展作者的部分域名，一些[Google的域名](../Page/Google.md "wikilink")（包括一个必要的用于显示[Google
Adsense广告的域名](https://zh.wikipedia.org/wiki/Google_Adsense "wikilink")），[雅虎以及](../Page/雅虎.md "wikilink")[微软](../Page/微软.md "wikilink")，由于这些使用了[AJAX的Web邮件服务可能是某些用户唯一熟悉的使用邮件方式](../Page/AJAX.md "wikilink")，如果不这样做，这些用户就会在安装NoScript之后无意地把他们自己锁住。这个白名单是可以修改的。
\[13\]

## 奖项

NoScript被[PC
World杂志评为](https://zh.wikipedia.org/wiki/PC_World "wikilink")2006年百大最佳产品之一。\[14\]

## 评论

### 和Adblock Plus的争端

2009年5月1日，Wladimir Palant, 另一个知名Firefox扩展[Adblock
Plus的作者](../Page/Adblock_Plus.md "wikilink")，宣布一周之前的NoScript
1.9.2版开始妨碍Adblock Plus的正常工作。NoScript会在未经Adblock
Plus和用户允许的情况下解析并显示赞助商页面。Palant说NoScript使用了[代码混淆来逃避十六进制代码层面对这个修改的检测](../Page/代码混淆.md "wikilink")。\[15\]\[16\]几乎同时，由于此次事件[Mozilla决定修改社区准则](../Page/Mozilla.md "wikilink")。\[17\]4月30日，NoScript升级到1.9.2.3，把传说中的代码混淆改为了一个用户可见的特性，即NoScript在Adblock
Plus的过滤规则中将自己的网站设置为了白名单。Wladimir
Palant指出这个过滤规则集即便被用户删除也会在每次启动的时候自动添加回去，不过这看起来似乎只是个无意的Bug，因为白名单同时也可以被永久禁止或是如NoScript
FAQ所说，被用户自己的过滤规则覆盖。\[18\]几小时之后，2009年5月2日，自动更新的NoScript
1.9.2.6版彻底移除了这一白名单，并在发行记录中对没有在用户事先允许的情况下修改Adblock
Plus功能的行为作出公开道歉。\[19\]2009年5月4日，在博客上一篇长文中，NoScript的作者Giorgio
Maone以个人身份对最初含糊的说法表达了歉意，认识到这是破坏了信任关系并对此表示后悔。他同时解释NoScript添加的Adblock
Plus白名单是对EasyList反常性 “攻击”
的对抗，这些攻击针对Manoe的网站，并几乎破坏了页面所有的动态功能，甚至是安装NoScript软件包的链接。\[20\]

### NoScript网站和Ghostery扩展的冲突

2009年5月1日\[21\]以及2009年5月3日\[22\]在讨论NoScript对Adblock
Plus的修改时，有人在NoScript支持论坛中指出NoScript官网上有一个[CSS规则不停让](https://zh.wikipedia.org/wiki/CSS "wikilink")[Ghostery这个](https://zh.wikipedia.org/wiki/Ghostery "wikilink")[Mozilla扩展弹出提示](../Page/Firefox扩展列表.md "wikilink")，表示网页上有奇怪而隐蔽的"bug"。Ghostery也会提示用户Manoe网站上[Google
Adsense的使用](https://zh.wikipedia.org/wiki/Google_Adsense "wikilink")。Manoe在回应中宣称他的CSS没有做出这些，Ghostery的提示是由于其自身的技术问题，同时这些提示看起来很糟糕而且妨碍了网页真实效果的展示。\[23\]在之后的声明中Manoe又特别批评这些提示挡住了了捐款按钮和使用许可的显示\[24\]\[25\]并且表示他的CSS没有阻止Ghostery的正常工作。\[26\]

大多数人则认为Manoe的CSS文件包含了足够多的统计代码，Ghostery的判断并没有错。有人指出Ghostery在其原始状态的提示并没有挡住Manoe的捐款按钮，并在几秒钟之后就消失了。另外，用户们指出Manoe的一行样式使得Ghostery无法提供一个网页bug的信息，并认为总体上来说这是Manoe自己的问题。但Manoe仍坚称Ghostery显示信息的方式不合适和过度敏感而导致两个扩展出现了矛盾。

这件事的讨论扩展到了第三方站点，\[27\]\[28\]有些人谎称干扰了Ghostery工作的是NoScript扩展而不是Manoe的站点。Ghostery的作者[David
Cancel](http://www.google.com/profiles/dcancel)原先发表了一些过激言论但随后修正了。\[29\]

2009年5月6日，在此事的激烈讨论平息之后，Maone公开表示他改变了自己的观点，为此他修改了自己站点的CSS。\[30\]Ghostery的提示框不再被隐藏而是向页面中部轻微移动了一些，以免挡住捐款按钮或是许可信息。

## 参见

  -
  - [JavaScript陷阱](https://zh.wikipedia.org/wiki/JavaScript陷阱 "wikilink")

## 参考文献

## 外部链接

  - [NoScript官方网站](http://noscript.net)
  - [Mozilla
    Add-ons网站上的NoScript页面](https://addons.mozilla.org/firefox/addon/722)

[Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink")
[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")
[Category:廣告攔截軟體](https://zh.wikipedia.org/wiki/Category:廣告攔截軟體 "wikilink")

1.  [NoScript What is it?](http://noscript.net/) *NoScript.net*

2.  [NoScript Features-Usable security](http://noscript.net/features)
    *NoScript.net*

3.  [NoScript Features-Site matching](http://noscript.net/features)
    *NoScript.net*

4.  [NoScript Features-Untrusted
    blacklist](http://noscript.net/features) *NoScript.net*

5.

6.  [NoScript's first Anti-XSS release *Mozilla
    Add-ons*](https://addons.mozilla.org/zh-CN/firefox/addon/noscript/versions/1.1.4.7)
    *Mozilla Add-ons*

7.  [NoScript Features-Anti-XSS
    protection](http://noscript.net/features) *NoScript.net*

8.  [Force SSL HTTPS Connections In
    NoScript](https://addons.mozilla.org/zh-CN/firefox/addon/noscript/versions/1.8.1)
    *NoScript.net*

9.  [What can NoScript do against HTTPS cookie
    hijacking?](http://noscript.net/faq#qa6_4) *NoScript.net*

10. [First public Strict Transport Security
    implementation](https://addons.mozilla.org/zh-CN/firefox/addon/noscript/versions/1.9.9.01)

11. [Strict Transport Security in
    NoScript](http://hackademix.net/2009/09/23/strict-transport-security-in-noscript/)

12.

13.

14. [PC World
    Award](http://www.pcworld.com/article/id,125706-page,14/article.html)
    *pcworld.com*

15.

16.

17.

18. Some hours later, on May 2, 2009, a further automatic NoScript
    update (version 1.9.2.6) completely removed the Adblock Plus
    whitelist, and public apologies were given on the release notes page
    for having modified Adblock Plus' behavior without asking users'
    consent in advance.

19.

20.

21. [NoScript support
    forum](http://forums.informaction.com/viewtopic.php?p=3133#p3128)
    "Re: Latest NoScript version (1.9.2) breaks Adblock Plus", comment
    \#3133, Guest (2009-05-01)

22. [NoScript support
    forum](http://forums.informaction.com/viewtopic.php?p=3610#p3610)
    "Re: Latest NoScript version (1.9.2) breaks Adblock Plus", comment
    \#3610, Curious Inquiry (2009-05-03)

23. [NoScript support
    forum](http://forums.informaction.com/viewtopic.php?p=3133#p3133)
    "Re: Latest NoScript version (1.9.2) breaks Adblock Plus", comment
    \#3133, Giorgio Maone (2009-05-01)

24. [NoScript support
    forum](http://forums.informaction.com/viewtopic.php?p=3704#p3704)
    "Re: Latest NoScript version (1.9.2) breaks Adblock Plus", comment
    \#3704, Giorgio Maone (2009-05-04)

25. [NoScript support
    forum](http://forums.informaction.com/viewtopic.php?p=3935#p3935)
    "Re: Additional steps to regain and retain user trust", comment
    \#3935, Giorgio Maone (2009-05-06)

26. [Ghostery
    News](http://ghosterynews.disqus.com/attention_all_noscript_users/#comment-9007251)
     "Attention all NoScript users", comment by Giorgio Maone,
    (2009-05-05)

27. [Twitter](http://twitter.com/diveintomark/status/1690499472) tweet
    by Mark Pilgrim (diveintomark) (2009-05-03)

28. [yardley.ca](http://yardley.ca/2009/05/04/when-blockers-block-the-blockers/)
     "When blockers block the blockers", Greg Yardley (2009-05-04)

29. [Ghostery
    News](http://news.ghostery.com/post/103180001/attention-all-noscript-users)
     "Attention all NoScript users", David Cancel (2009-05-03)

30.