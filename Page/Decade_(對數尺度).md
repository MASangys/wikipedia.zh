> 本文内容由[Decade \(對數尺度\)](https://zh.wikipedia.org/wiki/Decade \(對數尺度\))转换而来。


[Three_decades.png](https://zh.wikipedia.org/wiki/File:Three_decades.png "fig:Three_decades.png") [Three_decades_x10.png](https://zh.wikipedia.org/wiki/File:Three_decades_x10.png "fig:Three_decades_x10.png")

**decade**是在[對數尺度](../Page/對數尺度.md "wikilink")下，二個數量級之間10倍的差距。decade和[octave都是用來表示二個](https://zh.wikipedia.org/wiki/octave_\(電子\) "wikilink")[頻率之間的比例](https://zh.wikipedia.org/wiki/頻率 "wikilink")，也可能視為是對數單位\[1\]\[2\]。decade常用來描述頻率或是電子系統（如及[电子滤波器](../Page/电子滤波器.md "wikilink")）的[頻率響應](https://zh.wikipedia.org/wiki/頻率響應 "wikilink")。

## 計算

decade中10倍的差距可以和參考值相乘或相除，因此100 往上一個decade是1000 Hz，往下一個decade是10 Hz。重點是10倍的差距，單位本身不是重點，因此3.14 rad/s是31.4 rad/s往下一個decade。

若要確認二個頻率\(f_1\)及\(f_2\)之間相距多少decade，可以計算二個頻率的[對數](https://zh.wikipedia.org/wiki/對數 "wikilink")：

  - \(\log_{10} (f_2/f_1)\over\log_{10} (10)\) decades\[3\]\[4\]

或是[自然對數](../Page/自然對數.md "wikilink")：

  - \(\ln f_2 - \ln f_1\over\ln 10\) decades\[5\]

<!-- end list -->

  -
    從15 rad/s到150,000 rad/s有多少decade？
    \[\log_{10} (150000/15) = 4\] decades
    從3.2 GHz到4.7 MHz有多少decade？
    \[\log_{10} (4.7\times10^6 / 3.2\times10^9 ) = -2.83\] decades
    一個octave等於多少decade？
      -
        octave等於二倍，因此\(\log_{10} (2) = 0.301\) decades per octave

## 繪圖表示及分析

在表示電子電路的[頻率響應](https://zh.wikipedia.org/wiki/頻率響應 "wikilink")（例如[波德圖](../Page/波德圖.md "wikilink")），常常會在橫軸以頻率的decade對數尺度來表示，不會用其他線性的單位，因為用線性方式無法表示很大的頻率。例如的頻段是在20 Hz到20 kHz，用頻率的decade可以完整表示整個頻段。一般這類的圖會從1 Hz（10<sup>0</sup>）開始，最高頻率可能會到100 kHz（10<sup>5</sup>），可以完整的放在標準的半對數。若是用線性尺度，一個大刻度表示10，只能表示0到50。

[Butterworth_filter_bode_plot.svg](https://zh.wikipedia.org/wiki/File:Butterworth_filter_bode_plot.svg "fig:Butterworth_filter_bode_plot.svg")中有decade的概念，橫軸各一大格都是一個decade\]\]

電子設備的頻率響應常以per decade的方式表示。例如圖中的波德圖在停止帶的斜率是-20 [dB](https://zh.wikipedia.org/wiki/分貝 "wikilink")/decade，表示頻率越增加10倍，其增益減少20 dB。

## 相關條目

  -
## 參考資料

[Category:圖表](https://zh.wikipedia.org/wiki/Category:圖表 "wikilink") [Category:對數尺度量測](https://zh.wikipedia.org/wiki/Category:對數尺度量測 "wikilink")

1.  Levine, William S. (2010). *The Control Handbook: Control System Fundamentals*, p.9-29. ISBN 9781420073621.
2.  Perdikaris, G. (1991). *Computer Controlled Systems: Theory and Applications*, p.117. ISBN 9780792314226.
3.
4.
5.  Davis, Don and Patronis, Eugene (2012). *Sound System Engineering*, p.13. ISBN 9780240808307.