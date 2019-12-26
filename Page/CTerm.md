**CTerm**是一个与[FTerm](../Page/FTerm.md "wikilink")功能相仿的通用仿真终端软件。是[中国大陆](../Page/中国大陆.md "wikilink")地区发展的第一个在[BBS](../Page/BBS.md "wikilink")站上支持[鼠标](../Page/鼠标.md "wikilink")操作的[BBS](../Page/BBS.md "wikilink")软件。主要特点：支持以[SSH方式登录BBS](https://zh.wikipedia.org/wiki/SSH "wikilink")（从3.3.0版本开始）；支持鼠标操作；支持图片URL自动识别下载浏览；支持自定义老板键（FTerm不支持）；不支持Zmodem，不能直接上传附件（FTerm支持）；支持自动登录；支持[socks 4](https://zh.wikipedia.org/wiki/socks_4 "wikilink")、[socks 5](https://zh.wikipedia.org/wiki/socks_5 "wikilink")、[http](https://zh.wikipedia.org/wiki/http "wikilink")、[telnet类型代理](https://zh.wikipedia.org/wiki/telnet "wikilink")；与FTerm和[Sterm相比](https://zh.wikipedia.org/wiki/Sterm "wikilink")，更新速度快。因为FTerm很早就支持SSH登录BBS，安全性比telnet强，所以FTerm在BBS中非常流行，现在CTerm也正变得越来越流行。

## 发展历史

原作者陈琦（Clayman是其在[白云黄鹤BBS](../Page/白云黄鹤BBS.md "wikilink")的ID）在1997年开始制作此软件时是[华中理工大学](../Page/华中理工大学.md "wikilink")（现[华中科技大学](../Page/华中科技大学.md "wikilink")）的[研究生](../Page/研究生.md "wikilink")。1997年－1999年发行了多个[版本](https://zh.wikipedia.org/wiki/版本 "wikilink")，得到了广泛的欢迎和使用。1999年下半年得到了[易得方舟公司的资助](https://zh.wikipedia.org/wiki/易得方舟 "wikilink")，1999年年底发布了Cterm 2000，这是一个得到最广泛使用的[版本](https://zh.wikipedia.org/wiki/版本 "wikilink")。

作者于此时开始制作新版本V3.0，计划全部重写代码。但是[易得方舟公司于](https://zh.wikipedia.org/wiki/易得方舟 "wikilink")2000年倒闭。作者此时发布的V3.0虽然增加了很多新特性，但是仍然充满了[Bug](https://zh.wikipedia.org/wiki/Bug "wikilink")，未得到用户的广泛使用。而此时作者又是[研究生](../Page/研究生.md "wikilink")[毕业了](https://zh.wikipedia.org/wiki/毕业 "wikilink")，没有时间和精力继续开发。陈琦曾与Dian合作出版了一本介绍BBS和Cterm的书：《BBS与Cterm问答精粹》\[1\]。

第二任作者Flier Lu（小海）是[华中师范大学](../Page/华中师范大学.md "wikilink")[计算机系](https://zh.wikipedia.org/wiki/计算机系 "wikilink")1997级学生。2001年上半年Flier接手开发工作，当年5月发布了Cterm III（得到Fanso[易得方舟公司的赞助](https://zh.wikipedia.org/wiki/易得方舟 "wikilink")）。做了大量的改进工作。但是发行的版本仍然不大稳定，未得到用户支持。Flier Lu于2002年停止了开发工作。

第三任作者Bat Li于2003年12月接手了CTerm的开发工作，并于2004年起陆续推出了新版本。2004年4月另一位新作者Nullspace加入了开发工作。2004年7月发行的V3.1是复出后第一个稳定的发行版本。

## 版本特性

CTerm至现在为止，虽然不支持[Zmodem](https://zh.wikipedia.org/wiki/Zmodem "wikilink")（term附件上传）等功能，但与[Fterm和](https://zh.wikipedia.org/wiki/Fterm "wikilink")[Sterm等同类软件相比也非常流行](https://zh.wikipedia.org/wiki/Sterm "wikilink")。CTerm更新速度比较快，从3.300版开始，CTerm已经通过[PuTTY](../Page/PuTTY.md "wikilink")的plink实现了[SSH登录BBS功能](https://zh.wikipedia.org/wiki/SSH "wikilink")。同时支持socks 4、socks 5、http、telnet类型代理连接，并且速度非常快，因而亦得到了用户的广泛支持。

主要特点有：

  - 引入了“最喜爱的站点”功能，只要在地址簿设置好，以后就可以方便快捷地连接这些最喜爱的[站点](https://zh.wikipedia.org/wiki/站点 "wikilink")。（启动页面直接点击就可以连接，按Alt+1\~5也可以连接）。
  - 可以自定义老板键，Fterm目前还不支持老板键。
  - 支持自动登录，甚至自动穿梭登录。
  - 图片URL自动识别并下载浏览。
  - 有大量的快捷键，在右手使用鼠标的时候可以使用左手操作一批Alt键为主的[快捷键](../Page/快捷键.md "wikilink")。
  - CTerm支持[鼠标](../Page/鼠标.md "wikilink")点击版面上方的功能按钮及文章末尾的“同主题阅读”（[Fterm和](https://zh.wikipedia.org/wiki/Fterm "wikilink")[Sterm不支持](https://zh.wikipedia.org/wiki/Sterm "wikilink")）\[2\]，可以把BBS页面上的“发表文章”等功能识别为URL而点击使用。
  - 通过增强的F5-F8[快捷键](../Page/快捷键.md "wikilink")功能，简化了文章发表、回复、写完发表、快速发文等操作。
  - URL识别功能很强，可以识别含有[中文的](https://zh.wikipedia.org/wiki/中文 "wikilink")[URL和折行](https://zh.wikipedia.org/wiki/URL "wikilink")[URL](https://zh.wikipedia.org/wiki/URL "wikilink")（[Fterm](https://zh.wikipedia.org/wiki/Fterm "wikilink")、[Sterm和](https://zh.wikipedia.org/wiki/Sterm "wikilink")[PCMan](../Page/PCMan.md "wikilink")不支持）\[3\]，可以把选中文字作为[URL打开](https://zh.wikipedia.org/wiki/URL "wikilink")。
  - 有单篇文章[下载](../Page/下载.md "wikilink")、讨论区批量文章[下载](../Page/下载.md "wikilink")、精华区文章全部下载等特殊功能。
  - 由于CTerm原创作者是[白云黄鹤站的](https://zh.wikipedia.org/wiki/白云黄鹤站 "wikilink")[网友](https://zh.wikipedia.org/wiki/网友 "wikilink")，CTerm在版面内按F5键发表文章时，弹出的对话框中有一个“上传附件”按钮，是专供在[白云黄鹤站中上传](https://zh.wikipedia.org/wiki/白云黄鹤站 "wikilink")[附件用的](https://zh.wikipedia.org/wiki/附件 "wikilink")。\[4\]
  - Cterm在处理“[Ptt BBS](https://zh.wikipedia.org/wiki/Ptt_BBS "wikilink")”软件架设的BBS时，会出现[鼠标](../Page/鼠标.md "wikilink")失灵的现象。\[5\]

## 参见

  - [FTerm](../Page/FTerm.md "wikilink")
  - [STerm](https://zh.wikipedia.org/wiki/STerm "wikilink")
  - [Qterm](https://zh.wikipedia.org/wiki/Qterm "wikilink")

## 外部链接

  - [CTerm主页](http://cterm.phy.ccnu.edu.cn/)
  - [CTerm详细开发历史和更新说明](https://web.archive.org/web/20080828202814/http://cterm.phy.ccnu.edu.cn/history.txt)
  - [CTerm在Google Groups的页面，包含一些最新的build](http://groups.google.com/group/cterm)
  - [CTerm在百度空间的页面，包含一些最新的build，方便无法访问Google Groups的用户](http://hi.baidu.com/cterm3)

## 参考文献

[Category:终端软件](https://zh.wikipedia.org/wiki/Category:终端软件 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")

1.
2.
3.
4.
5.