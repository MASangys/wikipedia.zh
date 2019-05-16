[Remi_turtlegrafik.png](https://zh.wikipedia.org/wiki/File:Remi_turtlegrafik.png "fig:Remi_turtlegrafik.png")

**Logo**是一种计算机[程式设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，在1966年由[西摩爾·派普特和Wally](../Page/西摩爾·派普特.md "wikilink")
Feurzeig设计，设计Logo的初衷是为了向儿童教授[计算机编程技能](https://zh.wikipedia.org/wiki/计算机编程 "wikilink")。Logo一词源自希腊语[邏各斯](../Page/邏各斯.md "wikilink")（logos）。

Logo的原型来自另一个计算机语言[LISP](../Page/LISP.md "wikilink")，派普特修改了LISP的语法使其更易于阅读。Logo常被称作没有括号的Lisp。

Logo是一种[直譯語言](https://zh.wikipedia.org/wiki/直譯語言 "wikilink")，和其他语言不同的是，它内置一套海龟绘图（Turtle
Graphics）系统，通过向海龟发送命令，用户可以直观地学习程序的运行过程，因此很适于儿童学习。它亦適合用作[數學教學](https://zh.wikipedia.org/wiki/數學 "wikilink")。

Logo继承了Lisp的「表」的概念，所以在函数处理等方面拥有强大的能力，因此Logo不仅是初学者学习程序设计的良药，更是有特殊需求的计算机科学家的好帮手。

## 海龟绘图

海龟绘图使得Logo用户可以通过简单的编程创作出丰富多彩的视觉效果或图案。假想一只带着画笔的海龟可以接受简单的命令，例如向前走100步，或者左转30度。通过对这只海龟发送命令，可以让它绘制出较为复杂的图形，例如正方形，三角形，圆等。

海龟的移动相对于它本身所在的位置。例如，命令"左90"意味着让海龟左转90度，学生可以站在海龟的角度来思考它将如何执行命令，这使得程序设计更加形象化，也更易于理解。

## 程式实例

初学者可以不需要任何程式设计的知识而直接向海龟发送命令。学习海龟作图将会让用户懂得一些关于[几何学方面的知识](../Page/几何学.md "wikilink")。而一旦掌握了海龟作图的基础之后，引入程式设计的概念也变得更加容易。下面看一些例子：
FD是前进 LT是左转 画一个正方形

`FD 100`
`LT 90`
`FD 100`
`LT 90`
`FD 100`
`LT 90`
`FD 100`
`LT 90`

由于输入的语句都是重复的，可以用重复语句简化为：

`REPEAT 4 [FD 100 LEFT 90]`

上面两段程序得到的结果相同，由于第一个程式几乎都是重复代码，因此我们用『REPEAT』让Logo重复同样的命令4次，同时还使用了命令的缩写。为了重复使用上述代码，我们可以用『TO...END』定义过程：

`TO CHAIR `
`REPEAT 4 [FD 100 RT 90] FD 200 `
`END`

一旦定义了『CHAIR』过程，就可以直接使用调用它得到结果，为了使得这个过程更加通用化，我们传递一个边长参数：

`TO CHAIR :long`
`   REPEAT 4 [FD :long RT 90]`
`   FD :long*2`
`END`
`CHAIR 100`

从简单地发送绘图命令，到定义一个通用的绘制多边形的过程，用户不但掌握了程序设计上的一些基本思想（传递参数、重复等），而且对几何学上正多边形的理解也加深了。

## 多代理建模语言

Logo的方言NetLogo、StarLogo进一步深化了Logo的海龟绘图概念，可以产生出成百上千个独立的海龟（被称为代理）来模拟诸如[物理](https://zh.wikipedia.org/wiki/物理 "wikilink")、[生物或](../Page/生物.md "wikilink")[社会等复杂系统](../Page/社会.md "wikilink")。建模者可以对众多海龟并行发送指令，来观察微观个体行为与个体之间相互影响产生的宏观样式之间的联系。

## LOGO直譯器列表

  - [Turtleacademy](http://turtleacademy.com/index/zh)又叫海龟学院，免费学编程。
  - [Berkeley
    Logo](http://www.cs.berkeley.edu/~bh/logo.html)又叫UCBLogo，用[C寫成](../Page/C.md "wikilink")，可運行於多個平台。
  - [MSWLogo](http://www.softronix.com/logo.html)有良好的GUI、詳盡的說明文件，運行於Windows，建基於Berkeley
    Logo，由Borland [C++寫成](../Page/C++.md "wikilink")。它支援三維圖像、聲響、鍵盤等多個功能。
  - [StarLogo](https://web.archive.org/web/20061115214729/http://education.mit.edu/starlogo/)
  - [NetLogo](http://ccl.northwestern.edu/netlogo/)
  - [Comenius
    Logo](https://web.archive.org/web/20040603134510/http://www.input.sk/slogo/)
  - [rLogo](http://www.embry.com/rLogo/)可於瀏覽器上執行（需[Java](../Page/Java.md "wikilink")）
  - [CLogo](https://archive.is/20121222033208/http://plum.yuntech.edu.tw/Clogo/index.html)可用中文為指令（需要[Java](../Page/Java.md "wikilink")）
  - [Galapago](http://www.hexidec.com/galapago.php)用[Java寫成](../Page/Java.md "wikilink")
  - [ProLOGO](http://prologo.sourceforge.net/)用[Prolog寫成](../Page/Prolog.md "wikilink")，可用意大利語為指令
  - [PyLogo](http://pylogo.sourceforge.net/)用[Python寫成](../Page/Python.md "wikilink")
  - [SharpLOGO](https://web.archive.org/web/20040727125525/http://sharplogo.sourceforge.net/)用[C\#寫成](../Page/C♯.md "wikilink")
  - [XLogo](http://xlogo.sourceforge.net/)用[Objective-C寫成](../Page/Objective-C.md "wikilink")，運行於Mac
  - [Logo++](http://clpp.sourceforge.net/)可說是一種精簡化的Logo，主要的分別在於沒有了Logo的即時回應（interactive）、去掉了不少語法。
  - 更多資料可見於PyLogo網站中的[Other
    Logos](https://web.archive.org/web/20040809213824/http://pylogo.org/PyLogo.html#other-logos)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")