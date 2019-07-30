**DOT语言**是一种文本[图形描述语言](https://zh.wikipedia.org/wiki/图 "wikilink")。它提供了一种简单的描述图形的方法，并且可以为人类和[计算机程序所理解](https://zh.wikipedia.org/wiki/计算机 "wikilink")。DOT语言文件通常是具有*.gv*或是*.dot*的[文件扩展名](../Page/文件扩展名.md "wikilink")。

很多程序都可以处理DOT文件。其中的一些，例如*dot*，*neato*，*twopi*，*circo*, *fdp*与*sfdp*，会读取DOT文件并将之渲染成为图形格式。其它的一些，比如*gvpr*，*gc*，*accyclic*，*ccomps*，*sccmap*和*tred*，可以读取DOT文件并对它代表的图形进行一些处理。类似于*GVedit*，*lefty*，*dotty*和*grappa*则提供了交互式的界面。以上程序大部分都包括在了[Graphviz](../Page/Graphviz.md "wikilink")软件包中。

## 语法

### 图形类别

#### 无向图

[DotLanguageUndirected.svg](https://zh.wikipedia.org/wiki/File:DotLanguageUndirected.svg "fig:DotLanguageUndirected.svg") 在最简单的应用中，DOT语言可以用来描述一张[无向图](https://zh.wikipedia.org/wiki/图_\(数学\)#有/无_向图 "wikilink")。无向图显示了对象间最简单的关系，例如人之间的友谊。使用关键字*graph*开始一张无向图的定义，并用大括号包含要描述的节点，双连字号（--）被用来描述节点间的关系。另外，一行的末尾需要加上分号（;）。

``` mscgen

 graph graphname {
     a -- b -- c;
     b -- d;
 }
```

#### 有向图

[DotLanguageDirected.svg](https://zh.wikipedia.org/wiki/File:DotLanguageDirected.svg "fig:DotLanguageDirected.svg") 类似于无向图，DOT语言也可以用来描述一张[有向图](https://zh.wikipedia.org/wiki/图_\(数学\)#有/无_向图 "wikilink")，类似于[流程图](../Page/流程图.md "wikilink")和[树状图](../Page/树_\(图论\).md "wikilink")。其语法与无向图相似，但要在图的最开始使用关键字'digraph'，并用箭头（-\>）表示节点直接的关系。

``` mscgen
 digraph graphname {
     外网< - 青山 - 青秀
     青山 - 五象;
 }
```

### 属性

[DotLanguageAttributes.svg](https://zh.wikipedia.org/wiki/File:DotLanguageAttributes.svg "fig:DotLanguageAttributes.svg") DOT语言中，可以对节点和边添加不同的属性。这些属性可以控制节点和边的显示样式，例如颜色，形状和线形。可以在语句和句尾的分号间放置一对方括号，并在其中中放置一个或多个[属性-值对](https://zh.wikipedia.org/wiki/键-值对 "wikilink")。多个属性可以被逗号和空格（, ）分开。节点的属性被放置在只包含节点名称的表达式后。

``` mscgen
 graph graphname {
     // label属性可以改变节点的显示名称
     a [label="Foo"];
     // 节点形状被改变了
     b [shape=box];
     // a-b边和b-c边有相同的属性
     a -- b -- c [color=blue];
     b -- d [style=dotted];
 }
```

### 注释

DOT语言支持[C语言与](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C++](../Page/C++.md "wikilink")风格的单行与多行[注释](../Page/注释_\(计算机语言\).md "wikilink")。另外，也支持[Shell脚本](../Page/Shell脚本.md "wikilink")风格的以\#开头的注释。

``` mscgen
 // 单行注释
 /* 多行
    注
    释 */
 # 如此的行也会被忽略。
```

## 一个简单的例子

以下是一个描述了[乙烷](../Page/乙烷.md "wikilink")化学键结构的示例脚本。这是一个无向图，包括了上述解释的节点属性。

``` mscgen
 graph ethane {
     C_0 -- H_0 [type=s];
     C_0 -- H_1 [type=s];
     C_0 -- H_2 [type=s];
     C_0 -- C_1 [type=s];
     C_1 -- H_3 [type=s];
     C_1 -- H_4 [type=s];
     C_1 -- H_5 [type=s];
 }
```

## 支持的程序

DOT语言定义了图，但没有提供渲染图的工具。这里列出了一些可以用来渲染，查看与修改DOT图的程序：

  - [Graphviz](../Page/Graphviz.md "wikilink") - 一组用来修改和渲染图的软件库和程序。
  - [OmniGraffle](../Page/OmniGraffle.md "wikilink") 可以导入DOT语言的一个子集，生成一个可编辑的文档，但转换结果不能被导出成为DOT文件。

## 限制

[thumb](https://zh.wikipedia.org/wiki/image:Commutative_diagram_bad.svg "wikilink") 可以用DOT定义图形的位置细节，虽然不是所有实现了DOT语言的工具都可以适当的处理位置属性。因此，取决于所使用的工具，用户必须依赖于自动布局算法（可能造成非预期的输出）或者繁琐的手工布局节点属性。

例如：

``` mscgen
digraph g {
    node [shape=plaintext]
    A1 -> B1
    A2 -> B2
    A3 -> B3

    A1 -> A2 [label=f]
    A2 -> A3 [label=g]
    B2 -> B3 [label="g'"]
    B1 -> B3 [label="(g o f)'" tailport=s headport=s]

    { rank=same; A1 A2 A3 }
    { rank=same; B1 B2 B3 }
}
```

[thumb](https://zh.wikipedia.org/wiki/image:commutative_diagram_fixed.svg "wikilink") 上图有两个问题。右边的方形不是完美的[正方形](../Page/正方形.md "wikilink")，而且标签*(g o f)*的位置有问题。

这些问题可以用[Inkscape](../Page/Inkscape.md "wikilink")或其它的[SVG编辑器修正](https://zh.wikipedia.org/wiki/SVG "wikilink")。在某些情况下，也可以利用*pos*属性定义位置来修正这样的问题。

## 参见

  - [Graphviz](../Page/Graphviz.md "wikilink")
  - [图](https://zh.wikipedia.org/wiki/图 "wikilink")
  - [lisp2dot](https://zh.wikipedia.org/wiki/lisp2dot "wikilink") 将类似[Lisp的程序树转换成DOT语言](https://zh.wikipedia.org/wiki/Lisp "wikilink")，可以用于[遗传编程](../Page/遗传编程.md "wikilink")。

## 外部链接

  - [DOT语言入门和特性](http://www.graphviz.org/Documentation.php)
  - [示例画廊](http://www.graphviz.org/Gallery.php)
  - [图形示范](http://bloodgate.com/graph-demo)
  - [Boost Graph Library](http://www.boost.org/libs/graph/doc/index.html)
  - [Grappa Drawing Package](http://www.research.att.com/~john/Grappa/)
  - [在线SVG, PNG, GIF, JPG图形发布器](https://web.archive.org/web/20100420000948/http://graph.gafol.net/)

[Category:数学软件](https://zh.wikipedia.org/wiki/Category:数学软件 "wikilink") [Category:图形描述语言](https://zh.wikipedia.org/wiki/Category:图形描述语言 "wikilink") [Category:计算机语言](https://zh.wikipedia.org/wiki/Category:计算机语言 "wikilink") [Category:计算机语言列表](https://zh.wikipedia.org/wiki/Category:计算机语言列表 "wikilink") [Category:计算机程序库](https://zh.wikipedia.org/wiki/Category:计算机程序库 "wikilink")