> 本文内容由[Maxima](https://zh.wikipedia.org/wiki/Maxima)转换而来。


**Maxima** 是一种用[LISP](../Page/LISP.md "wikilink") 编写的[计算机代数系统](https://zh.wikipedia.org/wiki/计算机代数系统 "wikilink")（Computer Algebra System），用于公式推导和符号计算，它是一套[自由软件](../Page/自由软件.md "wikilink")，在[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")下發行。它由[麻省理工学院](../Page/麻省理工学院.md "wikilink")在美国能源部的支持下于60年代末创造的 [Macsyma](https://zh.wikipedia.org/wiki/Macsyma "wikilink") 演变而来。Macsyma 後來慢慢走上商業化的道路，自1982年开始，[Bill Schelter](https://zh.wikipedia.org/wiki/Bill_Schelter "wikilink") 教授默默地维护基于能源部获得的代碼的Macsyma，他把這個軟體叫做Maxima，開放源码。因為版權的問題，Maxima一直没有公開發行，-{只}-有少數人知道有這個軟體的存在。1998年，Maxima 終於得到公開發行的許可，這已是 Schelter 教授努力了16年之後的事。Schelter 教授在2001年去世，不過已經正式成為合法開放源碼軟體，因此陸續有支持開放源碼的程式設計師，學者投入 Maxima 的開發工作。

Maxima 的前身 Macsyma 在當時是非常創新的軟體。現代流行的商業[计算机代数系统軟體](https://zh.wikipedia.org/wiki/计算机代数系统 "wikilink") Maple 及 Mathematica，都是受到Macsyma 的啟發而設計出來的。

## 產品功能

  - 符號運算（含一定的推理能力）
  - 各種基礎數學函數庫
  - 複數和任意精度（use "bfloats"）計算（只受內存限制）
  - 利用 gnuplot 進行2維及3維函數繪圖
  - 可編程
  - 可計算文檔，支持插入，標題單元，章節單元，備註，輸入單元，文字單元，圖片
  - 生成 LaTeX 格式的數學式
  - 方便的加載 Common Lisp 語言或 Maxima 本身的語言寫成的 Package
  - 基於符號而不只是數值的微積分運算
  - 矩陣運算
  - 函數展開化簡缩併
  - 上千頁的手冊

## 版本历史

Maxima 可在 Linux, Mac OS X，及 Windows下編譯。

## 界面

Maxima 核心提供命令行界面，也可使用 wxMaxima, imaxima 提供 GUI 界面。

## 特殊功能

變數及函式名稱自動補齊: 在命令列按下 Ctrl-TAB鍵，Maxima 會提示或自動補齊變數，函式或檔案的名稱。

## Maxima 語言

  - 常用數學

返回x以上最小的整數

    ceiling(x);

高斯地板函數:返回x一下最大的整數

    floor(x);

返回最接近的整數

    round(x);

操作分子分母

    denom(p/q);
    num(p/q);

ev賦值

    (%i1) f: a*x^k+b*x+c$
    (%i2) ev(f, a=1, b=2, c=3, k=2,)

比較大小

    compare(%e^%pi,%pi^%e）;
    compare(1^999,1^99);
    compare(%pi,%e);

  - 2D 繪圖

指定值域

    wxplot2d([%], [x,-5,5], [y,-2,2])$

對數尺度繪圖

    wxplot2d([%], [x,-5,5], [logx])$

  - 迴圈

<!-- end list -->

    for i=1 thou 20
    do (if mod(i,3)=0
         then print(i));

    series: 1$
    term: exp(sin(x))$
     for p: 1 unless p>7 do
     (term:diff(term, x) /p,
     series: series + subst(x=0, term)*x^p)$
     series;

  - 矩陣

M . M k次

    M^^k

  - 其他

搜尋手冊

    ? x

模糊搜索

    ?? x

數學式轉換 LaTeX 語法

    tex(%);

## 相似軟體

  - [Maple](../Page/Maple.md "wikilink")
  - [MATLAB](../Page/MATLAB.md "wikilink")
  - [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")
  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [Scilab](../Page/Scilab.md "wikilink")
  - [Sage](../Page/Sage.md "wikilink")

## 外部链接

  -
  - [Maxima入门介绍](https://web.archive.org/web/20060509180941/http://dsec.pku.edu.cn/~yuhj/wiki/maxima.html)（簡）

  - [Maxima手冊（英）](http://maxima.sourceforge.net/docs/manual/maxima.html)

[Category:Common_Lisp软件](https://zh.wikipedia.org/wiki/Category:Common_Lisp软件 "wikilink") [Category:Linux计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Linux计算机代数系统软件 "wikilink") [Category:MacOS计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:MacOS计算机代数系统软件 "wikilink") [Category:Windows计算机代数系统软件](https://zh.wikipedia.org/wiki/Category:Windows计算机代数系统软件 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:自由计算机代数系统](https://zh.wikipedia.org/wiki/Category:自由计算机代数系统 "wikilink") [Category:自由教育軟件](https://zh.wikipedia.org/wiki/Category:自由教育軟件 "wikilink") [Category:用Lisp語言編輯的自由軟件](https://zh.wikipedia.org/wiki/Category:用Lisp語言編輯的自由軟件 "wikilink") [Category:使用wxWidgets的软件](https://zh.wikipedia.org/wiki/Category:使用wxWidgets的软件 "wikilink")