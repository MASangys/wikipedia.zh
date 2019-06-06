**Bootstrap**是一组用于[网站和](https://zh.wikipedia.org/wiki/网站 "wikilink")[网络应用程序开发的](../Page/网络应用程序.md "wikilink")[开源](../Page/自由及开放源代码软件.md "wikilink")[前端](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")（所谓“前端”，指的是展现给最终用户的界面。与之对应的“后端”是在[服务器上面运行的代码](../Page/服务器.md "wikilink")）[框架](../Page/Web应用框架.md "wikilink")，包括[HTML](../Page/HTML.md "wikilink")、[CSS及](../Page/层叠样式表.md "wikilink")[JavaScript的框架](../Page/JavaScript.md "wikilink")，提供[字體排印](../Page/字体排印学.md "wikilink")、表單、按鈕、導航及其他各種元件及Javascript擴充套件，旨在使[动态网页和](https://zh.wikipedia.org/wiki/動態網頁 "wikilink")[Web应用的开发更加容易](../Page/网络应用程序.md "wikilink")。

Bootstrap是[GitHub上面被标记为](../Page/GitHub.md "wikilink")“Starred”次数排名第四多的项目。Starred次数超过133,000，而[分支次数超过了](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")65,000次。\[1\]

## 起源

Bootstrap原名**Twitter
Blueprint**，由[Twitter的Mark](../Page/Twitter.md "wikilink")
Otto和Jacob
Thornton编写，本意是制作一套可以保持一致性的工具和框架。在Bootstrap之前，开发界面需要使用不同的代码库，这样很容易导致不一致的问题，从而增加了维护的负担。Twitter开发者Mark
Otto说：

经过一个小组几个月之后的努力，Twitter的许多开发者把它当作Hack
Week（在Twitter开发者中流行的类似于[黑客松的一星期](../Page/黑客松.md "wikilink")）的一部分，开始参与开发。大家把Twitter
Blueprint改名为Bootstrap，并且在2011年8月19日将其作为开源项目发布。\[2\] 此后项目继续由Mark
Otto、Jacob Thornton和一个核心开发小组维护，此外还有众多来自社区的贡献者。\[3\]

在2012年1月31日，Bootstrap
2发布。这一版增加了十二列网格布局和[响应式组件](../Page/响应式网页设计.md "wikilink")，并且对许多组件进行了修改。\[4\]
Bootstrap
3于2013年8月19日发布，开始将移动设备优先作为方针，并且开始使用[扁平化设计](../Page/扁平化设计.md "wikilink")。\[5\]

2015年4月23日，Mark Otto宣布正在开发Bootstrap 4\[6\]。Bootstrap
4的第一个alpha版本部署在2015年8月19日\[7\]。

## 功能

Bootstrap与最新版的[Google
Chrome](../Page/Google_Chrome.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")、[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")、[Opera和](https://zh.wikipedia.org/wiki/Opera "wikilink")[Safari浏览器兼容](../Page/Safari.md "wikilink")，尽管有些浏览器并不是支持所有操作系统。\[8\]

从2.0版本开始，Bootstrap支持[响应式网页设计](../Page/响应式网页设计.md "wikilink")(RWD)。页面布局可以根据显示网页的设备（桌面、平板电脑、手机）来进行动态调整。

从3.0版本开始，Bootstrap将[移动设备优先作为设计方针](../Page/响应式网页设计.md "wikilink")，更加强调了响应式设计。

4.0 alpha版本添加[Sass和](../Page/Sass.md "wikilink")的支持\[9\]。

Bootstrap是开源软件，可以从GitHub上面找到\[10\]。开发者被鼓励参与项目，并且对项目做出自己的贡献。

## 结构和功能

[Twitter_Bootstrap_Under_Firefox_32.png](https://zh.wikipedia.org/wiki/File:Twitter_Bootstrap_Under_Firefox_32.png "fig:Twitter_Bootstrap_Under_Firefox_32.png")渲染的Bootstrap示例页面\]\]
Bootstrap采用模块化设计，并且用[LESS样式表语言来实现各种组件和工具](https://zh.wikipedia.org/wiki/LESS_\(层叠样式表\) "wikilink")。一个名为bootstrap.less的文件包括了这些组件和工具，开发者可以修改这个文件，自行决定项目需要哪些组件。<span class="cx-segment" data-segmentid="134"></span>

通过一个基本配置文件可以进行有限的定制，此外也可以进行更加深入的定制。

LESS语言支持变量、函数、运算符、组合选择器和一个叫做[Mixin](../Page/Mixin.md "wikilink")（混入）的功能。

从Bootstrap
2.0开始，Bootstrap文档包括一个叫做“自定义”的特别选项，开发者可以根据自己的实际需要来选择包含的组件和效果，然后生成和下载已经编译好的包。

网格系统和响应式设计以1170像素宽为基准。此外开发者也可以自定义基准。这两种情况下，Bootstrap都能提供四种变体：手机竖屏、手机横屏和平板电脑、PC低分辨率、高分辨率，每个变体都会自动调整网格宽度。

### CSS

Bootstrap对一系列HTML组件的基本样式进行了定义，并且为文本、表格和表单元素设计了一套独特的、现代化的样式。

### 可重用组件

除了基本HTML元素，Bootstrap还包括了其他常用的界面元素，例如带有高级功能的按钮（例如按钮组合、带有下拉菜单选项的按钮、导航栏、水平和垂直标签组、导航、分页等等）、标签、高级排版、缩略图、警告信息、进度条等。

这些组件都使用CSS的类实现。在页面中需要将其对应到特定的HTML元素上面。

### [JavaScript组件](../Page/JavaScript.md "wikilink")

通过[jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")，Bootstrap加入了一些JavaScript组件。它们提供了例如对话框、工具提示、轮播等功能。此外还增强了一些用户界面元素的功能，例如输入框的自动完成。Bootstrap
2.0支持以下JavaScript插件：Modal（模态对话框）、Dropdown（下拉菜单）、Scrollspy（滚动监听）、Tab（标签页）、Tooltip（工具提示）、Popover（浮动提示）、Alert（警告）、Button（按钮）、Collapse（折叠）、Carousel（轮播）、Typeahead（输入提示）、Affix（附加导航）.

## 参见

  - [CSS框架](https://zh.wikipedia.org/wiki/CSS框架 "wikilink")
  - [响应式网页设计](../Page/响应式网页设计.md "wikilink") (RWD)
  - [CSS](../Page/层叠样式表.md "wikilink")
  - [HTML](../Page/HTML.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink")

## 参考文献

## 外部链接

  - [Bootstrap官方網站](http://getbootstrap.com/) - 包括文档和下载
  - [Bootstrap繁體中文網站](https://web.archive.org/web/20161019113215/https://kkbruce.tw/bs3/)
    - 由陳傳興維護，包括Bootstrap網站的繁體中文翻譯版本，以及相關的框架
  - [Bootstrap簡體中文網站](http://www.bootcss.com/) -
    由社区维护，包括Bootstrap网站的簡體中文翻译版本，以及相关的框架
  - [Bootstrap Blog](http://blog.getbootstrap.com/) - 由开发者Mark
    Otto维护的官方日志
  - [Bootstrap文档手册实例网](http://www.lisa33xiaoq.net/bootstrapbase/bootstrap.html)
    - Bootstrap查找文档和GitHub实例

[Category:层叠样式表](https://zh.wikipedia.org/wiki/Category:层叠样式表 "wikilink")
[Category:自由軟體計劃](https://zh.wikipedia.org/wiki/Category:自由軟體計劃 "wikilink")
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")
[Category:网页设计](https://zh.wikipedia.org/wiki/Category:网页设计 "wikilink")
[Category:CSS框架](https://zh.wikipedia.org/wiki/Category:CSS框架 "wikilink")
[Category:Twitter](https://zh.wikipedia.org/wiki/Category:Twitter "wikilink")
[Category:2011年软件](https://zh.wikipedia.org/wiki/Category:2011年软件 "wikilink")
[Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

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