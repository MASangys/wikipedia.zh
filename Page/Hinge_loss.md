[缩略图](https://zh.wikipedia.org/wiki/File:Hinge_loss_vs_zero_one_loss.svg "fig:缩略图")
在[机器学习中](../Page/机器学习.md "wikilink")，**铰接损失**是一个用于训练[分类器的](https://zh.wikipedia.org/wiki/分类器 "wikilink")[损失函数](https://zh.wikipedia.org/wiki/损失函数 "wikilink")。铰链损失常被用于「最大间隔分类」，尤其适用于[支持向量机](../Page/支持向量机.md "wikilink")
(SVMs)。\[1\] 对于一个预期输出  ±1}}，分类结果  的铰接损失定义为

  -
    \(\ell(y) = \max(0, 1-t \cdot y)\)

注意  应该是分类器的“原始输出”，而非预测标签。 例如，在线性支持向量机中，
\(y = \mathbf{w} \cdot \mathbf{x} + b\)，其中 \((\mathbf{w},b)\)
是[超平面参数](https://zh.wikipedia.org/wiki/超平面 "wikilink")，\(\mathbf{x}\)是需要分类的点。

可以看到，当  和  符号相同(即  分类正确)，且 \(|y| \ge 1\)时，铰接损失
\(\ell(y) = 0\)。但当它们符号相反，\(\ell(y)\) 随
线性增长（分类错误）。类似的，如果 \(|y| < 1\)，即使  和
符号相同(正确分类，但分类间隔不足) 也会有损失。

## 扩展

二元支持向量机经常通过一对多（winner-takes-all strategy，WTA SVM）或一对一（max-wins
voting，MWV SVM）策略来扩展为[多元分类](../Page/多元分类.md "wikilink")，\[2\]
铰接损失也可以做出类似的扩展，已有数个不同的[多元分类铰接损失的变体被提出](../Page/多元分类.md "wikilink")。\[3\]
例如，Crammer 和 Singer \[4\] 将一个多元线性分类的铰链损失定义为\[5\]

  -
    \(\ell(y) = \max(0, 1 + \max_{y \ne t} \mathbf{w}_y \mathbf{x} - \mathbf{w}_t \mathbf{x})\)

其中 \(t\) 为目的标签， \(\mathbf{w}_t\) 和 \(\mathbf{w}_y\) 该模型的参数。

Weston 和 Watkins
提出了一个类似的定义，但使用[求和代替了最大值](https://zh.wikipedia.org/wiki/求和 "wikilink")：\[6\]\[7\]

  -
    \(\ell(y) = \sum_{y \ne t} \max(0, 1 + \mathbf{w}_y \mathbf{x} - \mathbf{w}_t \mathbf{x})\)

在结构预测中，铰接损失可以进一步扩展到结构化输出空间。支持间隔调整的结构化支持向量机 可以使用如下所示的铰链损失变体，其中  表示SVM的参数，
 为SVM的预测结果， 为联合特征函数， 为[汉明损失](../Page/汉明距离.md "wikilink"):

  -
    <math>\\begin{align}

\\ell(\\mathbf{y}) & = \\max(0, \\Delta(\\mathbf{y}, \\mathbf{t}) +
\\langle \\mathbf{w}, \\phi(\\mathbf{x}, \\mathbf{y}) \\rangle -
\\langle \\mathbf{w}, \\phi(\\mathbf{x}, \\mathbf{t}) \\rangle) \\\\

`        & = \max(0, \max_{y \in \mathcal{Y}} \left( \Delta(\mathbf{y}, \mathbf{t}) + \langle \mathbf{w}, \phi(\mathbf{x}, \mathbf{y}) \rangle \right) - \langle \mathbf{w}, \phi(\mathbf{x}, \mathbf{t}) \rangle)`

\\end{align}</math>

## 优化算法

铰链损失是一种[凸函数](../Page/凸函数.md "wikilink")，因此许多机器学习中常用的凸优化器均可用于优化铰链损失。
它不是[可微函数](../Page/可微函数.md "wikilink")，但拥有一个关于线性 SVM 模型参数
的[次导数](../Page/次导数.md "wikilink")

  -
    <math>\\frac{\\partial\\ell}{\\partial w_i} = \\begin{cases}

`-t \cdot x_i & \text{if } t \cdot y < 1 \\`
`0      & \text{otherwise}`

\\end{cases}</math>

其[评分函数为](https://zh.wikipedia.org/wiki/评分函数 "wikilink")
\(y = \mathbf{w} \cdot \mathbf{x}\)
[缩略图](https://zh.wikipedia.org/wiki/File:Hinge_loss_variants.svg "fig:缩略图")
然而，由于铰接损失在 \(ty = 1\)处不可导， Zhang
建议在优化时可使用[平滑的变体建议](../Page/光滑函数.md "wikilink")，\[8\]
如Rennie 和 Srebro 提出的分段平滑\[9\]

  -
    <math>\\ell(y) = \\begin{cases}

\\frac{1}{2} - ty & \\text{if} \~\~ ty \\le 0, \\\\ \\frac{1}{2} (1 -
ty)^2 & \\text{if} \~\~ 0 \< ty \\le 1, \\\\ 0 & \\text{if} \~\~ 1 \\le
ty \\end{cases}</math>

或平方平滑。

  -
    <math>\\ell_\\gamma(y) = \\begin{cases}

\\frac{1}{2\\gamma} \\max(0, 1 - ty)^2 & \\text{if} \~\~ ty \\ge 1 -
\\gamma \\\\ 1 - \\frac{\\gamma}{2} - ty & \\text{otherwise}
\\end{cases}</math>

Modified Huber loss \(L\)是\(\gamma = 2\)时损失函数的特例，此时
\(L(t,y) = 4 \ell_2(y)\)中。

## 参考文献

[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")
[Category:支持向量机](https://zh.wikipedia.org/wiki/Category:支持向量机 "wikilink")
[Category:损失函数](https://zh.wikipedia.org/wiki/Category:损失函数 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.