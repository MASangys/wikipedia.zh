**list comprehension**是程序设计语言的一类语法结构，用于基于描述创建一个列表（list）数据结构。相当于数学上的 *[集合建構式符號](../Page/集合建構式符號.md "wikilink")*。但不同于与函数。

list comprehension没有统一的中文译法。有译作列表生成、列表构建、列表理解等。

## 概述

考虑下述[集合建構式符號](../Page/集合建構式符號.md "wikilink")：

\[S=\{2\cdot x\mid x \in \mathbb{N},\ x^2>3\}\]

可读作"\(S\)是所有"2乘\(x\)"的数的集合，满足\(x\)是自然数(\(\mathbb{N}\))且\(x\)的平方大于\(3\)."

\[S=\{\underbrace{2\cdot x}_{\color{Violet}{\text{output expression}}}\mid \underbrace{x}_{\color{Violet}{\text{variable}}} \in \underbrace{\mathbb{N}}_{\color{Violet}{\text{input set}}},\ \underbrace{x^2>3}_{\color{Violet}{\text{predicate}}}\}\]

  - \(x\)是输入集的变量
  - \(\mathbb{N}\)表示输入集，这里是自然数
  - \(x^2>3\)是[谓词表示式用于从输入集筛选](https://zh.wikipedia.org/wiki/谓词 "wikilink")
  - \(2\cdot x\)是输出表达式，用于产生新的集合
  - \(\{\}\)花括号表示输出值组成集合
  - \(\mid\) \(,\)竖杠与逗号为分隔符

### Set comprehension

Python语言用于生成集合的语法示例：

``` python
>>> s = {v for v in 'ABCDABCD' if v not in 'CB'}
>>> print(s)
{'A', 'D'}
>>> type(s)
<class 'set'>
>>>
```

### Dictionary comprehension

Python语言用于生成字典（[关联数组](../Page/关联数组.md "wikilink")）的语法示例：

``` python
>>> s = {key: val for key, val in enumerate('ABCD') if val not in 'CB'}
>>> s
{0: 'A', 3: 'D'}
>>>
```

### 平行的list comprehension

Python语言的语法示例：

``` python
# 正常的list comprehension
>>> a = [(x, y) for x in range(1, 6) for y in range(3, 6)]
[(1, 3), (1, 4), (1, 5), (2, 3), (2, 4), ...

# 平行的/zipped list comprehension
>>> b = [x for x in zip(range(1, 6), range(3, 6))]
[(1, 3), (2, 4), (3, 5)]
```

### C++

C ++没有直接支持列表推导的任何语言特性，但[运算符重载](../Page/运算符重载.md "wikilink")（例如，重载|，\>\>，\>\> =）已成功用于为“嵌入式”查询[领域特定语言提供表达式语法](https://zh.wikipedia.org/wiki/领域特定语言 "wikilink")。 或者，可以使用[erase-remove idiom来构造列表推导以选择容器中的元素](https://zh.wikipedia.org/wiki/erase-remove_idiom "wikilink")，并使用STL算法for_each来转换它们。

``` cpp
#include <algorithm>
#include <list>
#include <numeric>

using namespace std;

template<class C, class P, class T>
C comprehend(C&& source, const P& predicate, const T& transformation)
{
  // 初始化目标
  C d = forward<C>(source);

  // 元素过滤
  d.erase(remove_if(begin(d), end(d), predicate), end(d));

  // 应用变换
  for_each(begin(d), end(d), transformation);

  return d;
}

int main()
{
  list<int> range(10);
      // range 是一个有10个元素的list, 全是0
  iota(begin(range), end(range), 1);
      // range 现在包含 1,2,...,10

  list<int> result = comprehend(
      range,
      [](int x){return x*x <= 3;},
      [](int &x){x *= 2;});
      // 结果现在包含 4,6,...,20
}
```

## 外部链接

  - SQL-like set operations with list comprehension one-liners in the [Python Cookbook](http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/159974)
  - [Discussion on list comprehensions in Scheme and related constructs](http://lambda-the-ultimate.org/classic/message11326.html)
  - [List Comprehensions across languages](http://langexplr.blogspot.com/2007/02/list-comprehensions-across-languages_18.html)

[Category:程序结构](https://zh.wikipedia.org/wiki/Category:程序结构 "wikilink")