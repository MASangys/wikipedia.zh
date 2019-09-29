**Julia**是一种[高级](https://zh.wikipedia.org/wiki/高级语言 "wikilink")[通用](../Page/通用编程语言.md "wikilink")\[1\][动态编程语言](../Page/动态语言.md "wikilink")，它最初是为了满足高性能[数值分析和](https://zh.wikipedia.org/wiki/数值分析 "wikilink")[计算科学](../Page/计算科学.md "wikilink")的需要而设计的，不需要[编译器速度快](../Page/編譯器.md "wikilink")\[2\]\[3\]\[4\]\[5\]，也可用于客户端和服务器的Web用途\[6\]\[7\]、低级[系统编程或用作](https://zh.wikipedia.org/wiki/系統程式設計 "wikilink")[规约语言](https://zh.wikipedia.org/wiki/规约语言 "wikilink")\[8\]。

Julia设计的独特之处包括，[参数多态](../Page/参数多态.md "wikilink")的类型系统，完全[动态语言](../Page/动态语言.md "wikilink")中的类型，以及它[多分派的核心](https://zh.wikipedia.org/wiki/多分派 "wikilink")[编程范型](../Page/编程范型.md "wikilink")。它允许[并发](../Page/并发计算.md "wikilink")、[并行和](../Page/并行计算.md "wikilink")[分布式计算](../Page/分布式计算.md "wikilink")，并直接调用[C和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Fortran](../Page/Fortran.md "wikilink")库而不使用[粘合代码](https://zh.wikipedia.org/wiki/适配器模式 "wikilink")。

Julia拥有[垃圾回收机制](../Page/垃圾回收_\(計算機科學\).md "wikilink") \[9\]，使用[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")，包含了用于[浮点计算](../Page/浮点数.md "wikilink")、[线性代数](../Page/线性代数.md "wikilink")、[随机数生成](../Page/随机数生成.md "wikilink")和[正则表达式](../Page/正则表达式.md "wikilink")匹配的高效库。有许多库可以使用，其中一些（如用于[快速傅里叶变换](../Page/快速傅里叶变换.md "wikilink")的库）已经预先捆绑在Julia里\[10\]。

## 历史

一群拥有各种语言丰富编程经验的[Matlab高级用户](https://zh.wikipedia.org/wiki/Matlab "wikilink")，对现有的科学计算编程工具感到不满——这些软件对自己专长的领域表现得非常棒，但在其它领域却非常糟糕。他们想要的是一个[开源的软件](../Page/开源软件.md "wikilink")，它要像[C语言一般快速而又拥有如同](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Ruby](../Page/Ruby.md "wikilink")的[动态性](../Page/动态语言.md "wikilink")；要具有[Lisp般真正的](https://zh.wikipedia.org/wiki/Lisp "wikilink")[同像性](../Page/同像性.md "wikilink")而又有[Matlab般熟悉的数学记号](https://zh.wikipedia.org/wiki/Matlab "wikilink")；要像[Python](../Page/Python.md "wikilink")般通用、像[R般在统计分析上得心应手](../Page/R语言.md "wikilink")、像[Perl](../Page/Perl.md "wikilink")般自然地处理字符串、像[Matlab般具有强大的线性代数运算能力](https://zh.wikipedia.org/wiki/Matlab "wikilink")、像[shell般](https://zh.wikipedia.org/wiki/shell "wikilink")[胶水语言的能力](https://zh.wikipedia.org/wiki/胶水语言 "wikilink")，易于学习而又不让真正的[黑客](../Page/黑客.md "wikilink")感到无聊；还有，它应该是[交互式的](https://zh.wikipedia.org/wiki/交互式 "wikilink")，同时又是编译型的。\[11\]

该项目大约于2009年中开始。

## 功能

主要用于数值计算。

## 特点

  - 核心语言非常小。标准库用的是Julia语言本身写的
  - 调用许多其它成熟的高性能基础代码。如[线性代数](../Page/线性代数.md "wikilink")、[随机数生成](https://zh.wikipedia.org/wiki/随机数生成器 "wikilink")、[快速傅里叶变换](../Page/快速傅里叶变换.md "wikilink")、字符串处理。
  - 丰富的用于建立或描述[对象的类型语法](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")
  - 高性能，接近于静态编译型语言。包括用户自定义类型等
  - 为并行计算和分布式计算而设计
  - 轻量级协程
  - 优雅的可扩展的类型转换/提升
  - 支持[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，包括但不限于[UTF-8](../Page/UTF-8.md "wikilink")
  - 可直接调用C函数（不需要包装或是借助特殊的[API](https://zh.wikipedia.org/wiki/API "wikilink")）
  - 有类似[shell的进程管理能力](https://zh.wikipedia.org/wiki/shell "wikilink")
  - 有类似[Lisp的](https://zh.wikipedia.org/wiki/Lisp "wikilink")[-{zh-cn:宏;zh-tw:巨集}-以及其它元编程工具](../Page/巨集.md "wikilink")
  - 可與jupyter notebook 一起使用

## 示例

### 生成[Mandelbrot集合](https://zh.wikipedia.org/wiki/Mandelbrot集合 "wikilink")

``` julia
function mandel(z)
    c = z
    max = 80
    for n = 1:max
        if abs(z) > 2
            return n-1
        end
        z = z^2 + c
    end
    return max
end
```

### 随机矩阵统计

``` julia
function randmatstat(t)
    n = 5
    v = zeros(t)
    w = zeros(t)
    for i = 1:t
        a = randn(n,n)
        b = randn(n,n)
        c = randn(n,n)
        d = randn(n,n)
        P = [a b c d]
        Q = [a b; c d]
        v[i] = trace((P.'*P)^4)
        w[i] = trace((Q.'*Q)^4)
    end
    std(v)/mean(v), std(w)/mean(w)
end
```

## 参见

  - [Matlab](https://zh.wikipedia.org/wiki/Matlab "wikilink")
  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [R语言](../Page/R语言.md "wikilink")
  - [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
  - [Sagemath](https://zh.wikipedia.org/wiki/Sagemath "wikilink")

## 参考资料

## 外部链接

  -
  - [源代码](https://github.com/JuliaLang/julia)

  - [中文社区](https://cn.julialang.org)

  - [中文文档](https://docs.juliacn.com/latest/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:2012年軟體](https://zh.wikipedia.org/wiki/Category:2012年軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. (now available with ` using  `[`FFTW`](https://zh.wikipedia.org/wiki/FFTW "wikilink") in current versions; that dependency is one of many moved out of the standard library to a package because it is GPL licensed, and thus is not included in Julia 1.0 by default.)
11. [Why We Created Julia](http://julialang.org/blog/2012/02/why-we-created-julia/)