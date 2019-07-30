**BCY语言**，其名称源自“编译程序语言”的[汉语拼音](../Page/汉语拼音.md "wikilink")（）缩写，是1960年代由[中国科学院计算技术研究所](../Page/中国科学院计算技术研究所.md "wikilink")设计的[中文编程语言](https://zh.wikipedia.org/wiki/中文编程语言 "wikilink")。

1964年至1965年间，中国科学院计算技术研究所的一个以[董韫美](https://zh.wikipedia.org/wiki/董韫美 "wikilink")、周少柏为首的小组在为大型[电子管计算机](https://zh.wikipedia.org/wiki/电子管 "wikilink")119机建立编译系统BX119的过程中，以[ALGOL 60为基础设计了BCY语言](../Page/ALGOL_60.md "wikilink")。与ALGOL 60相比，BCY语言删去了其中一些不常用的部分，不区分[整数](../Page/整数.md "wikilink")型与[实数](../Page/实数.md "wikilink")型变量，增加了为描述计算机上的计算过程所用的其他语言成分，并使用汉字书写。基于BCY语言的编译系统最早于1965年在119机上实现，后来又先后在109乙机、109丙机、015机、华北计算技术研究所的DJS-8机、华东计算技术研究所的655机等机器上实现。

## 范例

以下为使用BCY语言计算 \(y=\sum_{i=1}^{100} a_i\)的范例：

    始
        简变 I, Y;
        场 A[1:100];
        输十 A;
        0⇒Y;
        对于I=1到100步长1执行
            Y+A[I]⇒Y;
        印十 Y;
    终

## 参考文献

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:中文编程语言](https://zh.wikipedia.org/wiki/Category:中文编程语言 "wikilink")