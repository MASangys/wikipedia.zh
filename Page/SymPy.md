**SymPy**是一个符号计算的[Python](../Page/Python.md "wikilink")[库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")。它的目标是成为一个全功能的[计算机代数系统](https://zh.wikipedia.org/wiki/计算机代数系统 "wikilink")，同时保持代码简洁、易于理解和扩展。它完全由Python写成，不依赖于外部库。\[1\]

SymPy支持符号计算、[高精度计算](../Page/高精度计算.md "wikilink")、模式匹配、绘图、解方程、微积分、[组合数学](../Page/组合数学.md "wikilink")、[离散数学](../Page/离散数学.md "wikilink")、几何学、概率与统计、物理学等方面的功能。\[2\]\[3\]

SymPy在新[BSD许可证下开源](../Page/BSD许可证.md "wikilink")。\[4\]

## 用例

求\(f(x) = \frac{x^2+2x+1+(3x+1)\sqrt{x+\ln x}}{x\,\sqrt{x+\ln x}(x+\sqrt{x+\ln x})}\)的积分：

``` python
>>> from sympy import init_printing, integrate, log, sqrt, symbols
>>> init_printing()
>>> x = symbols('x')
>>> g = sqrt(x + log(x))
>>> f = (x ** 2 + 2 * x + 1 + (3 * x + 1) * g) / (x * g * (x + g))
>>> f
 2           ____________
x  + 2⋅x + ╲╱ x + log(x) ⋅(3⋅x + 1) + 1
───────────────────────────────────────
   ⎛      ____________⎞   ____________
 x⋅⎝x + ╲╱ x + log(x) ⎠⋅╲╱ x + log(x)
>>> integrate(f, x)
    ____________        ⎛      ____________⎞
2⋅╲╱ x + log(x)  + 2⋅log⎝x + ╲╱ x + log(x) ⎠
```

## 参考资料

<references />

## 外部链接

  - [SymPy Live](http://live.sympy.org/), 可以在这里在线使用SymPy
  - [SymPy Gamma](http://www.sympygamma.com), SymPy版的[Wolfram
    Alpha](../Page/Wolfram_Alpha.md "wikilink")
  - [SymPy on GitHub](https://github.com/sympy/sympy/),
    SymPy的[GitHub页面](../Page/GitHub.md "wikilink")

[Category:带有Python代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有Python代码示例的条目 "wikilink")
[Category:Linux计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Linux计算机代数系统软件 "wikilink")
[Category:MacOS计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:MacOS计算机代数系统软件 "wikilink")
[Category:Windows计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Windows计算机代数系统软件 "wikilink")
[Category:自由计算机代数系统](https://zh.wikipedia.org/wiki/Category:自由计算机代数系统 "wikilink")
[Category:自由數學軟件](https://zh.wikipedia.org/wiki/Category:自由數學軟件 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")
[Category:Python科学库](https://zh.wikipedia.org/wiki/Category:Python科学库 "wikilink")

1.  [SymPy官方网站](http://sympy.org/)

2.
3.  [Python代数计算库 SymPy - 开源中国](http://www.oschina.net/p/sympy/)

4.