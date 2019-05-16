**MathJax**是一个[跨浏览器的](../Page/浏览器兼容性.md "wikilink")[JavaScript库](https://zh.wikipedia.org/wiki/JavaScript库 "wikilink")，它使用[MathML](https://zh.wikipedia.org/wiki/MathML "wikilink")、[LaTeX和ASCIIMathML标记在](https://zh.wikipedia.org/wiki/LaTeX "wikilink")[Web浏览器中显示](https://zh.wikipedia.org/wiki/Web浏览器 "wikilink")[数学符号](../Page/數學符號.md "wikilink")。\[1\]\[2\]\[3\]MathJax是在[Apache许可证下作为](../Page/Apache许可证.md "wikilink")[开源软件发布的](../Page/开源软件.md "wikilink")。

MathJax项目始于2009年，是早期JavaScript数学格式化库jsMath的继承者，\[4\]由[美国数学学会管理](https://zh.wikipedia.org/wiki/美国数学学会 "wikilink")。\[5\]该项目由美国数学学会、设计科学学会、工业和应用数学学会共同发起，并得到[美国物理联合会和](https://zh.wikipedia.org/wiki/美国物理联合会 "wikilink")[Stack
Exchange等众多资助机构的支持](../Page/Stack_Exchange.md "wikilink")。\[6\]

MathJax被[arXiv](https://zh.wikipedia.org/wiki/arXiv "wikilink")\[7\]、[爱思唯尔的](../Page/愛思唯爾.md "wikilink")[ScienceDirect](https://zh.wikipedia.org/wiki/ScienceDirect "wikilink")\[8\]、MathSciNet\[9\]、n-category
cafe、[MathOverflow](../Page/MathOverflow.md "wikilink")、[维基百科](../Page/维基百科.md "wikilink")（在后台）\[10\]\[11\]、[Scholarpedia](../Page/Scholarpedia.md "wikilink")、Project
Euclid期刊\[12\]、[IEEE
Xplore](https://zh.wikipedia.org/wiki/IEEE_Xplore "wikilink")\[13\]、Publons、[Coursera和全俄数学门户网站等网站使用](../Page/Coursera.md "wikilink")。\[14\]

## 特性

MathJax下载网页内容，扫描页面内容寻找等式标记，并对数学进行排版。因此，MathJax不需要在阅读器系统上安装软件或额外的[字体](../Page/字体.md "wikilink")。这允许MathJax在任何支持JavaScript的浏览器中运行，包括移动设备。\[15\]

MathJax可以使用[HTML和](../Page/HTML.md "wikilink")[CSS的组合显示数学](https://zh.wikipedia.org/wiki/CSS "wikilink")，或者在可用时使用浏览器的原生MathML支持。MathJax用于排版数学的确切方法取决于用户浏览器的功能、用户系统上可用的字体和配置设置。MathJax
v2.0-beta版引入了[SVG渲染](https://zh.wikipedia.org/wiki/SVG "wikilink")。\[16\]

在HTML和CSS排版的情况下，MathJax通过使用数学字体（如果有的话）和使用旧浏览器的图像来最大化数学显示质量。对于支持Web字体的新浏览器，MathJax提供了一组全面的Web字体，可以根据需要下载。如果浏览器不支持Web字体，MathJax将检查用户系统上是否有有效的字体。如果这不起作用，MathJax将提供所需符号的图像。可以配置MathJax来启用或禁用Web字体、本地字体和图像字体。

MathJax使用STIX字体在Web页面中包含数学。在本地计算机上安装字体可以提高MathJax的排版速度。\[17\]

MathJax可以显示用[LaTeX或MathML标记编写的数学符号](https://zh.wikipedia.org/wiki/LaTeX "wikilink")。因为MathJax只用于数学显示，而LaTeX是一种文档布局语言，所以MathJax只支持用于描述数学表示法的LaTeX子集。\[18\]

MathJax还通过其API将MathML公开给[辅助技术软件](../Page/輔助技術.md "wikilink")，以及基本的WAI-ARIA“角色”和更老的“altext”属性，从而支持数学可访问性。\[19\]

MathJax体系结构旨在通过动态加载的模块支持在将来添加输入语言和显示方法。MathJax还包括一个JavaScript
API，用于枚举页面中的数学实例并与之交互。

## 浏览器兼容性

MathJax在大多数流行的浏览器中呈现数学，包括[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")
6+、[Firefox](../Page/Firefox.md "wikilink") 3+、[Google
Chrome](../Page/Google_Chrome.md "wikilink")
0.3+、[Safari](../Page/Safari.md "wikilink")
2.0+、[Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")
9.5+、[iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")/[iPad](https://zh.wikipedia.org/wiki/iPad "wikilink")
Safari和[Android浏览器](../Page/Android.md "wikilink")。一些旧版本的浏览器不支持Web字体（使用@font-face
CSS结构），因此它们必须使用MathJax图像字体模式。浏览器兼容性列表可以在官方网站上找到。\[20\]

## 插件支持

MathJax可以很容易地添加到许多流行的Web平台上。\[21\]

## Node.js

MathJax可以通过MathJax-node库在NodeJS中使用\[22\]

## 公式编辑器的兼容性

在受支持的浏览器中显示的任何MathJax公式，都可以通过右键单击或控件单击“Show Math
as”子菜单，以MathML或LaTeX格式复制出来。然后，它可以粘贴到任何支持MathML或LaTeX的[公式编辑器中](../Page/公式編輯器.md "wikilink")，例如[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")、[MathType](../Page/MathType.md "wikilink")、MathMagic、Firemath，以便重用。\[23\]

任何第三方公式编辑器以MathML或LaTeX格式生成的方程都可以在支持MathJax的Web页面中使用。

## TeX支持

MathJax复制LaTeX的数学环境命令。通过扩展支持AMS-LaTeX数学命令。MathJax还支持TeX宏和其他格式，比如\\color和\\underline。\[24\]

## MathML支持

MathJax在beta 2版本中增加了对MathML 2.0和一些MathML
3.0构造的部分支持。MathJax支持演示MathML，并且从2.2版开始提供了对内容MathML的实验性支持。\[25\]

## CDN服务器

MathJax站点提供了一个内容分发网络（CDN），其中，浏览器可以在运行时从CDN加载MathJax工作所需的JavaScript。这简化了安装，并确保始终使用库的最新版本。随着时间的推移，服务器的使用从2011年的每月1.3TB流量增长到2017年的每月70TB流量。由于服务器托管成本增加，主CDN服务器于2017年4月底关闭。备用第三方CDN服务器可用。\[26\]

## 另请参阅

  - 类别:符号字体
  - Google Chart API
  - [KaTeX](https://zh.wikipedia.org/wiki/KaTeX "wikilink")

## 参考文献

## 外部链接

  -
  - MediaWiki扩展：

      - [SimpleMathJax](https://zh.wikipedia.org/wiki/mw:Extension:SimpleMathJax "wikilink")
      - [MathJax](https://zh.wikipedia.org/wiki/mw:Extension:MathJax "wikilink")

[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink")
[Category:自由數學軟件](https://zh.wikipedia.org/wiki/Category:自由數學軟件 "wikilink")

1.

2.

3.

4.  .

5.

6.

7.

8.

9.

10.

11.

12.

13. [New features in IEEE
    Xplore](http://ieeexplore.ieee.org/Xplorehelp/#/resources/newFeatures),
    retrieved 2015-04-20.

14.

15.

16.

17. [MathJax Font Help](http://www.mathjax.org/help/fonts/)  accessed
    2012-08-14.

18.
19.

20.

21.

22.

23.

24.

25.

26.