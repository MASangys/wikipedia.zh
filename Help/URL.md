如同[万维网](../Page/万维网.md "wikilink")上的所有页面一样，[维基媒体基金会](../Page/维基媒体基金会.md "wikilink")服务器上的页面也有自己的**[URL](https://zh.wikipedia.org/wiki/URL "wikilink")**（统一资源定位符）来区分它们。这些URL地址在您浏览页面时，显示在浏览器的地址栏中。维基百科编者也可以通过创建[超链接至指定的URL](https://zh.wikipedia.org/wiki/超链接 "wikilink")，链接到维基百科或维基媒体基金会的其他计划页面，抑或是网络上的其他页面。

## 链接到URL

在编辑一个页面时，链接至维基百科（或其他维基媒体基金会计划）的超链接通常使用`[[...|...]]`语法建立“内部链接”或“跨语言链接”。但是如果你想要链接到外部站点上，或者是特殊生成的维基媒体页面（例如一个条目的历史版本），就有必要提供完整的URL地址了。这需要使用外部链接语法来实现。

有三种形式的外部链接语法：

  - 如果直接在维基代码中输入URL地址，不加方括号，那么它就会原样呈现，并建立超链接：`http://meta.wikimedia.org/`的效果为 <http://meta.wikimedia.org/>
  - 如果URL被放置在方括号内，就会产生一个带计数标签的超链接：`[http://meta.wikimedia.org/]`的效果为[1](http://meta.wikimedia.org/)
  - 如果URL放置在方括号内，后面加上一个空格，并输入文本，那么后面的文本就会作为该超链接的标签：`[http://meta.wikimedia.org/ Wikimedia]`的效果为[Wikimedia](http://meta.wikimedia.org/)

想要隐藏箭头图标的话，请将外部链接置于 <span class="plainlinks">`...`</span>标签之间。

URL必须以“http://”、“https://”、“ftp://”、“irc://”、“gopher://”、“telnet://”、“nntp://”、“worldwind://”、“mailto:”、“news:”或“svn://”开头。\[1\]另外，URL中不能包含空格，而且必須只能包含下列字符，其他字符將自動轉換為適當形式。

`A-Z a-z 0-9 ._\/~%-+&#?!=()@:`

通常您想使用的URL地址可以从浏览器的地址栏中复制粘贴过来。如果您因为某些原因需要自行输入地址，请注意部分保留字符需要使用[UTF-8](../Page/UTF-8.md "wikilink")编码。例如，^ 要写做 %5e，为其[十六进制](../Page/十六进制.md "wikilink")[ASCII](../Page/ASCII.md "wikilink")值并在前面加上百分号。维基百科条目标题中如果有空格，在地址中可以转换为下划线。

URL中还可以包含Unicode字符（同内部链接一样）；系统会在必要时进行转换。例如：http://meta.wikipedia.org/wiki/À_propos_de_Méta 等同于 <http://meta.wikipedia.org/wiki/%C3%80_propos_de_M%C3%A9ta> 。

欲了解詳情，請參見元維基[外部鏈接的URL一節](https://zh.wikipedia.org/wiki/m:Help:URL#URLs_in_external_links "wikilink")。

## 维基百科页面的URL

中文维基百科的URL地址都以 <http://zh.wikipedia.org/> 开头。此地址本身会重定向至[Wikipedia:首页](https://zh.wikipedia.org/wiki/Wikipedia:首页 "wikilink")。

维基百科页面的URL地址有以下两种形式：

  - <http://zh.wikipedia.org/wiki/页面名> （系统默认）
  - <http://zh.wikipedia.org/w/index.php?title=页面名> （效果相同）

注意：对于第一种形式的URL，其中的“/wiki/”可以替换成“/zh/”（不转换）、“/zh-cn/”（大陆简体）、“/zh-tw/”（台湾正体）、“/zh-hk/”（香港繁体）、“/zh-mo/”（澳门繁体）、“/zh-sg/”（新加坡简体）或“/zh-my/”（马来西亚简体），以此来实现繁简转换。

页面名有时可能包含[名字空间前缀](https://zh.wikipedia.org/wiki/Wikipedia:名字空间 "wikilink")（例如本页的Help:）。一些[Help:特殊页面可能会包含一个参数](https://zh.wikipedia.org/wiki/Help:特殊页面 "wikilink")，例如 <http://zh.wikipedia.org/wiki/Special:Contributions/Mountain> （对于大多数特殊页面的参数，见下）。

与一个页面有关的其它URL由原有URL加入查询字符串构成。该字符串可以添加到上述的任意一种形式中（例如 <http://zh.wikipedia.org/wiki/维基百科?action=history> ，也可以写作 <http://zh.wikipedia.org/w/index.php?title=维基百科&action=history> ），但系统默认采用第二种形式。

扩展URL地址使用方法如下：

  - 查看[重定向页本身](https://zh.wikipedia.org/wiki/WP:重定向 "wikilink")： <http://zh.wikipedia.org/w/index.php?title=Wikipedia&redirect=no>
  - 前往编辑页（或查看全保护页面源代码）： <http://zh.wikipedia.org/w/index.php?title=维基百科&action=edit> 。还可以添加其他参数，例如“section=5”或“section=new”来编辑指定段落，或添加新段落（条目的首段为“section=0”）。还有参数可以实现在编辑新页面时自动载入指定文本，参见[mw:Extension:InputBox](https://zh.wikipedia.org/wiki/mw:Extension:InputBox "wikilink")。
  - 查看页面的[编辑历史](https://zh.wikipedia.org/wiki/Help:页面历史 "wikilink")：http://zh.wikipedia.org/w/index.php?title=维基百科\&action=history 。（也可以添加参数，例如 <http://zh.wikipedia.org/w/index.php?title=维基百科&limit=5&offset=90&action=history> ，将呈现第91至第95条编辑。）
  - 想要链接到页面的某个特定历史版本： <http://zh.wikipedia.org/w/index.php?title=维基百科&oldid=5724530> （这是某个特定历史版本的永久链接）。当前页面版本的永久链接可以通过左侧导航栏中的“工具箱”-“永久链接”查到。请注意，这里的历史版本ID在所有页面中都是独一无二的，所以这里的“title”参数并没有任何影响，事实上是可以省去的，也就是说，上面的页面您可以直接通过 <http://zh.wikipedia.org/w/index.php?oldid=5724530> 访问。
  - 想链接到同一页面两个版本的[差异比较](https://zh.wikipedia.org/wiki/Help:差异 "wikilink")： <http://zh.wikipedia.org/w/index.php?title=维基百科&action=historysubmit&diff=13169822&oldid=13137242> ，这里diff后所跟的是显示在右侧的版本ID。使用“diff=0”和“oldid=0”的话，将比较最近的两个版本差异。同样的，这里“title”参数是没有任何实际作用的（事实上，你可以比对两个不同页面的版本差异）。
  - 将页面加入[监视列表](https://zh.wikipedia.org/wiki/Help:监视列表 "wikilink")：http://zh.wikipedia.org/w/index.php?title=维基百科\&action=watch 。改为“action=unwatch”则是移出监视列表。
  - 清空当前页面的服务器缓存： <http://zh.wikipedia.org/w/index.php?title=维基百科&action=purge> 。这和清空您浏览器的缓存不是一样的。
  - 想要执行其他定义操作，可以将上例中的purge更换为view（浏览）、delete（删除）、rollback（回退）、protect或unprotect（取消保护）、markpatrolled（标记已巡查）、render（去除格式）、deletetrackback，这些操作大多需要管理员权限。
  - 获得某页面的源维基代码，而不用下载全部的HTML源码： <http://zh.wikipedia.org/w/index.php?title=维基百科&action=raw> 。
  - 从某一特定点开始浏览[分类](https://zh.wikipedia.org/wiki/Help:分类 "wikilink")： <http://zh.wikipedia.org/w/index.php?title=Category:二字消歧义&from=D> 。
  - 为[特殊页面自定义参数](https://zh.wikipedia.org/wiki/Help:特殊页面 "wikilink")，例如： <http://zh.wikipedia.org/w/index.php?title=Special:最近更改&from=20100605070002> 。此例中，“from”后面的参数为时间戳，格式为yyyymmddhhmmss，采用[UTC时间](https://zh.wikipedia.org/wiki/UTC "wikilink")，此外还有其他形式的参数。

如果要输入维基百科页面的地址，切记要按照前面所说的那样，将空格转换成下划线，并把特殊字符转换成UTF-8编码。

如果输入了不存在或您没有权限访问的URL，可能会提示多种错误信息。在其他情况下，您将会被转向存在的URL（例如，页面标题出现在维基链接中时，会转换成规范格式）。

## 其他维基媒体计划的URL

除了域名不同外，其他计划也使用和中文维基类似的URL：http://meta.wikimedia.org/（元维基）、 <http://en.wikipedia.org/（英文维基百科>）、 <http://de.wiktionary.org/（德文维基字典）等>。

注意，如果输入 <http://www.wikipedia.org> ，你将会转到一个多语言的维基百科专题页面，但是其他以此开头的URL都会重定向到英文维基。

其他计划可能使用不同的字符串来取代URL中的“/w/”或“/wiki/”。详情参见元维基上的[URL帮助页面](https://zh.wikipedia.org/wiki/m:Help:URL "wikilink")。

## 模板和程序

在[模版中使用时](https://zh.wikipedia.org/wiki/帮助:模板 "wikilink")，URL也可以包含特定的词语以实现一些语法功能，例如*fullurl*，*urlencode*等等。更多的词语可以在[元维基的魔术字帮助页找到](https://zh.wikipedia.org/wiki/mw:Help:Magic_words "wikilink")。

程序访问维基百科时使用API时最为有效的，只要使用 <http://zh.wikipedia.org/w/api.php> 作为URL前缀。详情可以在[mw:API找到](https://zh.wikipedia.org/wiki/mw:API "wikilink")。

## 脚注

## 参见

  - [元维基上的URL帮助页](https://zh.wikipedia.org/wiki/m:Help:URL "wikilink")

[Category:帮助文档](https://zh.wikipedia.org/wiki/Category:帮助文档 "wikilink")

1.  注意，以“file://”开头的URL地址是无效的。可以通过在LocalSettings.php中增加$wgUrlProtocols来启用（仅对IE有效）；参见DefaultSettings.php的$wgUrlProtocols范例。