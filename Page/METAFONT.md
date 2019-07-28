**Metafont**是一種用於定義矢量字體的編程語言。這也是Metafont[直譯器](../Page/直譯器.md "wikilink")的名稱，其生成的點陣字體，可嵌入到[PostScript](../Page/PostScript.md "wikilink")中。Metafont由[高德納發明](https://zh.wikipedia.org/wiki/高德納 "wikilink")，與也是他發明的[TeX](../Page/TeX.md "wikilink")排版軟體相輔相成。
Metafont的特點之一是所有的字体都是用几何方程定义的，例如，可以用線段及[貝茲曲線](../Page/貝茲曲線.md "wikilink")的相交處來定義點。

## 歷史

美國計算機科學家[高德纳](../Page/高德纳.md "wikilink")（Donald
Knuth）於1977年著手字體製作軟件，並於1979年發佈的第一個版本`METAFONT`。由於原來語言的缺陷，高德纳於1984年開發一個全新的`METAFONT`系統。`METAFONT`有一個與的相似點
，就是每一個更新版本都愈接近一個[數學常數](https://zh.wikipedia.org/wiki/數學常數 "wikilink")（每一個更新版本增加一個小數位，`METAFONT`趋近于[e](https://zh.wikipedia.org/wiki/e_\(數學常數\) "wikilink")，趋近于[π](../Page/圓周率.md "wikilink")）。

## 特点

与很多常见的轮廓字体格式如[TrueType](../Page/TrueType.md "wikilink")和[PostScript Type
1不同](https://zh.wikipedia.org/wiki/PostScript#字体处理 "wikilink")，`METAFONT`字体主要由一定宽度的“笔划”和一些封闭填色区域构成。因此，`METAFONT`字体文件并不描述字形的轮廓，而是描述“笔划”的路径。

`METAFONT`的曲线描述采用三次[样条函数](../Page/样条函数.md "wikilink")，而不是[二次的](https://zh.wikipedia.org/wiki/二次曲线 "wikilink")。

## 使用

虽然一些著名的字体设计师如[Hermann
Zapf已经与高德纳合作用](../Page/赫尔曼·察普夫.md "wikilink")`METAFONT`设计新字体（二者曾合作设计了[AMS
Euler数学字体](../Page/AMS_Euler.md "wikilink")），但这个系统并未在业界被广泛使用。高德纳认为这是由于“让一个艺术家变成一个能够理解如何通过60多个参数设计字体的数学家实在太困难”\[1\]。

## 例子

下列例子給出一個類似字母B的豆子字型。

``` postscript
%file name: beta.mf
%mode_setup;
% Define a beanlike shape for the character B
beginchar("B",11pt#,11pt#,0);
  % Setup coordinates as an equation system
  y1=y2=y3=0;
  y4=y5=y6=h;
  x1=x4=0;
  x2=x5=w;
  x3=x6=2*w;

  % Define pen
  pickup pencircle xscaled 0.2w yscaled 0.04w rotated 45;

  % Draw the character curve
  draw z1..z3..z6{z2-z6}..z5..{z4-z2}z4..cycle;
endchar;

end
```

這會產生下列字型圖樣：

[metafont-example-output.svg](https://zh.wikipedia.org/wiki/File:metafont-example-output.svg "fig:metafont-example-output.svg")

上述例子可由命令列指令來處理 \[2\]：

    mf '\mode=ljfour; mode_setup; input beta.mf'; gftopk beta.600gf beta.600pk

處理後可用於LaTeX檔案\[3\]（所有檔案應存放在相同目錄下，或是使用適當的方法提示TeX系統相關的資訊）：

``` latex
\documentclass{article}

\newfont{\letterbeta}{beta}
\newcommand{\otherbeta}{{\letterbeta B}}

\begin{document}
Let’s try having a strange \otherbeta\ here.
\end{document}
```

最後的PDF檔應如下所示：
[Tex_mf_beta.pdf](https://zh.wikipedia.org/wiki/File:Tex_mf_beta.pdf "fig:Tex_mf_beta.pdf")

## 参考

## 外部連結

  - [The Metafont Tutorial: an online guide to using
    Metafont.](http://metafont.tutorial.free.fr/)

[Category:字体编辑软件](https://zh.wikipedia.org/wiki/Category:字体编辑软件 "wikilink")

1.

2.

3.