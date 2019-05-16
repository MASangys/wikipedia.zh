**Mama**是一种[面向对象的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[编程语言](../Page/编程语言.md "wikilink")，是为了帮助年轻学生通过使用自己[母语的语言元素接触编程而设计的](https://zh.wikipedia.org/wiki/母语 "wikilink")。Mama编程语言适用于几种语言，并带有[LTR和](https://zh.wikipedia.org/wiki/LTR "wikilink")[RTL语言指导支持](https://zh.wikipedia.org/wiki/RTL "wikilink")。

新的Mama变种构建在[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[卡耐基梅隆大学的](https://zh.wikipedia.org/wiki/卡耐基梅隆大学 "wikilink")[Alice开发环境上](https://zh.wikipedia.org/wiki/Alice_\(software\) "wikilink")，支持3D舞台对象的脚本编程。这个新的Mama变种是为帮助年轻学生通过构建3D动画和游戏接触编程而设计的。

## 历史

Mama的开始版本 - 1.0, 1.1和1.2 -
提供简单的[整合的开发环境](https://zh.wikipedia.org/wiki/整合的开发环境 "wikilink")（IDE），其包含对标准元素的支持，例如带有[语法高亮的文本标记](https://zh.wikipedia.org/wiki/语法高亮 "wikilink")，编译器，调试器，输出窗口等。从1.5版本开始，Mama就整合了开源的Alice
IDE以支持拖放编程和3D动画。Mama通过Java实现。

当前版本1.5.4，有[英语和](../Page/英语.md "wikilink")[希伯来语两个版本](../Page/希伯来语.md "wikilink")，并且可以在[Microsoft窗口中运行](https://zh.wikipedia.org/wiki/Microsoft "wikilink").

## 设计

产业编程语言为产品代码而设计的，因此引入了额外的复杂度。Mama仅仅是为教授编程概念，提供简单快捷的开发方法而设计的。语法错误会让刚开接触编程的学生感到很沮丧
-
Mama借助[3D模型在Alice上的变种中使用拖放模式创建](https://zh.wikipedia.org/wiki/3D_computer_graphics "wikilink")[计算机动画](../Page/计算机动画.md "wikilink")。

Mama语言是一种简单的[面向对象的语言](https://zh.wikipedia.org/wiki/object-oriented_programming "wikilink")，而Alice
IDE是[基于对象的](https://zh.wikipedia.org/wiki/基于对象的 "wikilink")。这就意味着，在使用Mama语言编写文本脚本时支持所有面向对象的元素（[继承](../Page/继承.md "wikilink")，[多形态](https://zh.wikipedia.org/wiki/多形态 "wikilink")，[原生编程](https://zh.wikipedia.org/wiki/原生编程 "wikilink")，[观察者模式风格的事件处理](../Page/观察者模式.md "wikilink")），使用拖放模式创建对象和方法是基于对象的
- 没有继承（因此也没有多形态）。最后的观察会让初学者困惑 - 因此建议只在计算机课程的高级阶段使用Mama脚本。

Mama 1.5对Alice 2.2的主要改进。

  - 作为（丰富）的脚本语言添加Mama编程语言 - 3D场景对象可以通过脚本机制操纵。
  - 完全支持统一码。
  - 3D对象的创建和编辑。
  - 支持上传视频至ouTube和在Facebook发布。
  - 支持场景和角色。
  - 面向指导人员的教程编辑器工具。
  - 带有音频的视频输出。
  - 用户独立运行的可运行程序。
  - 更好的菜单逻辑。
  - 修复了许多漏洞。

## IDE基础知识

IDE窗口由几个部分组成：在顶部你会发现主菜单和工具栏，它允许你执行命令。例如创建/打开一个world程序，输出3D对象到world，创建独立运行的应用，导出动画到YouTube等。
主窗口中的五个窗口是：

  - **对象树** - 包含当前world程序中的对象列表。
  - **3D窗口** - 放置，移动，旋转对象的地方。
  - **事件区域** - 允许你编辑某个事件发生时的情况。
  - **细节区域** - 包含了3个标签中被选中的对象信息：属性，方法和函数。
  - **编辑器区域**（在底部）- 是使用拖拽指令的方式编写程序代码的地方。

在场景编辑模式下，上述两个部分被取代：

  - **控制面板** - 代替事件区域，并显示各种用于操作3D窗口中对象的控制指令。
  - **对象图库** - 代替编辑区域，并显示等级文件夹中的对象，以便选择并嵌入到3D窗口。

以下是Alice IDE中可用的基本类型：

  - ***数字*** - 数字类型，代表整数和实数
  - ***布尔*** - 布尔值，接受真或假
  - ***对象*** - 一般Mama对象
  - ***字符串*** - 字符串，字符的集合
  - ***颜色*** - RGB颜色
  - ***结构地图*** - 结构地图
  - ***声音*** - 声音
  - ***姿势*** - 对象的被捕获的姿势
  - ***位置*** - 定义3D空间中位置的3D数组
  - ***定向*** - 定义3D空间定位的3D数组
  - ***视角*** - ***定位***和***位置***的组合

在编辑器区域底部可用的控制指令：

  - ***顺序执行*** - 顺序执行指令序列
  - ***一起执行*** - 同时执行指令序列
  - ***如果*** - 只在给定条件下顺序执行指令序列
  - ***当*** - 当给定条件成立，顺序执行指令序列
  - ***对于*** - 顺序执行指令序列给定次数
  - ***对于所有顺序执行*** - 迭代给定集合，顺序执行指令序列
  - ***对于所有一起执行*** - 迭代给定集合，同时执行指令序列
  - ***等待*** - 等待给定的秒数
  - ***打印*** - 打印数据到输出控制台
  - ***声明*** - 声明一个条件为真，如果条件为假显示一条消息（Mama1.5新指令）
  - ***脚本*** - 给程序添加自由Mama脚本
  - ***\#*** - 给程序添加注释

## 参见

  - [教育编程语言](https://zh.wikipedia.org/wiki/教育编程语言 "wikilink")
  - [可视化编程语言](https://zh.wikipedia.org/wiki/可视化编程语言 "wikilink")
  - [高级别的编程语言](https://zh.wikipedia.org/wiki/高级别的编程语言 "wikilink")

## 引用资料

<div class="references-small">

<references/>

  - [Mama语言参考手册](http://en.eytam.com/mama/mama_reference)
  - [Mama IDE参考手册](http://en.eytam.com/mama/ide_reference_mama)
  - 《学习使用Alice编程》, Wanda P. Dann, Stephen Cooper, Randy Pausch: ISBN
    0-13-187289-3
  - 《面向青少年的可视化World程序的设计和创建》; Charles R. Hardnett; Course Technologies
    PTR, 2009; ISBN 1598638505, ISBN 9781598638509

</div>

## 外部链接

  - [Mama主页](http://www.eytam.com/mama)
  - [Alice主网](http://www.alice.org/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:儿童编程语言](https://zh.wikipedia.org/wiki/Category:儿童编程语言 "wikilink")
[Category:面向儿童的编程语言](https://zh.wikipedia.org/wiki/Category:面向儿童的编程语言 "wikilink")
[Category:可视化编程语言](https://zh.wikipedia.org/wiki/Category:可视化编程语言 "wikilink")