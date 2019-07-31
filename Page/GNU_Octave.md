**GNU Octave**是一种采用[高级](https://zh.wikipedia.org/wiki/高级语言 "wikilink")[编程语言](../Page/编程语言.md "wikilink")的主要用于[数值分析的软件](https://zh.wikipedia.org/wiki/数值分析 "wikilink")。Octave有助于以数值方式解决线性和非线性问题，并使用与[MATLAB](../Page/MATLAB.md "wikilink")兼容的语言进行其他数值实验。它也可以作为[面向批处理的语言使用](https://zh.wikipedia.org/wiki/批处理任务 "wikilink")。因为它是[GNU計劃](../Page/GNU計劃.md "wikilink")的一部分，所以它是[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")条款下的[自由软件](../Page/自由软件.md "wikilink")。

Octave是MATLAB的主要[自由替代品之一](../Page/自由软件.md "wikilink")，其他还有[Scilab](../Page/Scilab.md "wikilink")和[FreeMat](https://zh.wikipedia.org/wiki/FreeMat "wikilink")。\[1\]\[2\]\[3\]\[4\] 然而，与Octave相比，Scilab更少强调与MATLAB的（双向）句法兼容性。\[5\]\[6\]\[7\]

## 歷史

系統性開發則是由John W. Eaton在1992年接手才開始的。 第一個[alpha](https://zh.wikipedia.org/wiki/alpha "wikilink")[測試版是在](../Page/软件测试.md "wikilink")1993年1月4日釋出，1.0穩定版則是在1994年2月17日釋出\[8\]。

其名稱與音樂上的[八度](../Page/八度.md "wikilink")沒有直接關係。該軟體乃是以一位早期[開發群的成員](https://zh.wikipedia.org/wiki/軟體開發 "wikilink")，同時也以敏於處理數值逼近問題著稱的前[化工系教授](https://zh.wikipedia.org/wiki/化學工程 "wikilink")[奧克塔夫·列文斯比爾](../Page/奧克塔夫·列文斯比爾.md "wikilink")（Octave Levenspiel）之名命名的。

## 技術細節

  - Octave是以[C++](../Page/C++.md "wikilink")的[標準模板函式庫編程而成](../Page/标准模板库.md "wikilink")。
  - Octave有自己Octave語言[直譯器](../Page/直譯器.md "wikilink")。
  - Octave可以動態[外掛模組擴充](https://zh.wikipedia.org/wiki/外掛模組 "wikilink")。
  - Octave的直譯器可用[gnuplot及](https://zh.wikipedia.org/wiki/gnuplot "wikilink")[Grace產生圖表及列印](../Page/Xmgrace.md "wikilink")。

## Octave語言

Octave語言是[直譯式及](https://zh.wikipedia.org/wiki/直譯語言 "wikilink")[結構化](https://zh.wikipedia.org/wiki/結構化編程 "wikilink")（類於[第二代的BASIC](https://zh.wikipedia.org/wiki/BASIC#無行號類型_\(結構化\) "wikilink")）的程式語言，支援許多[C語言風格的標準函式功能](https://zh.wikipedia.org/wiki/C語言 "wikilink")，同時可以使用[UNIX的系統呼叫以進行擴充增進功能](https://zh.wikipedia.org/wiki/POSIX "wikilink")，但不支援以[引用](../Page/引用.md "wikilink")的方式傳遞參數。

Octave的核心由一組內建的（built-in）矩陣運算語言（如四則運算）和可載入函式（Loadable Function）組成（例如求矩陣逆inv），其餘能在核心語言之上實現而且性能開銷不會顯著增加的函式呼叫則一般以Octave[腳本的形式存在](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")（例如求解方程組的fsolve函數）。Octave [解释器會自動處理各種不同類型的調用](https://zh.wikipedia.org/wiki/解释器 "wikilink")。

Octave支援[資料建構](https://zh.wikipedia.org/wiki/資料結構 "wikilink")，也支持基本的[物件導向編程](https://zh.wikipedia.org/wiki/物件導向 "wikilink")，但通常仍把它當作[面向過程的](https://zh.wikipedia.org/wiki/面向過程 "wikilink")[程序設計語言來看待](https://zh.wikipedia.org/wiki/程序設計語言 "wikilink")。

它的語法基本上與Matlab一致，嚴謹編寫的程式碼應同時可在Matlab及Octave執行。但若調用了[Matlab工具包](https://zh.wikipedia.org/wiki/Matlab#工具箱 "wikilink")，則一般不能直接在Octave上運行，因爲Octave附帶的工具包與Matlab並不兼容。

由於Octave是以[GNU通用公共許可證授權](https://zh.wikipedia.org/wiki/GNU通用公共許可證 "wikilink")，所以可以自由地複製、流通與使用。Octave可在大部份的[類Unix](https://zh.wikipedia.org/wiki/類Unix "wikilink")[作業系統中執行](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，亦可在[Microsoft Windows中執行](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。在[Mac OS X中運行也是可能的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，但設置較爲複雜。\[9\]

## 特殊功能

  - 變數及函式名稱自動補齊:

在命令列按下TAB鍵，Octave會自動補齊變數，函式或檔案的名稱。Octave會依據游標之前的文字來補齊。

  - 指令回溯:

在互動模式下，Octave會將歷次指令存在暫存檔中以俟呼叫與編輯。

  - 資料建構：

Octave包含了初步的資料建構功能，例如：

    octave:1> x.a = 1; x.b = [1, 2; 3, 4]; x.c = "string";
    octave:2> x.a
    x.a = 1
    octave:3> x.b
    x.b =

      1  2
      3  4

    octave:4> x.c
    x.c = string

  - 短路邏輯算符：

Octave的\`&&'及\`||'的邏輯算符是在[短路的方式下運算](../Page/短路求值.md "wikilink")（如同C語言中的相仿算符），相反於逐算子算符\`&'及\`|'。

  - 遞增與遞減算符:

Octave如同C語言一樣具有可前置或後置的遞增與遞減算符。

  - 例外處理：

Octave以提供初步的[LISP](../Page/LISP.md "wikilink")式`unwind_protect`例外處理模式。通常`unwind_protect`的可表示如下：

``` octave
unwind_protect
  body
unwind_protect_cleanup
  cleanup
end_unwind_protect
```

  - 變數長度參數表列：

Octave提供用於處理未指明參數個數時的函式呼叫機制：利用特殊的`varargin`作為參數來呼叫函式。

``` octave
function s = plus(varargin)
  if(nargin==0)
   s = 0;
  else
   s = varargin{1} + plus (varargin{2:nargin});
  endif
endfunction
```

  - 變數長度回傳表列：

單一函式可以`varargout`這一特殊回傳值來回傳任意數目的值，例如：

``` octave
function varargout = multiassign(data)
  for k=1:nargout
   varargout{k} = data(:,k);
  endfor
endfunction
```

## MATLAB相容性

Octave最初便是模彷[Matlab而設計](https://zh.wikipedia.org/wiki/Matlab "wikilink")，自然與[Matlab有許多相同的功能](https://zh.wikipedia.org/wiki/Matlab "wikilink")。这也使得一部分Matlab程序可以直接或经过少量修改在Octave上运行，一些软件开发小组也使用两者兼容的语法，直接开发可以同时在Matlab和Octave使用的程序。

1.  [矩陣為基礎](https://zh.wikipedia.org/wiki/矩陣 "wikilink")[資料型別之一](https://zh.wikipedia.org/wiki/資料型別 "wikilink")
2.  內建支援[複數](https://zh.wikipedia.org/wiki/複數_\(数学\) "wikilink")
3.  內建功能強大的數學[函式及可擴充的](https://zh.wikipedia.org/wiki/函式 "wikilink")[函式庫](../Page/函式庫.md "wikilink")
4.  使用者可自定[函式](https://zh.wikipedia.org/wiki/函式 "wikilink")

## 参见

  - [Scilab](../Page/Scilab.md "wikilink")
  - [R語言](https://zh.wikipedia.org/wiki/R語言 "wikilink")
  - [開放源代碼軟件列表](https://zh.wikipedia.org/wiki/開放源代碼軟件列表 "wikilink")

## 参考文献

## 外部連結

  - [Octave.org網頁](http://www.octave.org/)
  - [在線支持（含文檔）](http://www.gnu.org/software/octave/support.html)
  - [Octave快記](http://wiki.octave.org/)
  - [Octave-forge社羣開發網頁](http://octave.sourceforge.net/)
  - [Octave教學與技術手冊](http://sites.google.com/site/octavetech/)提供Octave相關教學與範例。
  - [Octave Workshop：一個Octave的整合編程環境](http://www.math.mcgill.ca/loisel/octave-workshop/)
  - [kOctave：圖型介面](https://web.archive.org/web/20070820010055/http://athlone.ath.cx/~matti/kde/koctave/) - 適用於KDE
  - [Octave線上計算](http://www.online-utility.org/math/math_calculator.jsp) - 可在網上執行Octave程式。
  - [Octave FAQ快記有關繪圖的部份](https://web.archive.org/web/20070630220612/http://www.aims.ac.za/wiki/index.php/Octave:Questions)
  - [OctPlot](http://octplot.sourceforge.net/)圖形處理套件，提供高品質的螢幕輸出。
  - [Help-Octave在Gmane的郵件論壇存檔](https://web.archive.org/web/20070929091337/http://dir.gmane.org/gmane.comp.gnu.octave.general)
  - [Octave的MPI toolbox工具箱](https://web.archive.org/web/20080118073725/http://atc.ugr.es/javier-bin/mpitb)利用GNU Octave作並行計算
  - [Xoctave : GNU Octave GUI](http://xoctave.com)

{{-}}

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")

1.

2.

3.

4.

5.
6.

7.

8.

9.