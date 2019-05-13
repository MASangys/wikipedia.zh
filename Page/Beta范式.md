在 [lambda 演算中](../Page/lambda_演算.md "wikilink")，一个项是**beta
范式**（规范型），如果没有“beta 归约”是可能的。一个项是 **beta-eta
范式**，如果既没有 beta 归约又没有“eta 归约”是可能的。一个项是**头部范式**，如果没有“在头部位置的
beta-可规约式”。

## Beta 归约

在 lambda 演算中，**beta 可归约式**(redex)是如下形式的项

\[((\mathbf{\lambda} x . A(x)) t)\]

这里的 \(A(x)\) 是（可能）涉及变量 \(x\) 的项。

“在头部位置的 beta 归约”是把如下重写规则应用于一个 beta 可归约式

\[((\mathbf{\lambda} x . A(x)) t) \rightarrow A(t)\]

这里的 \(A(t)\) 是把项 \(A(x)\) 中变量 \(x\) 替换为项 \(t\) 的结果。

一个 beta 归约在头部位置，如果它有如下形式：

  - <math> \\lambda x_0 \\ldots \\lambda x_{i-1} . (\\lambda x_i .
    A(x_i)) M_1 M_2 \\ldots M_n \\rightarrow

`        \lambda x_0 \ldots \lambda x_{i-1} . A(M_1) M_2 \ldots M_n `</math>`, where `\(i \geq 0, n \geq 1\)`.`

不是这种形式的任何归约都是内部 beta 归约。

### 归约策略

一般的说，对于给定项有多个不同的可能的 beta
归约。**正规序归约**是一种[求值策略](../Page/求值策略.md "wikilink")，它始终应用“头部位置的
beta 归约”的规则，直到没有更多的这种归约是可能的。在这一点上，结果的项是“头部范式”。

相反的，在**应用序归约**中，首先应用内部归约，而只在没有更多的内部归约是可能的时候应用头部归约。

正规序归约是完备的，在如果一个项有头部范式则正规序归约总是能最终达到它的意义上。相反的，应用序归约可能不终止，即使在这个项有规范形式的时候。例如，使用应用序归约，下列归约序列是可能的：

\[(\mathbf{\lambda} x . z) ((\lambda w. w w w) (\lambda w. w w w))\]

\[\rightarrow (\lambda x . z) ((\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w))\]

\[\rightarrow (\lambda x . z) ((\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w))\]

\[\rightarrow (\lambda x . z) ((\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w) (\lambda w. w w w))\]

\[\ldots\]

而使用正规序归约，同样的起点迅速的归约到范式：

\[(\mathbf{\lambda} x . z) ((\lambda w. w w w) (\lambda w. w w w))\]

\[\rightarrow z\]

## 参见

  - [lambda 演算](../Page/lambda_演算.md "wikilink")
  - [规范化性质](../Page/规范化性质.md "wikilink")

[Category:Lambda演算](https://zh.wikipedia.org/wiki/Category:Lambda演算 "wikilink")