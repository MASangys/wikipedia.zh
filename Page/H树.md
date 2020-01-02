> 本文内容由[H树](https://zh.wikipedia.org/wiki/H树)转换而来。


[H_tree.svg](https://zh.wikipedia.org/wiki/File:H_tree.svg "fig:H_tree.svg") 在[分形几何中](https://zh.wikipedia.org/wiki/分形几何 "wikilink")，**H树**是一种[分形](../Page/分形.md "wikilink")树结构，由互相[垂直](../Page/垂直.md "wikilink")的[线段](../Page/线段.md "wikilink")构成，其中任意一条线段的长度都是次一级线段的[\(\sqrt{2}\)倍](https://zh.wikipedia.org/wiki/2的平方根 "wikilink")。它因类似于字母“H”的重复图案而得名。它的[豪斯多夫维数](../Page/豪斯多夫维数.md "wikilink")为2，能任意接近[矩形](../Page/矩形.md "wikilink")中的每一点。其应用包括[超大规模集成电路](../Page/超大规模集成电路.md "wikilink")设计和微波工程。

## 构造

H树可从任意长度的[线段](../Page/线段.md "wikilink")开始构造，首先在该线段的两个端点作出两条垂线，如此反复，同时将每级绘制的线段长度缩短[\(\sqrt{2}\)倍](https://zh.wikipedia.org/wiki/2的平方根 "wikilink")。\[1\]

另一种生成相同分形集的方法是从一个边长比为1\[\sqrt{2}\]的矩形（称为“银矩形”）开始，将其重复平分为两个较小的银矩形，每级中用线段连接两个较小矩形的[几何中心](../Page/几何中心.md "wikilink")。可以在其他任意形状的矩形中进行类似的过程，但在银矩形中，每级线段长度以\(\sqrt{2}\)倍均匀减小，而对于其他矩形，长度会以奇偶交替的方式以不同的倍率减小。

## 性质

**H树**是[自相似的](https://zh.wikipedia.org/wiki/自相似 "wikilink")[分形](../Page/分形.md "wikilink")；其[豪斯多夫维数](../Page/豪斯多夫维数.md "wikilink")为2。

H树的节点能任意接近[矩形](../Page/矩形.md "wikilink")中的每一点（划分出的矩形的质心对于用于构建的原矩形也一样）。然而，其并不包括矩形内的所有点，如初始线段的垂直平分线。

## 应用

在[超大规模集成电路](../Page/超大规模集成电路.md "wikilink")的设计中，H树可以作为[完全二叉树布局](https://zh.wikipedia.org/wiki/完全二叉树 "wikilink")，其总使用面积与树节点的数目成正比。此外在[图表绘制中](https://zh.wikipedia.org/wiki/图表绘制 "wikilink")，H树布局能节省空间，可作为点集结构的一部分。

它通常用于[时钟分配网络](https://zh.wikipedia.org/wiki/时钟分配网络 "wikilink")，以将[时钟信号路由至芯片各处](../Page/定時器訊號.md "wikilink")，而传播延迟相同\[2\]，还用作[VLSI多处理器中的互连网络](https://zh.wikipedia.org/wiki/VLSI "wikilink")\[3\]。出于同样的原因，H树还用于[微带天线阵列的排布上](https://zh.wikipedia.org/wiki/微带天线 "wikilink")，以使每个独立的微带天线获得的无线信号有相等的传播延迟。

平面H树可以经由在H树平面垂直方向添加线段而推广到三维结构\[4\]。所得三维H树的[豪斯多夫维数](../Page/豪斯多夫维数.md "wikilink")为3。已经发现光子晶体和超材料中的人造电磁原子构成了平面及立体H树的结构，还可能在微波工程中有潜在应用\[5\]。

## 有关分形集

H树是[分形冠的一个例子](https://zh.wikipedia.org/wiki/分形冠 "wikilink")，其中相邻线段所成角始终为180度。就其能任意接近边界矩形中每个点的性质而言，它又像是一条[空间填充曲线](https://zh.wikipedia.org/wiki/空间填充曲线 "wikilink")，虽然它本身并不是一条曲线。

[拓扑学](../Page/拓扑学.md "wikilink")上，H树有类似于树枝状的性质。但它并不是[枝状的](https://zh.wikipedia.org/wiki/枝状 "wikilink")：枝状必须为[闭集](../Page/闭集.md "wikilink")，而H树未封闭（其闭包为整个矩形）。

曼德尔布罗树是一个与之密切相关的分形，它使用矩形而不是线段，且与H树的位置略有偏差，以使外观更自然。为了抵偿部件宽度的增加，避免自重叠，每级部件的缩小倍数必须比\(\sqrt{2}\)稍大。\[6\]

## 注

## 参考

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

## 扩展阅读

  - .

  - .

## 外部链接

  - [Famous Fractals - H-fractal](https://web.archive.org/web/20070422002310/http://library.thinkquest.org/26242/full/fm/fm13.html)

  -
  - [活动H-分形（含Java小程序）](http://www.josechu.com/moving_fractal/index.htm)

[Category:分形](https://zh.wikipedia.org/wiki/Category:分形 "wikilink") [Category:树结构](https://zh.wikipedia.org/wiki/Category:树结构 "wikilink") [Category:时钟信号](https://zh.wikipedia.org/wiki/Category:时钟信号 "wikilink")

1.  [H-Fractal](http://demonstrations.wolfram.com/HFractal/), Sándor Kabai, [The Wolfram Demonstrations Project](https://zh.wikipedia.org/wiki/The_Wolfram_Demonstrations_Project "wikilink").
2.  ; .
3.  . See especially Figure 1.1.5, page 15.
4.  ; .
5.
6.