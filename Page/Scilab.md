> 本文内容由[Scilab](https://zh.wikipedia.org/wiki/Scilab)转换而来。


**Scilab**是由[法國國立計算機及自動化研究院](https://zh.wikipedia.org/wiki/法國國立計算機及自動化研究院 "wikilink")（l'Institut national de recherche en informatique et en automatique，簡稱INRIA）和[法國國立橋樑學院](../Page/国立桥路学校.md "wikilink")（l'École nationale des ponts et chaussées，簡稱ENPC）开发的[开放源码的](https://zh.wikipedia.org/wiki/开放源码 "wikilink")[科学计算](https://zh.wikipedia.org/wiki/科学计算 "wikilink")[自由软件](../Page/自由软件.md "wikilink")。Scilab一詞來源於英文「**Sci**entific **Lab**oratory」（科學實驗室）詞頭的合并。

目前全世界使用Scilab的人數估計有1000,000人。Scilab也是以[矩陣作為主要的數據類型](https://zh.wikipedia.org/wiki/矩陣 "wikilink")，同時擁有豐富的繪圖功能。Scilab能處理包括[信號處理](https://zh.wikipedia.org/wiki/信號處理 "wikilink")、[統計分析](https://zh.wikipedia.org/wiki/統計分析 "wikilink")、[圖像增強](https://zh.wikipedia.org/wiki/影像處理 "wikilink")、數值[最佳化](https://zh.wikipedia.org/wiki/最佳化 "wikilink")、動態系統仿真等方面的問題。網路上也有不少人為它寫了許多延伸[函式庫](../Page/函式庫.md "wikilink")、豐富了它的功能。

为推广普及Scilab，自2002年起，INRIA跟[中国科学院](../Page/中国科学院.md "wikilink")自动化研究所每年组织一次Scilab竞赛\[1\]。

## 歷史

Scilab始源於80年代在INRIA開發的計算機輔助控制系統設計軟件Blaise，其最初的開發者為弗朗斯瓦·底列貝克（François Delebecque）和舍齊·史迪爾（Serge Steer）。Blaise的誕生受到了克里夫·莫勒爾（Steve Moler）當時用[Fortran](../Page/Fortran.md "wikilink")編寫的[MATLAB](../Page/MATLAB.md "wikilink")軟件的啓發\[2\]。

1984年，Blaise更名為Basile，由Simulog（INRIA的第一個研發小組）負責分發。

90年代初，Simulog停止分發Basile。Basile更名為Scilab，由來自[ENPC的Jean](../Page/国立桥路学校.md "wikilink")-Philippe Chancelier和來自[INRIA的François](https://zh.wikipedia.org/wiki/法国国家信息与自动化研究所 "wikilink") Delebecque，Claude Gomez，Maurice Goursat，Ramine Nikoukhah，Serge Steer共6人組成的Scilab小組繼續進行開發工作。後來INRIA決定把Scilab作為開源軟件分發。1994年1月2日，Scilab的第一個釋放版本，Scilab 1.1上傳到一個匿名ftp站點。直到2002年底，Scilab都是由6人小組与一些外部開發者一道共同開發並發佈的\[3\]。從2003年開始，由新成立的Scilab協會負責Scilab軟件的後續開發以及相關技術支持。

Scilab協會於2005年啟動了基於Java的Scilab 5.x的開發，而之前的部分Scilab開發小組成員（包括ENPC以及部分INRIA成員）則在之前的Scilab 4.x的基礎上另外發布了基於[GTK+的Scilab版本](https://zh.wikipedia.org/wiki/GTK+ "wikilink")：（該版本集成了）。

Scilab協會在2008年加入Digiteo基金會，自此Scilab協會開始在Digiteo基金會的引領下對Scilab進行開發，這種情況一直持續到2012年6月。另外也是在2008年，Scilab開始基於許可協議發行，CeCILL是一個與[GPL兼容的開源許可協議](https://zh.wikipedia.org/wiki/GPL "wikilink")。

為了保證Scilab的長遠發展，在INRIA的支持下，Scilab事業公司於2010年6月成立。自2012年7月開始，Scilab事業公司將完全負責對Scilab後續版本的開發與發布，此外公司也提供關於Scilab的專業服務與支持。2017年，Scilab事業公司被[ESI集團](../Page/ESI集團.md "wikilink")併購。

## 主要特點

  - 大約1700個用於科學和工程計算的數學函數
  - 2維和3維可視化數據圖形
  - 約束/無約束、連續/離散問題的最佳化
  - 數據分析與建模
  - 控制系統的分析與設計
  - 信號處理
  - 用於自定義開發擴展功能的API

## GUI界面

Scilab的GUI界面與MATLAB很類似，其主要部分是一个用於輸入命令的交互式控制臺；在Scilab控制臺中按Tab鍵，Scilab會依據游標之前的文字自動補齊變數、函式或檔案的名稱；此外，Scilab也會保存控制臺中輸入的命令，通過按「"↑","↓"」鍵就能前後檢索已鍵入的命令。

## Scilab語言

Scilab語言也是一种交互性的数学脚本语言，語法與MATLAB語言相近，也以矩陣作为數據的基本組織形式。Scilab還有一個可以把MATLAB源程序轉換為Scilab源程序的代碼翻譯器。

  - 數據類型

1.常數（constant）類型（數據前面加%表示該數據是Scilab已經定義好的）

    -->a = [1.5-2.5*%i, %pi; %inf, -1.5e2]
     a =
        1.5 - 2.5i    3.1415927
        Inf         - 150.

2.字符串（string）類型

    -->b = ["123", "456"; "Let''s use", "SciLab!"]
     b =
    !123        456      !
    !                    !
    !Let's use  SciLab!  !

3.有理式（rational）類型

    -->x = poly（0, "x"）; //定义x为多项式
    -->c = [x/（x^2+1）, 2; -1/x, x^3+1]
     c =
          x       2
        -----     -
             2
        1 + x     1

                       3
      - 1         1 + x
        -         -----
        x           1

4.表（list）類型（類似于C語言中的“結構”數據類型，即可以包含不同類型的元素）

```
-->d = list（[1,2;3,4], "abc", poly([1,2,3],"x","c"）)
 d =

       d (1)
    1.    2.
    3.    4.

       d (2)
 abc

       d (3)
               2
    1 + 2x + 3x
```

  - 編程

1.if選擇語句

``` scilab
-->x = 1;
-->if  x > 0
-->    y = x - 1;
-->elseif  x < 0
-->    y = x + 1;
-->else
-->    y = x;
-->end
-->y
 y =
    0.
```

2.select選擇語句

``` scilab
-->x = 1;
-->select  x
-->case  1
-->    y = x + 1;
-->case  -1
-->    y = x - 1;
-->else
-->    y = x;
-->end
-->y
 y =
    2.
```

3.for循環語句

``` scilab
-->x = [];
-->for  k = 1:4
-->    x (k) = 2 * k;
-->end
-->x'
 ans =
    2.    4.    6.    8.
```

4.while循環語句

``` scilab
-->k = 1;
-->x = [];
-->while  k < 5
-->    x (k) = 2 * k;
-->    k = k + 1;
-->end
-->x'
 ans =
    2.    4.    6.    8.
```

  - 另外，可以在while或for循環語句中使用break關鍵字跳出循環

5.自定義函數

``` scilab
-->function  [a,b] = mp（x1,x2）
-->    a = x1 + x2;
-->    b = x1 * x2;
-->endfunction
-->[x,y] = mp（1+%i,2）
 y =
    2. + 2.i
 x =
    3. + i
```

## 工具箱

同MATLAB軟件中的[Simulink](../Page/Simulink.md "wikilink")工具箱類似，Scilab也擁有一個用於混合動態系統建模/仿真的工具箱：[Xcos](https://zh.wikipedia.org/wiki/Xcos "wikilink")（它代替了Scilab 5.2之前的）。用戶可以自己編寫擴展的工具模塊並添加於Scilab中，或者使用別人已編寫好的擴展模塊。Scilab提供了一個模塊管理器（ATOMS）統一對擴展模塊進行搜索、安裝和更新。在Scilab官方的[wiki頁面](https://web.archive.org/web/20130417071949/http://wiki.scilab.org/Matlab%20Toolboxes%20in%20Scilab)上對Scilab工具箱和MATLAB工具箱之間的相關性進行了詳細對比。

Scilab的其它一些工具箱：圖像處理（、SIVP）、小波變換（Scilab Wavelet Toolbox）、串口通信（Serial Communication Toolbox）、圖形和網絡計算（Metanet）、GPU計算（sciGPGPU）、航天動力學分析（CelestLab）等等。

Scilab的許多工具箱可以在網站[ATOMS Portal](http://atoms.scilab.org/)或者[Scilab forge](http://forge.scilab.org/)上找到。

## 参考文献

### 引用

### 网页

  - [Scicos \> History](http://www.scicos.org/history.html) - Scilab/Scicos history

## 參見

  - [MATLAB](../Page/MATLAB.md "wikilink")
  - [GNU Octave](../Page/GNU_Octave.md "wikilink")
  - [FreeMat](https://zh.wikipedia.org/wiki/FreeMat "wikilink")

## 外部链接

  - [Scilab官網](http://www.scilab.org)
  - [Scilab Enterprises](http://www.scilab-enterprises.com)
  - [Scilab Google Group](http://groups.google.com/group/comp.soft-sys.math.scilab?lnk=li)
  - [嵌入式系统Scilab：Scilab-EMB](https://web.archive.org/web/20080723125935/http://www.zjufrontech.com/scilab/)
  - [Scilab正體中文計畫](https://archive.is/20130503080812/http://science.openfoundry.org/ade/scilab/)
  - [中文Scilab教育論壇](http://groups.google.com.tw/group/ade-scilab?hl=zh-TW)
  - [中文Scilab文件](http://science.openfoundry.org/scilab.html)
  - [Scilab簡體中文主页](http://www.scilab.org.cn)
  - [Scilab中文论坛](http://www.scilab.org.cn/bbs)
  - [2008年Scilab竞赛主页](http://www.scilab.org.cn/scilab2008/index.html)

{{-}}

[Category:數值分析軟件](https://zh.wikipedia.org/wiki/Category:數值分析軟件 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.
2.
3.