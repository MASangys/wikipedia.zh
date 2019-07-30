**Thompson构造法**在[计算机科学](../Page/计算机科学.md "wikilink")中是指一个能将[正则表达式](../Page/正则表达式.md "wikilink")转化为一个与之等价的[非确定有限状态自动机](../Page/非确定有限状态自动机.md "wikilink")（NFA）的[算法](../Page/算法.md "wikilink")。算法得到的NFA可以在编程中用于匹配一个正则表达式，这也是正则表达式引擎实现的基本思路之一。

正则表达式和非确定有限状态自动机是[形式语言](../Page/形式语言.md "wikilink")的两种不同的[抽象](https://zh.wikipedia.org/wiki/抽象 "wikilink")[表达方式](https://zh.wikipedia.org/wiki/表达方式 "wikilink")。在诸如[文本编辑器](../Page/文本编辑器.md "wikilink")的高级“查找和替换”以及许多编程语言中，人们都习惯使用正则表达式来表示[字符串](../Page/字符串.md "wikilink")的匹配模式。然而，当计算机执行匹配程序时，NFA却是更加适合的一种格式。因此，Thompson构造法有着重要的应用价值，它实际上可以视作正则表达式到NFA的一个编译器。而从理论角度上来说，该算法实际上是正则表达式和NFA等价性证明的一部分——事实上，这两种表述形式本质上都对应着相同的语言，即[正则语言](../Page/正则语言.md "wikilink")。

在应用中，算法得到的NFA可以再次通过[幂集构造](../Page/幂集构造.md "wikilink")和最小化的过程得到一个对应的最简的[确定有限状态自动机](../Page/确定有限状态自动机.md "wikilink")（DFA），进而用于匹配正则表达式。但是有些情况下也会直接使用对应的NFA。

## 算法介绍

### 构造规则

算法通过[递归](../Page/递归.md "wikilink")地将一个正则表达式划分成构成它的子表达式，在得到每个子表达式对应的NFA之后，根据子表达式之间的运算关系和一系列规则构造表达式自身对应的NFA。\[1\]具体来说，这套构造规则如下所示\[2\] ：

#### 递归终点

对于正则表达式为ε或者只由一个符号构成的情况，则无需继续递归，对应的NFA可以直接由下列规则给出：

**空表达式**ε直接转化为：

[inline](https://zh.wikipedia.org/wiki/File:Thompson-epsilon.svg "fig:inline")

字母表中的单个**符号***a*直接转化为：

[inline](https://zh.wikipedia.org/wiki/File:Thompson-a-symbol.svg "fig:inline")

#### 子表达式运算的构造规则

下面针对正则表达式的三种运算——并、连接和[Kleene\*闭包给出NFA的构造规则](https://zh.wikipedia.org/wiki/Kleene星号 "wikilink")。设子表达式为s和t，则它们对应的NFA分别记作N(s)和N(t)。

两个正则表达式的**并**|可以转化为：

[inline](https://zh.wikipedia.org/wiki/File:thompson-or.svg "fig:inline")

通过ε转移， 状态*q* 可以直接到达*N*()或*N*()的初态。而*N*()或*N*()原来的终态也可以通过ε转移直接到达整个NFA的新终态。

**连接表达式**可以转化为：

[inline](https://zh.wikipedia.org/wiki/File:thompson-concat.svg "fig:inline")

*N*()的初态成为新的NFA的初态。 原来*N*()的终态成为*N*()的初态。而原来*N*()的终态成为新的NFA的终态。

**Kleene\*闭包**<sup>\*</sup>可以转化为：

[inline](https://zh.wikipedia.org/wiki/File:thompson-kleene-star.svg "fig:inline")

将新表达式的初态和终态以及夹在中间的子表达式的NFA *N*()连接起来的ε转移使得可以选择经过或者不经过子表达式。而从*N*()的终态到初态的ε转移使得可以重复任意多次。

  - **加括号的表达式** () 直接转化为 *N*() 自身即可。

## 参考资料

[Category:自动机](https://zh.wikipedia.org/wiki/Category:自动机 "wikilink") [Category:形式语言](https://zh.wikipedia.org/wiki/Category:形式语言 "wikilink") [Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")

1.
2.  [Alfred V. Aho](https://zh.wikipedia.org/wiki/Alfred_V._Aho "wikilink"), Ravi Sethi, [Jeffrey Ullman](https://zh.wikipedia.org/wiki/Jeffrey_Ullman "wikilink"): *Compilers: Principles, Techniques and Tools.* Addison Wesley, 1986