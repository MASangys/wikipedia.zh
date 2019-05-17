**Unix哲学**是一套基于[Unix操作系统顶级开发者们的经验提出的](https://zh.wikipedia.org/wiki/Unix "wikilink")[软件开发的准则和哲学](https://zh.wikipedia.org/wiki/软件开发 "wikilink")。

## McIlroy：A Quarter Century of Unix

[道格拉斯·麥克羅伊是Unix系统上](../Page/道格拉斯·麥克羅伊.md "wikilink")[管道机制的发明者](../Page/管道_\(Unix\).md "wikilink")，也是Unix文化的缔造者之一。他归纳的Unix哲学如下：
 更加简化的版本是：做一件事，做好它。虽然只有第三条是特指Unix系统的，但Unix开发者们常常同时强调这三个信条。

## Pike：Notes on Programming in C

[羅勃·派克在他的](../Page/羅勃·派克.md "wikilink")《[Notes on Programming in
C](http://www.lysator.liu.se/c/pikestyle.html)》中提到了以下格言。虽然这些规则是关于[程序设计的](../Page/程序设计.md "wikilink")，但作为Unix哲学丝毫不为过：

  - 规则一：你永远不会知道你的程序会在什么地方耗费时间。程序的[瓶颈常常出现在意想不到的地方](https://zh.wikipedia.org/wiki/瓶颈 "wikilink")，因此在你确信找到瓶颈后再动手代码吧。
  - 规则二：测试代码。只有在你详细测试了代码，并且发现一部分代码耗费了绝大部分的运行时间时再对程序作速度优化。
  - 规则三：功能全面的[算法](../Page/算法.md "wikilink")（fancy
    algorithm）在处理小[规模问题时效率很低](https://zh.wikipedia.org/wiki/计算复杂性理论 "wikilink")，这是因为算法时间效率中的常量很大，而问题往往规模很小。除非你知道你遇到的常常是复杂的情况，否则就让代码丑陋但是简单而高效吧。（即使问题规模确实很大，也首先尝试第二条规则。）
  - 规则四：功能全面的算法比简单的算法更容易产生Bug，更难实现。尽量使用简单的算法和[数据结构](../Page/数据结构.md "wikilink")。
  - 规则五：数据决定一切。如果选择的数据结构能很好的管理数据，算法部分往往不言自明。记住，数据结构，而非算法，才是编程的关键。
  - 规则六：没有第六条规则。

Pike的第一、二条规则重申了[高德纳的著名格言](../Page/高德纳.md "wikilink")：“过早的优化是一切罪恶的根源。”\[1\]
Pike的第三、四条规则被[肯·汤普逊改述成](../Page/肯·汤普逊.md "wikilink")：“疑惑不定之时最适合穷举。”事实上，这两条规则也是[KISS原则的具体表现](../Page/KISS原则.md "wikilink")。规则五在之前[Fred
Brooks的](https://zh.wikipedia.org/wiki/Fred_Brooks "wikilink")[人月神话中也被提及](../Page/人月神话.md "wikilink")。的《》中也有一章阐述了相同的设计哲学。此规则作为“如果你的数据结构很好，那么控制它的算法就无关痛痒了”的例子常常被简化成“简约地写代码，聪明地用数据”。第六条规则当然只是Pike针对[蒙提·派森之小品](../Page/蒙提·派森.md "wikilink")的幽默发挥而已了。

## Mike Gancarz的《UNIX哲学》

1994年，[X
Window系统开发组的成员Mike](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")
Gancarz根据他自己的Unix系统经验以及和其他领域使用Unix系统的资深程序员们的讨论结果，写成了*The UNIX
Philosophy*，提出了9条训格之言：

  - 一：小即是美。
  - 二：让程序只做好一件事。
  - 三：尽可能早地建立原型。
  - 四：可移植性比效率更重要。
  - 五：数据应该保存为[文本文件](../Page/文本文件.md "wikilink")。
  - 六：尽可能地榨取软件的全部价值。
  - 七：使用[shell](../Page/Unix_shell.md "wikilink")[脚本来提高效率和可移植性](../Page/脚本语言.md "wikilink")。
  - 八：避免使用可定制性低下的用户界面。
  - 九：所有程序都是数据的过滤器。

此外还有十条原则则并不为所有人认同，甚至还是争论的焦点（如[宏内核和](https://zh.wikipedia.org/wiki/宏内核 "wikilink")[微内核之争](https://zh.wikipedia.org/wiki/微内核 "wikilink")）：

  - 一：应该允许用户定制操作环境。
  - 二：让操作系统核心小而轻。
  - 三：使用小写字母并尽量简短。
  - 四：节约纸张，保护树林。
  - 五：沉默是金。
  - 六：并行地思考。
  - 七：部分加部分大于整体。
  - 八：寻找问题的[帕雷托法则](https://zh.wikipedia.org/wiki/帕雷托法则 "wikilink")。
  - 九：程序随需求而增长（）。
  - 十：层级地思考。

## 糟糕的更好

提议Unix的一个关键优势是他称作“糟糕的更好”的设计哲学。在“糟糕的更好”的设计风格下，接口和实现的简单性比系统的任何其他属性都更重要，包括准确性、一致性和完整性。Gabriel主张这种设计风格拥有关键的进化优势，尽管他也怀疑一些结果的质量。

## 参考文献

### 引用

### 来源

  - *The Unix Programming Environment* by [Brian
    Kernighan](https://zh.wikipedia.org/wiki/Brian_Kernighan "wikilink")
    and [Rob
    Pike](https://zh.wikipedia.org/wiki/Rob_Pike "wikilink")，1984
  - [*Notes on Programming in
    C*](http://www.lysator.liu.se/c/pikestyle.html)，Rob Pike, September
    21, 1989
  - *A Quarter Century of Unix*, Peter H. Salus, Addison-Wesley, May 31,
    1994 (ISBN 0-201-54777-5)
  - [*Philosophy*](http://www.faqs.org/docs/artu/philosophychapter.html)
    — from [*The Art of Unix
    Programming*](http://www.catb.org/~esr/writings/taoup)，Eric S.
    Raymond, Addison-Wesley, September 17, 2003 (ISBN 0-13-142901-9)
  - [Final Report of the Multics Kernel Design
    Project](http://citeseer.ist.psu.edu/schroeder77final.html) by M. D.
    Schroeder, D. D. Clark, J. H. Saltzer, and D. H. Wells, 1977.
  - *The UNIX Philosophy*, Mike Gancarz, ISBN 1-55558-123-4
  - [Basics of the Unix
    Philosophy](http://www.faqs.org/docs/artu/ch01s06.html)

## 外部链接

  - [Worse is Better](http://dreamsongs.com/WorseIsBetter.html)，Richard
    P. Gabriel
  - [The Rise of "Worse is
    Better"](http://www.jwz.org/doc/worse-is-better.html)，Richard P.
    Gabriel

## 参见

  -
  - [Plan 9 from Bell
    Labs](https://zh.wikipedia.org/wiki/Plan_9_from_Bell_Labs "wikilink")

  - [英文写作指南](../Page/英文写作指南.md "wikilink")（The Elements of Style）

  -
  - [软件工程](../Page/软件工程.md "wikilink")

[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")
[Category:软件开发](https://zh.wikipedia.org/wiki/Category:软件开发 "wikilink")

1.  [Knuth,
    Donald](https://zh.wikipedia.org/wiki/Knuth,_Donald "wikilink"):
    [Structured Programming with Goto
    Statements](http://pplab.snu.ac.kr/courses/adv_pl05/papers/p261-knuth.pdf)
    . *Computing Surveys* **6**:4 (1974), 261–301.