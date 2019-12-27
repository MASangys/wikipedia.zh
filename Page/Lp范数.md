\(L_p\)-范数（英语：\(L_p\)-norm，亦称\(\ell_p\)-范数、\(p\)-范数)是[向量空间](../Page/向量空间.md "wikilink")中的一组[范数](../Page/范数.md "wikilink")。\(L_p\)-范数与[幂平均](../Page/幂平均.md "wikilink")有一定的联系。它的定义如下：

\(L_p(\vec x) = \lVert\vec x\rVert_{p} = \Bigl(\sum_{i = 1}^{n}|x_{i}|^{p}\Bigr)^{1 / p},\qquad\vec x = \{x_1, x_2, \ldots, x_n\},\,p\geqslant 1.\)

## \(p\) 的不同取值

[Unit_Circle_of_Lp-norm,_in_R2_space.png](https://zh.wikipedia.org/wiki/File:Unit_Circle_of_Lp-norm,_in_R2_space.png "fig:Unit_Circle_of_Lp-norm,_in_R2_space.png")

  -
  - \(p = 0\)：\(\lVert\vec x\rVert_0 = \#(i),\quad \text{with }x_i \neq 0\)。注意，这里的\(L_0\)-范数并非通常意义上的范数（不满足[三角不等式](../Page/三角不等式.md "wikilink")或[次可加性](../Page/次可加性.md "wikilink")）。\[1\]

  - \(p = 1\)：\(\lVert\vec x\rVert_1 = \sum\limits_{i = 1}^{n}|x_i|\)，即\(L_1\)-范数是向量各分量绝对值之和，又称[曼哈顿距离](https://zh.wikipedia.org/wiki/曼哈顿距离 "wikilink")。

  - \(p = 2\): \(\lVert\vec x\rVert_2 = \sqrt{\sum\limits_{i = 1}^{n}|x_i|^{2}}\)，此即[欧氏距离](https://zh.wikipedia.org/wiki/欧氏距离 "wikilink")。

  - \(p = +\infty\): \(\lVert\vec x\rVert_\infty = \lim_{p \to +\infty}\Bigl(\sum\limits_{i = 1}^{n}|x_{i}|^{p}\Bigr)^{1 / p} = \max_{i}|x_i|\)，此即[无穷范数或](https://zh.wikipedia.org/wiki/无穷范数 "wikilink")[最大范数](https://zh.wikipedia.org/wiki/最大范数 "wikilink")。

## 在机器学习中的应用

在机器学习中，为了对抗[过拟合](https://zh.wikipedia.org/wiki/过拟合 "wikilink")、提高模型的泛化能力，可以通过向[目标函数当中引入参数向量的](https://zh.wikipedia.org/wiki/目标函数 "wikilink")\(L_p\)-范数来进行[正则化](https://zh.wikipedia.org/wiki/正则化 "wikilink")。其中最常用的是引入\(L_1\)-范数的\(L_1\)-正则项和引入\(L_2\)-范数的\(L_2\)-正则项；前者有利于得到[稀疏解](https://zh.wikipedia.org/wiki/稀疏解 "wikilink")，后者有利于得到[平滑解](https://zh.wikipedia.org/wiki/平滑解 "wikilink")。

## 参考文献

[Category:線性代數](https://zh.wikipedia.org/wiki/Category:線性代數 "wikilink") [Category:泛函分析](https://zh.wikipedia.org/wiki/Category:泛函分析 "wikilink") [Category:度量几何](https://zh.wikipedia.org/wiki/Category:度量几何 "wikilink") [Category:范数](https://zh.wikipedia.org/wiki/Category:范数 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")

1.  但在 \(\mathbb R^{1}\) 当中，它就是欧氏距离；在\(\mathbb R^{0}\)当中，它是平凡的。