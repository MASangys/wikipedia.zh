**Web2C**是一整套[相关程序的集合](../Page/TeX.md "wikilink")，也是的一种实现，它包含[本身](../Page/TeX.md "wikilink")、[MetaFont](https://zh.wikipedia.org/wiki/MetaFont "wikilink")、[MetaPost](../Page/MetaPost.md "wikilink")、[BIB等](../Page/BibTeX.md "wikilink")，是很多发行套件的内核。Web2C的工作机理是将[高德纳](../Page/高德纳.md "wikilink")用[文学编程](../Page/文学编程.md "wikilink")语言[WEB所编写的原始代码转换为](https://zh.wikipedia.org/wiki/WEB "wikilink")[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，即Web-to-C\[1\]。Web2C最初适用于[Unix系统](https://zh.wikipedia.org/wiki/Unix "wikilink")，目前已扩展到包括[DOS](../Page/DOS.md "wikilink")、[Amiga](../Page/Amiga.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac
OS X等在内的多种操作系统](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")\[2\]。

## 历史

Web2C最早由Tomas Rokicki在1987年实现，他开发了第一套将系统的代码转换为C语言代码的系统。Tim
Morgan后来成为了这套系统的维护者，在这期间，软件的名称改为Web-to-C。在许多其他贡献者的帮助下，1990年Karl
Berry接手了这项工作。1997年，Karl将这项工作交给了Olaf Weber。Olaf在2006年又把这项工作交还给了Karl\[3\]。

## 主要内容

所有的Web2C程序均使用[Kpathsea路径搜索库来查找文件](https://zh.wikipedia.org/wiki/Kpathsea "wikilink")，这套库结合环境变量和配置文件的使用来优化大量[TeX](../Page/TeX.md "wikilink")文件的搜索\[4\]。

以Web2C方式处理的核心程序包括\[5\]：

  - bibtex：维护参考文献
  - dvicopy：展开DVI中的虚拟字体引用
  - dvitomp：将DVI转换为MPX（MetaPost图片）
  - dvitype：将DVI转换为可读文本
  - gftodvi：生成Generic格式字体的proofsheet
  - gftopk：将Generic格式字体转换为packed格式字体
  - gftype：将Generic格式字体转换为可读文本
  - mf：创建字体
  - mft：以漂亮的方式排版输出MetaFont的代码
  - mpost：创建技术性插图
  - patgen：创建断字规则文件
  - pktogf：将Packed格式字体转换为generic格式字体
  - pktype：将PK格式转换为可读的文本
  - pltotf：将纯文本的property list转换为TFM格式
  - pooltype：显示WEB的pool文件
  - tangle：将WEB转换为Pascal代码
  - tex：排版
  - tftopl：将TFM格式转换为纯文本的property list格式
  - vftovp：将虚拟字体格式转换为virtual property list格式
  - vptovf：将virtual property list格式转换为虚拟字体格式
  - weave：将WEB转换为

## 许可协议

由于创作者的情况各异，Web2C的不同部分采用了不同的许可协议。简而言之，Web2C的可执行文件都采用[GPL协议](https://zh.wikipedia.org/wiki/GPL "wikilink")；而源自[斯坦福的底层源文件则有其特定的许可协议](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")，不适用GPL协议\[6\]。

## 参考资料

## 相关条目

  - [](../Page/TeX.md "wikilink")
  - [](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
  - [BIB](../Page/BibTeX.md "wikilink")
  - [MetaFont](https://zh.wikipedia.org/wiki/MetaFont "wikilink")
  - [MetaPost](../Page/MetaPost.md "wikilink")
  - [ Live](../Page/TeX_Live.md "wikilink")

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink")

1.

2.

3.
4.

5.
6.