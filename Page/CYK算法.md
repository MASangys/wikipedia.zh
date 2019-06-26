**CYK算法**（，縮寫為CYK
algorithm）是由[約翰·科克](https://zh.wikipedia.org/wiki/約翰·科克 "wikilink")，Younger和共同研究出来大约发表于1965年的一个算法，它是一个用来判定任意给定的字符串\(~w \in \Sigma^*\)
是否属于一个[上下文无关文法的算法](../Page/上下文无关文法.md "wikilink")。普通的[回溯法](https://zh.wikipedia.org/wiki/回溯法 "wikilink")（backtracking）在最坏的情况下需要[指数时间才能解决这样的问题](https://zh.wikipedia.org/wiki/指数时间 "wikilink")，而CYK算法只需要[多项式时间就够了](https://zh.wikipedia.org/wiki/多项式时间 "wikilink")（\(~O(n^3)\)
， n 为字符串 w 的长度）。CYK算法采用了[动态规划的思想](../Page/动态规划.md "wikilink")。

对于一个任意给定的上下文无关文法，都可以使用CYK算法来计算上述问题，但首先要将该文法转换成[乔姆斯基范式](../Page/乔姆斯基范式.md "wikilink")。

## 相关参数定义

  - \(~G =(V,\Sigma,S,P)\) 是一个上下文无关文法
  - 对于任意字符串 \(w = \sigma_1...\sigma_n \in \Sigma^*\) ，定义
    \(w[i,j] = \sigma_i...\sigma_j, ~1 \le i \le j \le n\)
  - 对于任意选择的 \(~i,j\) ，定义
    \(V_{i,j} = \{ X \in V ~| ~X \Rightarrow^* w[i,j] \}\)

## 算法描述

### 简介

通过由下而上的方法计算 \(~V_{i,j}\) 这个集合，如果 \(S \in V_{1,n}\) ，那么就说明 \(~w\)
是被上下文无关文法 \(~G\) 接受的字符串。

因为 \(~G\) 是一个乔姆斯基范式，当且仅当有下面描述的情况时 \(X \in V_{i,j}\) ：

  - \(i < j, ~\exists Y,Z,k : X \rarr YZ\) 是 \(~G\) 中的一个规则且
    \(Y \in V_{i,k}, Z \in V_{k+1,j}\)

### 伪代码

*`FOR`*` i:= 1 `*`TO`*` n `*`DO`*` `\(V_{i,i}:= \{ X \in V ~| ~X \rarr \sigma_i ~in ~P \}\)
*`FOR`*` l:= 1 `*`TO`*` n-1`
`    `*`FOR`*` i:= 1 `*`TO`*` n-l `*`DO`*
`        `\(~V_{i,i+l} := \varnothing\)
`        `*`FOR`*` k:= i `*`TO`*` i+l-1 `*`DO`*
`            `\(~V_{i,i+l} := V_{i,i+l} \cup \{X ~| ~X \rarr YZ, Y \in V_{i,k}, Z \in V_{k+1,i+l} \}\)
*`IF`*` `\(S \in V_{1,n}\)` `*`THEN`*` accept `*`ELSE`*` reject`

## 扩展CYK算法

### 简介

对于上述CYK算法作一个小改动，也就是说记住每次的k，就可以自动产生一个由该上下文无关语言的推导树。

### 伪代码

*`FOR`*` i:= 1 `*`TO`*` n `*`DO`*` `\(V_{i,i}:= \{ X \in V ~| ~X \rarr \sigma_i ~in ~P \}\)
*`FOR`*` l:= 1 `*`TO`*` n-1`
`    `*`FOR`*` i:= 1 `*`TO`*` n-l `*`DO`*
`        `\(~V_{i,i+l} := \varnothing\)
`        `*`FOR`*` k:= i `*`TO`*` i+l-1 `*`DO`*
`            `\(~V_{i,i+l} := V_{i,i+l} \cup \{ (X,k) ~| ~X \rarr YZ, Y \in V_{i,k}, Z \in V_{k+1,i+l} \}\)
*`IF`*` `\(\exists k : (S,k) \in V_{1,n}\)` `*`THEN`*` accept `*`ELSE`*` reject`

通过对下面的方法递归运行就可以生成推导树。

`-{}-`
`Tree(X,i,j):`
`   `*`IF`*` i=j `*`THEN`*` RETURN `\(~\sigma_i\)
`   选择一个 k 使 `\((X,k) \in V_{i,j}\)
`    选择 Y 和 Z 使 `\(X \rarr YZ, Y \in V_{i,k}, Z \in V_{k+1,j}\)
`    RETURN Tree(X,Tree(Y,i,k),Tree(Z,k+1,j))`

## 例子

给定一个乔姆斯基范式的上下文无关文法
\(~G = (\lbrace S, A, B, C \rbrace, \lbrace a, b \rbrace, S, P)\) ，其中规则
P 如下：

\[S \rightarrow AB \mid BC\]

\[A \rightarrow BA \mid a\]

\[B \rightarrow CC \mid b\]

\[C \rightarrow AB \mid a\] 问：字符串 bbabaa 能不能通过该文法产生？

CYK算法可以通过一个表格来运算，表中 i 列 j 行表示由哪几个非终结符可以产生字字符串
\(\sigma_i \dots \sigma_j\) 。

| i             | 1     | 2     | 3     | 4     | 5     | 6     |
| ------------- | ----- | ----- | ----- | ----- | ----- | ----- |
| a<sub>i</sub> | b     | b     | a     | b     | a     | a     |
| j=1           | {B}   |       |       |       |       |       |
| j=2           | \-    | {B}   |       |       |       |       |
| j=3           | {A}   | {S,A} | {A,C} |       |       |       |
| j=4           | {S,C} | {S,C} | {S,C} | {B}   |       |       |
| j=5           | {B}   | {B}   | {B}   | {A,S} | {A,C} |       |
| j=6           | {A,S} | {A,S} | {A,S} | \-    | {B}   | {A,C} |

如果在表格的最左下角一格中有文法的开始非终结符 S ，那么字符串 bbabaa 就能由上面给出文法 G 产生。

## 参考文献

  - John Cocke and Jacob T. Schwartz (1970). Programming languages and
    their compilers: Preliminary notes. Technical report, Courant
    Institute of Mathematical Sciences, New York University.
  - T. Kasami (1965). An efficient recognition and syntax-analysis
    algorithm for context-free languages. Scientific report
    AFCRL-65-758, Air Force Cambridge Research Lab, Bedford, MA.
  - Daniel H. Younger (1967). Recognition and parsing of context-free
    languages in time *n*<sup>3</sup>. *Information and Control* 10(2):
    189–208.

## 外部链接

  - [Interaktives Java-Applet zur
    Demonstration](http://www.cs.iitm.ernet.in/tell/automata/Automata/final-cyk/app.html)

[Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")
[Category:形式语言](https://zh.wikipedia.org/wiki/Category:形式语言 "wikilink")
[Category:分析演算法](https://zh.wikipedia.org/wiki/Category:分析演算法 "wikilink")