> 本文内容由[3SUM](https://zh.wikipedia.org/wiki/3SUM)转换而来。


在[计算复杂度理论中](https://zh.wikipedia.org/wiki/计算复杂度理论 "wikilink"), **3SUM**问题是指如下的问题：给定一个包含n个实数的集合，判断其中是否包含3个和为0的元素。问题也可以推广到一个更一般化的版本，rSUM，是要求判断集合中是否存在r个数的和为0。3SUM问题可以很容易地在\(O(n^2)\)的时间复杂度内解决。对于某些特化的计算模型，这已经达到了它们\(\Omega(n^{\lceil r/2 \rceil})\)的复杂度下界。

人们曾经猜想任何3SUM问题的确定性算法都至少需要\(\Omega(n^2)\)的时间复杂度。然而在2014年，最初的3SUM被Allan Grønlund和Seth Pettie否决了。他们给出了一个能在能在\(O(n^2 / ({\log n} / {\log \log n})^{2/3})\)的时间复杂度内求解3SUM问题的确定性算法。\[1\]目前仍然有人猜想3SUM是不可能在\(O(n^{2-\Omega(1)})\)的时间复杂度内解决的。

## 二次时间复杂度算法

设输入数据存储与数组\(S[0..n-1]\)，3SUM问题可以通过[散列表在平均](https://zh.wikipedia.org/wiki/散列表 "wikilink")\(O(n^2)\)的时间复杂度内解决。方法是先将S中的元素全部插入到一个散列表中，然后对于每一个数组下标对\((i, j)\)，检查\(-(S[i]+S[j])\)是否在散列表中即可。

一个更好的方法是，先将输入数据排序，然后用一种巧妙的方法测试所有可能的输入组合，而避免使用[二分查找](https://zh.wikipedia.org/wiki/二分查找 "wikilink")。这种办法即使在最坏情况下也可以保证\(O(n^2)\)的时间复杂度，它的伪代码如下所示：\[2\]

` sort(S);`
` `**`for`**` i=0 `**`to`**` n-3 `**`do`**
`    a = S[i];`
`    start = i+1;`
`    end = n-1;`
`    `**`while`**` (start < end) `**`do`**
`       b = S[start]`
`       c = S[end];`
`       `**`if`**` (a+b+c == 0) `**`then`**
`          `**`output`**` a, b, c;`
`          // Continue search for all triplet combinations summing to zero.`
`           end = end - 1`
`       `**`else`**` `**`if`**` (a+b+c > 0) `**`then`**
`          end = end - 1;`
`       `**`else`**
`          start = start + 1;`
`       `**`end`**
`    `**`end`**
` `**`end`**

下面的例子展示了算法在一个较小的数组上是如何执行的。变量**a**的当前值以绿色标记，而**b**和**c**的当前值以红色标记。

` `<span style="color:green">`-25`</span>` `<span style="color:red">`-10`</span>` -7 -3 2 4 8 `<span style="color:red">`10`</span>`  (a+b+c==-25)`
` `<span style="color:green">`-25`</span>` -10 `<span style="color:red">`-7`</span>` -3 2 4 8 `<span style="color:red">`10`</span>`  (a+b+c==-22)`
` . . .`
` `<span style="color:green">`-25`</span>` -10 -7 -3 2 4 `<span style="color:red">`8`</span>` `<span style="color:red">`10`</span>`  (a+b+c==-7)`
` -25 `<span style="color:green">`-10`</span>` `<span style="color:red">`-7`</span>` -3 2 4 8 `<span style="color:red">`10`</span>`  (a+b+c==-7)`
` -25 `<span style="color:green">`-10`</span>` -7 `<span style="color:red">`-3`</span>` 2 4 8 `<span style="color:red">`10`</span>`  (a+b+c==-3)`
` -25 `<span style="color:green">`-10`</span>` -7 -3 `<span style="color:red">`2`</span>` 4 8 `<span style="color:red">`10`</span>`  (a+b+c==2)`
` -25 `<span style="color:green">`-10`</span>` -7 -3 `<span style="color:red">`2`</span>` 4 `<span style="color:red">`8`</span>` 10  (a+b+c==0)`

我们可以从上面的过程中看出这个算法为什么是正确的。假设3SUM问题有一组解a + b + c = 0。首先单向移动的最左侧下标必然会到达a，而之后剩下的两个下标会有一个先遇到b或者c，而根据a+b+c \> 0时移动右侧下标，反之移动左侧下标的规则，在此之后先遇到的下标会保持不动，直到我们移动另外一个下标找到对应的那一组解为止。因此对于3SUM问题的任意一个解最终都会被这个算法发现。

## 变体

### 总和非零

用下列方法可以搜索出集合中和为任意常数*C*的三个元素：

  - 将集合中每个元素分别减去*C*/3；
  - 对新集合使用3SUM算法求解。

### 三个不同数组

我们也能从三个整数集合中分别找出一个元素使其和为零，即对于给定的三个整数集合X、Y、Z，找出三个数使得0}}。下文记单集合的3SUM问题为3SUM×1，三集合的3SUM问题为3SUM×3，则3SUM×3按下列步骤即可转化为3SUM×1：

  - 对*X*、*Y*、*Z*集合中所有元素，取，，；
  - 令*S*为*X*、*Y*、*Z*的并集；
  - 用3SUM×1的解法求出满足且0}}的三个元素；
  - 因为总和的LSD（least significant digit，最低位）为零，故的LSD一定为1、2、7（不一定按顺序）。不失一般性，设的LSD分别为1、2、7；
  - 最终解即为。

根据第一步中的变换，一定有。\[3\]

## 参考资料

[Category:計算幾何](https://zh.wikipedia.org/wiki/Category:計算幾何 "wikilink") [Category:多项式时间问题](https://zh.wikipedia.org/wiki/Category:多项式时间问题 "wikilink")

1.
2.  [Visibility Graphs and 3-Sum](http://www.ti.inf.ethz.ch/ew/courses/CG09/materials/v12.pdf) by Michael Hoffmann
3.  For a reduction in the other direction, see [Variants of the 3-sum problem](http://cs.stackexchange.com/questions/37888/variants-of-the-3-sum-problem).