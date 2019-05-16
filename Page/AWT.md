[Easy_Java_AWT_example.jpg](https://zh.wikipedia.org/wiki/File:Easy_Java_AWT_example.jpg "fig:Easy_Java_AWT_example.jpg")

**抽象視窗工具組**（**A**bstract **W**indow
**T**oolkit=**AWT**）是[Java的平台獨立的](../Page/Java.md "wikilink")[視窗系統](../Page/視窗系統.md "wikilink")，
[圖形和](https://zh.wikipedia.org/wiki/圖形 "wikilink")[使用者介面](https://zh.wikipedia.org/wiki/使用者介面 "wikilink")[器件工具包](https://zh.wikipedia.org/wiki/器件工具包 "wikilink")。AWT是[Java基礎類](https://zh.wikipedia.org/wiki/JFC "wikilink")（JFC）的一部分，為Java程序提供[圖形使用者介面](https://zh.wikipedia.org/wiki/圖形使用者介面 "wikilink")（GUI）的標準[API](https://zh.wikipedia.org/wiki/API "wikilink")。

## 特性

Java釋出的时候，AWT作为Java最弱的组件受到不小的批评。最根本的缺点是AWT在原生的用户界面之上仅提供了一个非常薄的抽象层。例如，生成一个AWT的[复选框会导致AWT直接调用下层原生例程来生成一个复选框](https://zh.wikipedia.org/wiki/复选框 "wikilink")。不幸的是，一个Windows平台上的复选框同MacOS平台或者各种UNIX风格平台上的复选框并不是那么相同。

这种糟糕的设计选择使得那些拥护Java“一次编写，到处运行（write once, run
everywhere）”信条的程序员们过得并不舒畅，因为AWT并不能保证他们的应用在各种平台上表现得有多相似。一个AWT应用可能在Windows上表现很好可是到了Macintosh上几乎不能使用，或者正好相反。在90年代，程序员中流传着一个笑话：Java的真正信条是“一次编写，到处测试（write
once, test everywhere）”。导致这种糟糕局面的一个可能原因据说是AWT从概念产生到完成实现只用了一个月。

在第二版的[Java开发包中](../Page/JDK.md "wikilink")，AWT的器件很大程度上被[Swing工具包替代](../Page/Swing_\(Java\).md "wikilink")。Swing通过自己绘制器件而避免了AWT的种种弊端：Swing调用本地图形子系统中的底层例程，而不是依赖操作系统的高层用户界面模块。

## 外部链接

  - [AWT homepage](http://java.sun.com/products/jdk/awt/)

  - (AWT [Javadoc](https://zh.wikipedia.org/wiki/Javadoc "wikilink") API
    documentation)

  -
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")