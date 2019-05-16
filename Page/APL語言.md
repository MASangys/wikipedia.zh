**APL** 是 **A Programming Language** 或 **Array Processing Language**
的缩写。[肯尼斯·艾佛森在](../Page/肯尼斯·艾佛森.md "wikilink")1962年设计这个语言时他正在[哈佛大学工作](../Page/哈佛大学.md "wikilink")，1979年他因对数学表达式和[编程语言理论的贡献而得到图灵奖](../Page/编程语言.md "wikilink")。在过去数十年的使用历史中，APL
从它的原始版本开始不断改变和发展，今天的版本与1963年发表时的版本已经非常不一样了。但它始终是一种解释执行的计算机语言。现代的 APL
版本支持其初始版本不支持的结构和模式编程。APL 至今依然使用一种非标准化的字母表，这一直是他人对 APL 的批评。

## 概述

在许多应用场合下（数学、科学、工程技术、电脑设计、机器人、数据显示、保险技术、传统的数据处理等等）APL是一种非常有力的、表达丰富的和简明的编程语言。它一般被用在一个与用户接口的环境中。它最初的设计目的是将数学公式写成一种电脑可以理解的方式。学它一般很容易，但要分析
APL 写成的程序往往需要一段时间。与传统的结构式编程语言不同的是，APL
的程序一般由一系列使用在序列上的单元的或双元的函数或运算符号组成。由于APL拥有许多非标准的运算符号，这些符号之间没有优先性（比如一般数学中的乘号、除号较加号、减号有优先权，APL中没有这样的优先权）。最初的APL语言没有任何控制结构如循环（do-while）或者条件选择（if-then-else），但一些序列运算符号可以用来模拟编程结构，比如[iota](https://zh.wikipedia.org/wiki/Iota函数 "wikilink")（用来获得一个从1至N的序列）可以用来模拟循环（for）。

APL 的工作环境被称为工作场。在这个工作场内用户可以定义程序和数据。数据也可以在工作场在程序外存在。用户可以在程序外改变数据，比如：

\[N \leftarrow  4\ 5\ 6\ 7\]

将一个系列的数据4、5、6、7授予N。

\[N+4\,\!\]

输出8、9、10、11。

\[+/N\,\!\]

输出N内所有数的和，即22。

用户可以将工作场连同其中的所有数据和程序储存起来。在任何情况下，这些程序不是编译执行，而是解释执行的。

APL
最著名的就是它使用一组非[ASCII符号](../Page/ASCII.md "wikilink")。这些符号比一般常见的代数和计算符号要多。有人开玩笑说，用两行这样的奇形怪状的符号就可以将所有航空控制的问题解决了。事实上，在一些APL版本中，用一行程序就可以将任何可计算的函数表达出来。在用一行你可以将这个函数的结构表达出来。由于它的精密的结构和非标准的符号，也有人将APL称为“只写语言”。除数学家外，其他人要读APL写的程序都感到非常困难。有些数学家觉得其它语言比APL难懂。由于APL使用不寻常的符号，许多编程员在写APL程序时使用专门的APL键盘。今天也有不同的只使用ASCII字母写APL的方法。

艾佛森后来还设计了一个APL的后续，称为[J语言](../Page/J语言.md "wikilink")，这个语言只使用ASCII符号。至今为止只有一种J语言。一些其它语言也提供类似APL的功能。[A+是一种](https://zh.wikipedia.org/wiki/A+ "wikilink")[开源的编程语言](https://zh.wikipedia.org/wiki/开源 "wikilink")，其许多指令与APL相同。

下面这个例子排列一个存在X里的词的序列，排列标准是每个词的长度：

`X[X+.¬' ';]`

下面是一个寻找所有1和R之间的[质数的例子](https://zh.wikipedia.org/wiki/质数 "wikilink")：

\[\left(\sim R \in R \circ . \times R\right)/R \leftarrow 1 \downarrow \iota R\]

下面是这个程序的读法（从右向左）：

1.  \(\iota\,\!\)建立含有从1到R的自然数的系列（假如程序开始时R=6，那么\(\iota R\,\!\)是1 2 3 4 5
    6）
2.  放弃这个系列中的第一个元素（\(\downarrow\)）（\(1 \downarrow \iota R\)是2 3 4 5 6）
3.  令R成为这个系列（\(\leftarrow\)是授值符号）
4.  令R与R相乘而组成一个[矩阵](../Page/矩阵.md "wikilink")，实际上是组成一个R乘R的乘法表（\(\circ . \times\)）
5.  建立一个长度与R相同的系列，假如R中相应位置的数在乘法矩阵中出现，那么在这个位置上的数就应该是1，否则0（\(\in\)），这个运算的结果是0
    0 1 0 1
6.  逻辑地否定的系列中的数，也就是说，1成为0，0成为1（\(\sim\)），结果是1 1 0 1 0
7.  选择R中相应的在新的系列中为1的数，这些数是质数（\(/\,\!\)），结果为2 3 5

以下是[Perl语言的相应程序](../Page/Perl.md "wikilink")：

`perl -le '$_ = 1; (1 x $_) !~ /^(11+)\1+$/ && print while $_++'`

以下是[J语言的相应程序](../Page/J语言.md "wikilink")：

`( -. r e. , r */ r ) # r =: }. 1 + i. 7`

## APL 的 Hello World 程序

``` apl
'Hello, world'
```

## 字母表

从一开始就有人批评APL使用一套特别的、非标准的字母表。学过APL的人一般很喜欢这些特别的符号，这说明当时艾佛森选择这些符号时是有一定的用意的。[Unicode包含这些字母](https://zh.wikipedia.org/wiki/Unicode "wikilink")，Unicode被引入后，要寻找特别的[字型的问题开始有所减缓](../Page/字型.md "wikilink")。虽然如此依然有人批评当初APL设计时所选择的特殊的符号。这些专门为APL设计的键盘无论如何不会非常普及。

  -
    [APL-keybd2.svg](https://zh.wikipedia.org/wiki/File:APL-keybd2.svg "fig:APL-keybd2.svg")

## 实现

[GNU
APL](http://www.gnu.org/software/apl)是一个免费的APL实现，它可以运行在Linux，Windows还有Mac
OS X系统上。

## 外部链接

  - [The APL Programming Language Source
    Code](http://www.computerhistory.org/atchm/the-apl-programming-language-source-code/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")