是一套[基于网络的](../Page/万维网.md "wikilink")[Wiki引擎](https://zh.wikipedia.org/wiki/Wiki引擎 "wikilink")，[維基媒體基金會的所有项目乃至众多wiki网站皆採用了这一软件](https://zh.wikipedia.org/wiki/維基媒體基金會 "wikilink")。MediaWiki软件最初是为[自由内容百科全书](https://zh.wikipedia.org/wiki/自由内容 "wikilink")[维基百科所开发的](../Page/维基百科.md "wikilink")，今日已被一些公司机构部署为内部的[知识管理和](https://zh.wikipedia.org/wiki/知识管理系统 "wikilink")[内容管理系统](../Page/内容管理系统.md "wikilink")。[Novell甚而还在多个高流量的网站中使用了该软件](../Page/Novell.md "wikilink")。\[1\]

MediaWiki採用[PHP编程語言寫成](../Page/PHP.md "wikilink")，並可使用[MySQL](../Page/MySQL.md "wikilink")、[MariaDB](../Page/MariaDB.md "wikilink")、[PostgreSQL或](../Page/PostgreSQL.md "wikilink")[SQLite之一作為其](../Page/SQLite.md "wikilink")[关系数据库管理系统](https://zh.wikipedia.org/wiki/关系数据库管理系统 "wikilink")。MediaWiki在[GNU通用公共许可证第](../Page/GNU通用公共许可证.md "wikilink")2版及其后续版本的条款下分发，其文档则按[知识共享-署名-相同方式共享3.0版协议释出](../Page/创作共用.md "wikilink")，部分文档还被释入了[公有领域](../Page/公有领域.md "wikilink")\[2\]，这使其成为了[自由软件](../Page/自由软件.md "wikilink")。

出于服务维基百科的需求，软件的第一个版本于2002年被部署\[3\]，后来，维基百科和其他维基项目继续定义了MediaWiki的大部分功能\[4\]。为了有效地处理大型项目，MediaWiki得到了很好的优化，使其可以承载万亿字节的内容和每秒数十万次的访问请求\[5\]\[6\]。因为维基百科是全球最大的网站之一，需要MediaWiki能为开发者实现通过多层次的实现可伸缩性缓存和数据库响应，对开发者来说，这一直是一个让他们很头疼的大问题，而MediaWiki很好的解决了这一问题。

MediaWiki有700多个配置设置\[7\]和超过1800个扩展\[8\]，可以使各种特性被添加或更改。在维基百科上，超过1000个自动化和半自动化的机器人和其他工具用于协助编辑。\[9\]

它也被一些公司部署为一个内部知识管理系统\[10\]，一些教育机构也让学生使用MediaWiki来进行小组项目的管理和维护\[11\]。

## 许可

MediaWiki是遵循[GNU通用公共许可证的最新版本](../Page/GNU通用公共许可证.md "wikilink")（截至发布日期）发布的[自由软件](../Page/自由软件.md "wikilink")。它的文档则是部分基于[知识共享许可证发布](../Page/知识共享.md "wikilink")，部分隶属于[公有领域](../Page/公有领域.md "wikilink")\[12\]。MediaWiki.org上的指南等内容具有[知识共享许可证](../Page/知识共享.md "wikilink")，而用于拷贝和/或包含在MediaWiki安装文件内的帮助页面则属于[公有领域](../Page/公有领域.md "wikilink")。这是为了避免由于拷贝帮助页面而引起的违背[知识共享许可证条例的法律纠纷](../Page/知识共享.md "wikilink")\[13\]。MediaWiki总体使用[开放源代码的多媒体格式](../Page/开放源代码.md "wikilink")。\[14\]

## 歷史

[Magnus_Manske.png](https://zh.wikipedia.org/wiki/File:Magnus_Manske.png "fig:Magnus_Manske.png")
[San_Francisco_Hackathon_2012-1-12.jpg](https://zh.wikipedia.org/wiki/File:San_Francisco_Hackathon_2012-1-12.jpg "fig:San_Francisco_Hackathon_2012-1-12.jpg")
在[科隆大学的学生及开发员](../Page/科隆大学.md "wikilink")[马格努斯·曼斯克设计的用户介面基础上](../Page/马格努斯·曼斯克.md "wikilink")，为[维基百科编写了现在的这一软件](../Page/维基百科.md "wikilink")。维基百科最初曾经使用[Perl语言编写的小型wiki引擎](../Page/Perl.md "wikilink")[UseModWiki作为后台](../Page/UseModWiki.md "wikilink")，其后则换用了Manske用PHP编写的软件来提供更多的功能。随着使用量的日益增长，页面加载的问题日益严重，这促使克罗克重写了该软件，采用了扩展性更强的[MySQL后台数据库](../Page/MySQL.md "wikilink")。

后来，[维基媒体基金会的](../Page/维基媒体基金会.md "wikilink")[首席技术官布里昂](https://zh.wikipedia.org/wiki/首席技术官 "wikilink")·维伯（）\[15\]成为了该软件的发布经理及其最活跃的开发者。\[16\]\[17\]

随着曼斯克程序第一版的释出，该软件曾被赋予了多项昵称，以表示当时的开发状态——“PHP脚本”（）、“第二期”（）、“第三期”（）、“新代码库”（）——但并无正式的产品名称。2003年6月20日，随着维基媒体基金会的宣布成立，作为对“Wikimedia”（维基媒体）的戏称，维基百科贡献者丹尼尔·迈耶（）创造了“MediaWiki”一词来称呼这一软件，\[18\]并在2003年8月开始逐步得到采用。由于这一名称有意地相似于“Wikimedia”一名（而“Wikimedia”还相似于“Wikipedia”），因而经常造成混淆。该软件的标志由埃里克·默勒（）基于[弗洛朗丝·尼巴尔-德伍阿尔拍摄的太阳花照片制作](https://zh.wikipedia.org/wiki/弗洛朗丝·尼巴尔-德伍阿尔 "wikilink")，最初用于参加维基百科在2003年年中举行的国际性标志竞赛。\[19\]该标志被评为第三名，并被选作MediaWiki的标志；第二名的标志则被选为维基媒体基金会的标志。\[20\]太阳花两侧的双重方括号象征着MediaWiki用来建立[超連結到其他wiki页面的语法](https://zh.wikipedia.org/wiki/超連結 "wikilink")。

### 版本历史

| 顏色 | 说明       |
| -- | -------- |
| 红色 | 旧版本；不再支持 |
| 黄色 | 旧版本；仍受支持 |
| 绿色 | 当前版本     |
| 蓝色 | 未来版本     |

MediaWiki的第一个版本1.1，发布于2003年12月。MediaWiki 1.31.0是当前稳定版本，发布于2018年6月。

下表包含了**MediaWiki**的**版本历史**，展示了该软件所有的发行版本。

{{\#lst::MediaWiki版本歷史|versionhistory}}

## 使用网站

MediaWiki最著名的使用案例是维基百科，同时还部分用于维基媒体基金会的其他项目。一些其他的公共wiki网站也使用Mediawiki，包括[Wikia](../Page/Wikia.md "wikilink")\[21\]（一个[wiki农场](https://zh.wikipedia.org/wiki/wiki农场 "wikilink")\[22\]）、[wikiHow](https://zh.wikipedia.org/wiki/wikiHow "wikilink")\[23\]和[维基解密](https://zh.wikipedia.org/wiki/维基解密 "wikilink")\[24\]。

使用mediawiki的还有众多和维基百科模式相似的线上wiki百科，[大众百科](../Page/大众百科.md "wikilink")、[Metapedia](https://zh.wikipedia.org/wiki/Metapedia "wikilink")、[Scholarpedia和](../Page/Scholarpedia.md "wikilink")[保守百科](../Page/保守百科.md "wikilink")\[25\]是其中几个例子。Mediawiki也在大量公司的内部使用，其中有[Novell和](../Page/Novell.md "wikilink")[英特尔](../Page/英特尔.md "wikilink")\[26\]\[27\]。

Mediawiki也被应用在政府内部，例子包括由[美国情报体系使用的](https://zh.wikipedia.org/wiki/美国情报体系 "wikilink")和[美国国务院使用的](../Page/美国国务院.md "wikilink")[Diplopedia](../Page/Diplopedia.md "wikilink")。[联合国开发计划署和](../Page/联合国开发计划署.md "wikilink")等[联合国机构也使用MediaWiki来运行他们的wiki网站](../Page/联合国系统.md "wikilink")，他们认为：“这个软件支撑了[维基百科的运转](../Page/维基百科.md "wikilink")，得到了全面而彻底的测试，相对于其他wiki软件，MediaWiki在未来将会是更多wiki网站技术人员的选择。”\[28\]

## 主要功能

MediaWiki提供丰富的核心功能集和增加提供附加功能的扩展程序的机制。

### 国际化和本地化

由于维基媒体计划大力强调多语言，[国际化和本地化受到开发商的显著关注](https://zh.wikipedia.org/wiki/国际化和本地化 "wikilink")。[Translatewiki.net将用户界面完全或部分翻译成超过](https://zh.wikipedia.org/wiki/Translatewiki.net "wikilink")300种语言，网站管理员还可以进一步定制（整个界面可以透过wiki编辑）\[29\]。几个扩展程序，最明显的是收集在[MediaWiki语言中的](https://zh.wikipedia.org/wiki/mw:https:/www.mediawiki.org/wiki/MediaWiki_Language_Extension_Bundle "wikilink")，旨在进一步提升MediaWiki的多语种和国际化。

### 安装和配置

安装MediaWiki要求用户拥有[管理权限能同时运行](../Page/超级用户.md "wikilink")[PHP和兼容类型](../Page/PHP.md "wikilink")[SQL](../Page/SQL.md "wikilink")[数据库的服务器](../Page/数据库.md "wikilink")。有些用户发现设置[虚拟主机能在很大程度上使得不兼容MediaWiki的网站的大部分内容在框架下](../Page/虚拟主机.md "wikilink")（如[Zope和](../Page/Zope.md "wikilink")[Ruby
on
Rails](../Page/Ruby_on_Rails.md "wikilink")）运行\[30\]。[云主机可以让用户省去手动建立新服务器的工夫](https://zh.wikipedia.org/wiki/云计算 "wikilink")\[31\]。

安装PHP脚本能透过[网络浏览器访问来初始化wiki的设置](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")。软件为用户提示了必备参数的最小化设置，留下启用上传功能\[32\]、增加网站标志\[33\]、安装扩展等进一步的变更可透过修改包含在文件`LocalSettings.php`中的配置设置实现\[34\]\[35\]。MediaWiki的某些方面可以透过特殊网页或编辑某些页面进行配置。例如，滥用过滤器需要透过专门的页面设置\[36\]，某些小工具可以在MediaWiki名字空间中创建[JavaScript页面以进行添加](../Page/JavaScript.md "wikilink")。MediaWiki社区发布了一篇全面的安装指南\[37\]。

### 标记

早期MediaWiki（及其前身[UseModWiki](../Page/UseModWiki.md "wikilink")）与其他维基引擎之间的差别之处在于代替[驼峰式大小写的](https://zh.wikipedia.org/wiki/驼峰式大小写 "wikilink")“自由链接”。当MediaWiki被创造时，wiki的典型现象是需要文本像“WorldWideWeb”一样创建关于[万维网页面的链接](../Page/万维网.md "wikilink")：MediaWiki中的链接从另一方面来讲，是由双括号括起来的字创建的，它们之间的空间保持不变，如[`万维网`](../Page/万维网.md "wikilink")。这种变化符合创建百科全书的逻辑，且十分讲求名字的精确度。

MediaWiki使用了一种可扩展、[轻量级的维基标记语言来设计](../Page/轻量级标记语言.md "wikilink")\[38\]，它比[HTML更容易学习和使用](../Page/HTML.md "wikilink")。工具存在将表格在MediaWiki标记和HTML之间切换的转换内容\[39\]。尽管有过创造MediaWiki标记语言规范的尝试，但共识似乎已经达到了维基代码需要[上下文有关文法的程度](../Page/上下文有关文法.md "wikilink")\[40\]\[41\]。下面的对比分析展现了维基标记语言与HTML之间的差别。

<table>
<thead>
<tr class="header">
<th><p>MediaWiki语法</p></th>
<th><p>对应HTML代码</p></th>
<th><p>渲染输出</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>==== A dialogue ====</code><br />
<br />
<code>"Take some more [[tea|tea]]," the March Hare said to Alice, very earnestly.</code><br />
<br />
<code>"I've had nothing yet," Alice replied in an offended tone: "so I can't take more."</code><br />
<br />
<code>"You mean you can't take ''less''," said the Hatter: "it's '''very''' easy to take ''more'' than nothing."</code></p></td>
<td><p><tt></p>
<h4>
<p><span class="mw-headline" id="A_dialogue">A dialogue</span></p>
</h4>
<p><br />
<br />
</p>
<p>"Take some more <a href="/wiki/Tea" title="Tea">tea</a>," the March Hare said to Alice, very earnestly.</p>
<p><br />
<br />
</p>
<p>"I've had nothing yet," Alice replied in an offended tone: "so I can't take more."</p>
<p><br />
<br />
</p>
<p>"You mean you can't take <i>less</i>," said the Hatter: "it's <b>very</b> easy to take <i>more</i> than nothing."</p>
<p><br />
</tt></p></td>
<td><p>"Take some more <a href="../Page/茶.md" title="wikilink">tea</a>," the March Hare said to Alice, very earnestly.</p>
<p>"I've had nothing yet," Alice replied in an offended tone: "so I can't take more."</p>
<p>"You mean you can't take <em>less</em>," said the Hatter: "it's <strong>very</strong> easy to take <em>more</em> than nothing."</p></td>
</tr>
</tbody>
</table>

<small>（语出[路易斯·卡罗](https://zh.wikipedia.org/wiki/路易斯·卡罗 "wikilink")《[爱丽丝梦游仙境](../Page/爱丽丝梦游仙境.md "wikilink")》）</small>

### 编辑界面

学习MediaWiki的页面编辑工具被认为有挑战性。一项关于学生使用基于MediaWiki的wiki的分配情况的调查发现，当被问及wiki的主要问题的开放性问题时，24%提到了技术问题和格式，如“无法弄清楚如何加入图像。无法弄清楚如何显示带链接的文字，就像输入数字。”

为了使编辑长页面更容易，MediaWiki允许分段编辑页面（从段落标题处找到）。用户还可以标记编辑是否为小修改。例如更正拼写、语法和标点符号属于小修改，而增加新文本段落就不属于小修改。

有时一个用户正在编辑，第二个用户保存页面同一段落的编辑，之后当第一个用户尝试保存网页时，就会出现编辑冲突。那个第二个用户将获得机会将它的内容合并到当前展现第一个用户保存的编辑的页面。一个可选的扩展程序向特定用户组在编辑冲突时提供优先机会。

MediaWiki的用户界面已被本地化成不同的语言。维基内容本身可以设置、发送到“内容式语言”的HTTP标题和“lang”HTML属性。

### 应用程序编程接口

### 丰富内容

### 追踪编辑

### 导航

### 内容组织

### 自定义

### 模版

### 用户组和访问限制

### 可扩展性

## 安装要求

### 硬件配置

### 操作系统及应用环境

  - 任何一種可以運行[PHP5與](../Page/PHP.md "wikilink")[MySQL的作業系統](../Page/MySQL.md "wikilink")：

:\* [Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，例如：

::[Windows 2000](../Page/Windows_2000.md "wikilink")、[Windows Server
2003](../Page/Windows_Server_2003.md "wikilink")、[Windows Server
2008](../Page/Windows_Server_2008.md "wikilink")

:\*
[Linux](../Page/Linux.md "wikilink")（例如，[Fedora](../Page/Fedora.md "wikilink")……）

:\*
[BSD](../Page/BSD.md "wikilink")（例如，[FreeBSD](../Page/FreeBSD.md "wikilink")……）

:\* [macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")(前稱Mac OS
X)，例如：

  -

      -
        [OS X
        Lion](https://zh.wikipedia.org/wiki/OS_X_Lion "wikilink")、[Mac
        OS X
        10.6](https://zh.wikipedia.org/wiki/Mac_OS_X_10.6 "wikilink").....

<!-- end list -->

  - 資料庫：[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL或](../Page/PostgreSQL.md "wikilink")[MariaDB](../Page/MariaDB.md "wikilink")
  - 動態網頁技術：[PHP5](../Page/PHP.md "wikilink")
  - 網頁伺服器：[Apache](../Page/Apache_HTTP_Server.md "wikilink")、[Nginx或](../Page/Nginx.md "wikilink")[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink")

## 参考文献

## 外部連結

  -   - [使用者指南](https://zh.wikipedia.org/wiki/:mediawikiwiki:Help:Contents "wikilink")
      - [使用MediaWiki的網站列表](https://zh.wikipedia.org/wiki/:mediawikiwiki:Sites_using_MediaWiki "wikilink")

  - [MediaWiki中文技术论坛](http://www.mediawiki.info)（非官方）

  - [中文Mediawiki](http://mediawiki.tw/)

## 參見

  - MediaWiki初版主要作者：[马格努斯·曼斯克](../Page/马格努斯·曼斯克.md "wikilink")
  - [Wikipedia:MediaWiki](https://zh.wikipedia.org/wiki/Wikipedia:MediaWiki "wikilink")
  - [Wiki](../Page/Wiki.md "wikilink")
  - [Wiki引擎](https://zh.wikipedia.org/wiki/Wiki引擎 "wikilink")
  - [Wiki軟件比較](https://zh.wikipedia.org/wiki/Wiki軟件比較 "wikilink")
  - [維基](../Page/維基.md "wikilink")
  - [維基媒體基金會](https://zh.wikipedia.org/wiki/維基媒體基金會 "wikilink")
  - [維基百科](https://zh.wikipedia.org/wiki/維基百科 "wikilink")
  - [跨维基](https://zh.wikipedia.org/wiki/跨维基 "wikilink")
  - \-{zh-hans:[如何取得维基软件](https://zh.wikipedia.org/wiki/mw:Download/zh-hans "wikilink");zh-hant:[如何取得維基軟體](https://zh.wikipedia.org/wiki/mw:Download/zh-hant "wikilink");}-
  - [內容管理系統列表](https://zh.wikipedia.org/wiki/內容管理系統列表 "wikilink")
  - [MediaWiki與瀏覽器或執行環境的相容性](https://zh.wikipedia.org/wiki/mw:Compatibility "wikilink")

{{-}}

[Category:MediaWiki](https://zh.wikipedia.org/wiki/Category:MediaWiki "wikilink")
[Category:自由内容管理系统](https://zh.wikipedia.org/wiki/Category:自由内容管理系统 "wikilink")
[Category:用PHP编程的自由软件](https://zh.wikipedia.org/wiki/Category:用PHP编程的自由软件 "wikilink")
[Category:自由wiki软件](https://zh.wikipedia.org/wiki/Category:自由wiki软件 "wikilink")
[Category:2002年软件](https://zh.wikipedia.org/wiki/Category:2002年软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.  例如：http://developer.novell.com/  ；http://en.opensuse.org/  ；等。

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

29. 参见：[Translation
    statistics](http://translatewiki.net/wiki/Translating:Statistics)
    和[Multilingual
    MediaWiki](https://zh.wikipedia.org/wiki/mw:Multilingual_MediaWiki "wikilink").

30.

31.

32.

33.

34. Manual:Configuration settings

35.

36.

37.

38.

39.

40.

41.