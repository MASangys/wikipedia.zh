> 本文内容由[B,C,K,W系统](https://zh.wikipedia.org/wiki/B,C,K,W系统)转换而来。


1930年[哈斯凱爾·加里在他的博士论文](https://zh.wikipedia.org/wiki/哈斯凱爾·加里 "wikilink")《Grundlagen der kombinatorischen Logik》中提议了一个[組合子邏輯系統](https://zh.wikipedia.org/wiki/組合子邏輯 "wikilink")。它带有基本组合子**B**、**C**、**K**和**W**（采用了现在的命名）。

## 定義

  - **B** x y z = x(y z)
  - **C** x y z = x z y
  - **K** x y = x
  - **W** x y = x y y

直觉上，

  - **B** x y是[函数复合x](https://zh.wikipedia.org/wiki/函数复合 "wikilink") <small>o</small> y
  - **C** x y z交换[参数y和z](../Page/參數_\(程式設計\).md "wikilink")
  - **K** x y忽略第二个参数y
  - **W** x y复制参数y

在當代，只有兩個基本組合子**K**和**S**的[SKI組合子演算成為了](https://zh.wikipedia.org/wiki/SKI組合子演算 "wikilink")[組合子邏輯的規范方式](https://zh.wikipedia.org/wiki/組合子邏輯 "wikilink")。**B, C**和**W**可以使用**S**和**K**表達為如下：

  - **B** = **S** (**K S**) **K**
  - **C** = **S** (**S** (**K** (**S** (**K S**) **K**)) **S**)(**K K**)
  - **K** = **K**
  - **W** = **S S**（**K** (**S K K**))

在另一個方向上，SKI可以依據B,C,K,W定義為：

  - **I** = **W K**
  - **K** = **K**
  - **S** = **B** (**B** (**B W**) **C**) (**B B**)\[1\] = **B** (**B B B W B**) **C**

## 與直覺主義邏輯的連結

組合子 \(B\), \(C\), \(K\) 和 \(W\) 對應於眾所周知的[命題邏輯四公理](https://zh.wikipedia.org/wiki/命题逻辑#简单的公理系统 "wikilink")：

  -
    **AB**: (*B* → *C*) → ((*A* → *B*) → (*A* → *C*)),
    **AC**: (*A* → (*B* → *C*)) → (*B* → (*A* → *C*)),
    **AK**: *A* → (*B* → *A*),
    **AW**: (*A* → (*A* → *B*)) → (*A* → *B*).

而函數應用對應於[肯定前件](https://zh.wikipedia.org/wiki/肯定前件 "wikilink")

  -
    **MP**: 如果 A 且 A → B，則 B。

公理 AB, AC, AK 和 AW 以及函數應用規則 MP 對於[直覺邏輯的蘊涵片段是完整的](https://zh.wikipedia.org/wiki/直覺邏輯 "wikilink")。為了使組合邏輯能模型化為直覺邏輯：

  - [古典邏輯的](../Page/经典逻辑.md "wikilink")[蕴涵命题演算](../Page/蕴涵命题演算.md "wikilink")，需要與排中律相結合，例如，[皮尔士定律](https://zh.wikipedia.org/wiki/皮尔士定律 "wikilink");
  - 完整的古典邏輯，需以組合子模擬到命題公式 F → A。

## 参见

  - [组合子逻辑](../Page/组合子逻辑.md "wikilink")
  - [SKI組合子演算](https://zh.wikipedia.org/wiki/SKI組合子演算 "wikilink")

## 引用

  - [Hendrik Pieter Barendregt](https://zh.wikipedia.org/wiki/Hendrik_Pieter_Barendregt "wikilink")（1984）*The Lambda Calculus, Its Syntax and Semantics*, Vol. 103 in *Studies in Logic and the Foundations of Mathematics*. North-Holland. ISBN 978-0-444-87508-2

  - [Haskell Curry](https://zh.wikipedia.org/wiki/Haskell_Curry "wikilink")（1930）"Grundlagen der kombinatorischen Logik," *Amer. J. Math. 52*: 509-536; 789-834.

  -
  - [Raymond Smullyan](https://zh.wikipedia.org/wiki/Raymond_Smullyan "wikilink")（1994）*Diagonalization and Self-Reference*. Oxford Univ. Press.

## 注釋

<references/>

## 外部連結

  - Keenan, David C. (2001) "[To Dissect a Mockingbird.](https://web.archive.org/web/20080930210944/http://users.bigpond.net.au/d.keenan/Lambda/index.htm)"
  - Rathman, Chris, "[Combinator Birds.](http://www.angelfire.com/tx4/cus/combinator/birds.html)"
  - "["Drag 'n' Drop Combinators (Java Applet).](https://web.archive.org/web/20081029051502/http://cstein.kings.cam.ac.uk/~chris/combinators.html)"

[Category:Lambda演算](https://zh.wikipedia.org/wiki/Category:Lambda演算 "wikilink")

1.  [Raymond Smullyan](https://zh.wikipedia.org/wiki/Raymond_Smullyan "wikilink")（1994）*Diagonalization and Self-Reference*. Oxford Univ. Press: 344, 3.6(d).