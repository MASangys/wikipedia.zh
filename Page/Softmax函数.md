> 本文内容由[Softmax函数](https://zh.wikipedia.org/wiki/Softmax函数)转换而来。


在[数学](../Page/数学.md "wikilink")，尤其是[概率论和相关领域中](https://zh.wikipedia.org/wiki/概率论 "wikilink")，**Softmax函数**，或称**归一化指数函数**\[1\]<sup>:198</sup>，是[逻辑函数的一种推广](https://zh.wikipedia.org/wiki/逻辑函数 "wikilink")。它能将一个含任意实数的K维向量 \(\mathbf{z}\) “压缩”到另一个K维实向量 \(\sigma(\mathbf{z})\) 中，使得每一个元素的范围都在\((0, 1)\)之间，并且所有元素的和为1。(也可視為一個 (k-1)維的hyperplan,因為總和唯一.所以是subspace)该函数的形式通常按下面的式子给出：

  -
    \(\sigma(\mathbf{z})_j = \frac{e^{z_j}}{\sum_{k=1}^K e^{z_k}}\)    for *j* = 1, …, *K*.

Softmax函数实际上是有限项[离散概率分布的梯度对数归一化](https://zh.wikipedia.org/wiki/离散概率分布 "wikilink")。因此，Softmax函数在包括 多项逻辑回归\[2\]<sup>:206–209</sup> ，多项[线性判别分析](../Page/線性判別分析.md "wikilink")，[朴素贝叶斯分类器](../Page/朴素贝叶斯分类器.md "wikilink")和[人工神经网络](../Page/人工神经网络.md "wikilink")等的多种基于概率的[多分类问题方法中都有着广泛应用](../Page/多元分类.md "wikilink")。\[3\] 特别地，在多项逻辑回归和线性判别分析中，函数的输入是从K个不同的[線性函數](../Page/線性函數.md "wikilink")得到的结果，而样本向量 **x** 属于第 **j** 个分类的概率为：

  -
    \(P(y=j|\mathbf{x}) = \frac{e^{\mathbf{x}^\mathsf{T}\mathbf{w}_j}}{\sum_{k=1}^K e^{\mathbf{x}^\mathsf{T}\mathbf{w}_k}}\)

这可以被视作K个线性函数\(\mathbf{x} \mapsto \mathbf{x}^\mathsf{T}\mathbf{w}_1, \ldots, \mathbf{x} \mapsto \mathbf{x}^\mathsf{T}\mathbf{w}_K\)Softmax函数的[复合](../Page/复合函数.md "wikilink")（\(\mathbf{x}^\mathsf{T}\mathbf{w}\)\(\mathbf{x}\)\(\mathbf{w}\)）。

## 例子

输入向量\([1,2,3,4,1,2,3]\)对应的Softmax函数的值为\([0.024, 0.064, 0.175, 0.475, 0.024, 0.064, 0.175]\)。输出向量中拥有最大权重的项对应着输入向量中的最大值“4”。这也显示了这个函数通常的意义：对向量进行归一化，凸显其中最大的值并抑制远低于最大值的其他分量。 下面是使用Python进行函数计算的示例代码：

``` python
import math
z = [1.0, 2.0, 3.0, 4.0, 1.0, 2.0, 3.0]
z_exp = [math.exp(i) for i in z]
print(z_exp)  # Result: [2.72, 7.39, 20.09, 54.6, 2.72, 7.39, 20.09]
sum_z_exp = sum(z_exp)
print(sum_z_exp)  # Result: 114.98
softmax = [round(i / sum_z_exp, 3) for i in z_exp]
print(softmax)  # Result: [0.024, 0.064, 0.175, 0.475, 0.024, 0.064, 0.175]
```

Python使用numpy计算的示例代码:

``` python
import numpy as np
z = np.array([1.0, 2.0, 3.0, 4.0, 1.0, 2.0, 3.0])
print(np.exp(z)/sum(np.exp(z)))
```

[Julia](../Page/Julia_\(编程语言\).md "wikilink") 的範例：

``` jlcon
julia> A = [1.0, 2.0, 3.0, 4.0, 1.0, 2.0, 3.0]
7-element Array{Float64,1}:
 1.0
 2.0
 3.0
 4.0
 1.0
 2.0
 3.0

julia> exp.(A) ./ sum(exp.(A))
7-element Array{Float64,1}:
 0.0236405
 0.0642617
 0.174681
 0.474833
 0.0236405
 0.0642617
 0.174681
```

## 參考資料

<references />

[Category:人工神经网络](https://zh.wikipedia.org/wiki/Category:人工神经网络 "wikilink") [Category:计算神经科学](https://zh.wikipedia.org/wiki/Category:计算神经科学 "wikilink")

1.  <cite class="citation book">Bishop, Christopher M. (2006). </cite>
2.  <cite class="citation book">Bishop, Christopher M. (2006). </cite>
3.  ai-faq [What is a softmax activation function?](http://www.faqs.org/faqs/ai-faq/neural-nets/part2/section-12.html)