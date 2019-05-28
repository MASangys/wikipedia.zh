**Leela**是由[比利時程式設計師](https://zh.wikipedia.org/wiki/比利時 "wikilink")所開發的[電腦圍棋軟體](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")。

## 簡介

軟體使用[中國規則](../Page/圍棋規則比較.md "wikilink")\[1\]，支援7x7、9x9、13x13，以及標準19x19棋盤，最大可到25x25\[2\]；支援在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[macOS以及](https://zh.wikipedia.org/wiki/macOS "wikilink")[Linux平台上使用](../Page/Linux.md "wikilink")\[3\]；支援多[CPU及](https://zh.wikipedia.org/wiki/CPU "wikilink")[GPU加速計算](https://zh.wikipedia.org/wiki/GPU "wikilink")（透過[OpenCL界面](../Page/OpenCL.md "wikilink")，需OpenCL
1.1以上版本\[4\]）；難度可以透過計算時間、讓子與貼目調整\[5\]；並提供分析界面讓操作者可以得知Leela對每一步的勝率估算\[6\]。

  - 2016年四月的0.4.6版\[7\]開始提供免費的完整版本。在這之前免費的版本為Leela lite，不支援19x19以及更大的盤面。
  - 2016年六月的0.6.2版\[8\]開始使用深度[卷积神经网络](../Page/卷积神经网络.md "wikilink")（DCNN），並且透過[OpenCL使用](../Page/OpenCL.md "wikilink")[GPU計算DCNN](https://zh.wikipedia.org/wiki/GPU "wikilink")，估算這使得棋力大幅增強（約六子）。
  - 2016年九月的0.7.0版\[9\]將最大盤面從37x37降至25x25，並且改善各種效能。估算大約比0.6.2版強半子。
  - 2016年十一月的0.8.0版\[10\]大幅改善[CPU與](https://zh.wikipedia.org/wiki/CPU "wikilink")[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")（尤其是[Nvidia的部份](https://zh.wikipedia.org/wiki/Nvidia "wikilink")）的計算效能。估算大約比0.7.0版強1至2子（依照硬體差異）。
  - 2017年二月的0.9.0版\[11\]支援7x7盤面，並且改善效能。估算大約比0.8.0版強1到2子。
  - 2017年五月的0.10.0版\[12\]支援[Linux與](../Page/Linux.md "wikilink")[macOS的圖形化界面](https://zh.wikipedia.org/wiki/macOS "wikilink")。
  - 2017年十月的0.11.0版\[13\]將[Windows版本改用](https://zh.wikipedia.org/wiki/Windows "wikilink")[Clang](../Page/Clang.md "wikilink")/[LLVM編譯](../Page/LLVM.md "wikilink")（原先使用[MSVC2017編譯](../Page/Microsoft_Visual_Studio.md "wikilink")），這使得蒙地卡羅評估（）速度快了15%。

## 成績

Leela在2008年的[奧林匹亞電腦遊戲程式競賽中](../Page/奧林匹亞電腦遊戲程式競賽.md "wikilink")，圍棋19x19項目得到第三名\[14\]，圍棋9x9項目得到第二名\[15\]。並且在2017年的第一屆[世界智能围棋公开赛初賽取得第八名](https://zh.wikipedia.org/wiki/世界智能围棋公开赛 "wikilink")\[16\]。

### CGOS

目前在[CGOS上最強的帳號為](../Page/CGOS.md "wikilink")`Leela-0.10.5-16t1g`\[17\]，這個帳號是使用[AMD
Ryzen](../Page/AMD_Ryzen.md "wikilink")
1700與[Nvidia](https://zh.wikipedia.org/wiki/Nvidia "wikilink") GeForce
GTX 1080 Ti運算\[18\]，BayesElo約3590分\[19\]。

目前最新版0.11.0版中，表現最好的帳號是`Leela0110_vega6c`\[20\]，BayesElo約3570分\[21\]。

另外有志願者將0.11.0版設定特殊參數放到CGOS上與其他軟體比較（即`leela-0.11.0-p1600`\[22\]），這是為了與[Leela
Zero比較](../Page/Leela_Zero.md "wikilink")，所以使用與Leela
Zero測試時相同的參數。這個版本BayesElo約3070分\[23\]。

## 相關連結

  - [AlphaGo](../Page/AlphaGo.md "wikilink")
  - [Leela Zero](../Page/Leela_Zero.md "wikilink")
  - [電腦圍棋](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")
  - [圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")

## 參考文獻

## 外部連結

  -

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink")
[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")
[Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink")
[Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink")

1.

2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.

15.

16.

17.

18.

19.

20.

21.
22.

23.