`  `

**ggplot2**是[R的一个](../Page/R语言.md "wikilink")[数据可视化绘图包](../Page/数据可视化.md "wikilink")。ggplot2由在2005年创造。它具现了所著《图标的语法
— 一个数据可视化通用框架》（*Grammar of Graphics* — a general scheme for data
visualization）中将图形分解为语素（如尺度、图层）的思想。ggplot2可以作为R语言基础绘图包的替代，同时ggplot2预设有多种印刷及网页尺寸。自2005年以来，ggplot2已经发展成为最受欢迎的R包之一。\[1\]\[2\]

## 更新

ggplot2在2012年3月2日发布了0.9.0版本。本次更新提供了内部组织、尺度构建和图层等方面的众多更新。\[3\]

2014年2月25日，Hadley
Wickham正式宣布「ggplot2正转至维护模式。意味着ggplot2不会再添加新的功能，不过我们会继续修复重要故障，并考虑增加由推送请求新提交的特性。为纪念这显著的里程碑，ggplot2的下一个版本将会是1.0.0」。\[4\]

ggplot2在2015年12月21日发布了2.0.0版本。在版本公告中宣布了“ggplot2现在拥有官方扩展机制。这表示其他人现在可以轻松创造他们的统计方式、几何图形和位置方案，并在其他包中提供”。\[5\]

## 同其他绘图包的比较

较R基础绘图包而言，ggplot2允许用户在更抽象的层面上增加、删除或转换图表中的元素。\[6\] 这种抽象化的代价是执行速度。ggplot2
较 lattice 绘图包而言更耗时。\[7\]

R基础绘图包使用“纸笔模型”占据绘图设备产生了一个潜在的限制：解释器产生的不同图表元素的图形输出直接添加到绘图设备上，而不是分别添加。
\[8\]\[9\]在这个层面上，它同lattice包是相似的。相对的，Wickham声称ggplot2继承了更多威尔金森的图形规范化模型\[10\]正如此，ggplot2允许绘图更加的模块化：相同的内部数据可以转化为很多不同的尺寸及图层。\[11\]\[12\]

`qplot()`函数的变量及预设同基础绘图函数`plot()` 较为相似，可以方便地绘制基础图表。\[13\]\[14\]
`ggplot()`函数将语法元素直接暴露给用户，可以绘制更加复杂的图表\[15\]。

## 相关项目

  - ggplot for Python\[16\]
  - Plotly - 在线交互 ggplot2 绘图站\[17\]
  - gramm，一个由 ggplot2 提供灵感的 Matlab 绘图工具\[18\]

## 参考文献

## 延伸阅读

  -
  -
## 外部链接

  - [ggplot2](http://ggplot2.org/index.html) 实例与文档
  - [ggplot2](https://github.com/hadley/ggplot2)
    [GitHub上的项目](../Page/GitHub.md "wikilink")

{{-}}

[Category:自由R语言软件](https://zh.wikipedia.org/wiki/Category:自由R语言软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由圖表軟件](https://zh.wikipedia.org/wiki/Category:自由圖表軟件 "wikilink")
[Category:自由数据可视化软件](https://zh.wikipedia.org/wiki/Category:自由数据可视化软件 "wikilink")

1.

2.

3.

4.
5.   RStudio
    Blog|url=[http://blog.rstudio.org/2015/12/21/ggplot2-2-0-0|website=blog.rstudio.org|accessdate=2017-10-21|language=en-us](http://blog.rstudio.org/2015/12/21/ggplot2-2-0-0%7Cwebsite=blog.rstudio.org%7Caccessdate=2017-10-21%7Clanguage=en-us)}}

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