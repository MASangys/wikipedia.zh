**CGOS**（）是[圍棋的對弈網站](https://zh.wikipedia.org/wiki/圍棋 "wikilink")，僅提供給[電腦圍棋程式互相對弈](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")\[1\]。

## 簡介

CGOS提供圍棋軟體在各式棋盤上使用[GTP](https://zh.wikipedia.org/wiki/GTP "wikilink")（）對弈（目前支援9x9、13x13以及標準19x19棋盤\[2\]），系統會自動配對對手進行對弈，並提供[等級分計算排行榜](https://zh.wikipedia.org/wiki/等級分 "wikilink")\[3\]，讓圍棋軟體的開發者可以了解軟體的實力。

## 規則

為了讓程式判斷更為簡單與清楚，採用Tromp–Taylor規則計算勝負（但禁止自殺）\[4\]，該規則接近於於中國規則。[讓子在](../Page/讓子_\(圍棋\).md "wikilink")19x19與13x13為貼7.5目，在9x9的則為7.0目\[5\]。

比賽用時採包乾制，9x9為每方五分鐘，13x13為每方十分鐘，19x19為每方十五分鐘\[6\]。除此之外，系統會在每一步都增加一小段可用時間，以避免軟體本身以為沒有超時，但伺服器卻因為網路傳輸延遲而造成判負的情況\[7\]。

## 排行榜

CGOS採用[等級分的機制計算排行榜](https://zh.wikipedia.org/wiki/等級分 "wikilink")。系統提供兩種排行榜：

  - 第一種為即時更新的Elo\[8\]\[9\]\[10\]，在每次對弈完後就會更新成績，可以較即時得知軟體實力，但僅保留三十天內有下棋的軟體資訊，且排名準確度較差。
  - 第二種為每日更新一次的BayesElo\[11\]\[12\]\[13\]，軟體最少需有100場的成績才會列入排名計算。雖然更新頻率沒有前者Elo高，但因演算法的特性以及場次低標限制，排名較Elo準確\[14\]，而且保留所有歷史資料。一般在討論相對強度時都會以BayesElo為主。

不管哪一種等級分，都會遇到分數漂移的問題（）。CGOS的解法是將[GNU Go](../Page/GNU_Go.md "wikilink")（帳號`Gnugo-3.7.10-a1`\[15\]\[16\]\[17\]）固定在1800分作為基準\[18\]，並且常態參與比賽，以確保軟體分數的穩定性。

### 分數差異與勝率對照

在CGOS官網上有完整的列表\[19\]。常見的對應點為：

  - 差70分時約60%。
  - 差150分時約70%。
  - 差240分時約80%。
  - 差380分時約90%。
  - 差800分時約99%。

### 與人類對應

CGOS的維護者山下宏依照[AlphaGo](../Page/AlphaGo.md "wikilink")相關的論文，以及2018年一月時[Go Ratings的資料](../Page/Go_Ratings.md "wikilink")，推算AlphaGo的各種版本以及人類頂尖棋手在CGOS上可能對應到的BayesElo分數\[20\]：

| 軟體或人類                                                          | BayesElo | [Go Ratings](../Page/Go_Ratings.md "wikilink") | 備註                                                                                |
| -------------------------------------------------------------- | -------- | ---------------------------------------------- | --------------------------------------------------------------------------------- |
| [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")（40 blocks版） | 5422?    | 4450?                                          |                                                                                   |
| [AlphaGo](../Page/Master_\(围棋软件\).md "wikilink")（Master版）      | 5231?    | 4250?                                          |                                                                                   |
| AlphaGo Zero（20 blocks版）                                       | 5022?    | 4050?                                          |                                                                                   |
| [AlphaGo](../Page/AlphaGo.md "wikilink")（Lee版）                 | 4672?    | 3700                                           | Go Ratings的3700分是以[AlphaGo李世乭五番棋](../Page/AlphaGo李世乭五番棋.md "wikilink")中四勝一負的戰績推算。 |
| [朴廷桓](../Page/朴廷桓.md "wikilink")                               | 4592?    | 3620                                           | 發文當時人類在Go Ratings上最高分的棋手。                                                         |
| [柯洁](../Page/柯洁.md "wikilink")                                 | 4590?    | 3618                                           |                                                                                   |
| [井山裕太](../Page/井山裕太.md "wikilink")                             | 4546?    | 3574                                           |                                                                                   |
| [李世乭](../Page/李世乭.md "wikilink")                               | 4514?    | 3542                                           |                                                                                   |
| [DeepZenGo](../Page/DeepZenGo.md "wikilink")                   | 4269     | 3297?                                          | 帳號`Zen-15.7-4c1g`，發文當時在CGOS上BayesElo分數最高的帳號。                                      |
| AlphaGo（Fan版，176 GPU）                                          | 4122?    | 3150                                           |                                                                                   |
| AlphaGo（Fan版，48 CPU與8 GPU）                                     | 3862?    | 2890                                           |                                                                                   |
| [GNU Go](../Page/GNU_Go.md "wikilink")                         | 1800     | 828?                                           | 帳號`Gnugo-3.7.10-a1`，固定的基準分\[21\]。                                                 |

## 知名圍棋軟體

由於CGOS提供了二十四小時都可以自動對弈的環境，有不少知名圍棋的軟體都有官方或愛好者將軟體掛上去測試：

  - [AQ](../Page/AQ_\(圍棋軟體\).md "wikilink")，即`AQ`系列，，免費圍棋軟體中實力最好的圍棋軟體。
  - [DeepZenGo](../Page/DeepZenGo.md "wikilink")，即`Zen`系列。
  - [GNU Go](../Page/GNU_Go.md "wikilink")，即`Gnugo-3.7.10-a1`\[22\]\[23\]\[24\]，系統固定其Elo與BayesElo等級分為1800\[25\]，作為排名的計算基準。
  - [Leela](../Page/Leela.md "wikilink")及[Leela Zero](../Page/Leela_Zero.md "wikilink")，即`leela`與`LZ`系列。
  - [PhoenixGo](../Page/PhoenixGo.md "wikilink")，即`cronus`系列，，是CGOS上排名最高的圍棋軟體。
  - [天壤围棋](https://zh.wikipedia.org/wiki/天壤围棋 "wikilink")，即`define-3.0`\[26\]\[27\]與`tianrang`\[28\]系列。

## 相關連結

  - [计算机围棋](../Page/计算机围棋.md "wikilink")
  - [網路圍棋](../Page/網路圍棋.md "wikilink")

## 參考文獻

## 外部連結

  -

  - [DeepLeela](https://deepleela.com/cgos)，即時對弈的網頁服務。

  -

  - [Computer Go Server](https://senseis.xmp.net/?ComputerGoServer)

[Category:围棋服务器](https://zh.wikipedia.org/wiki/Category:围棋服务器 "wikilink")

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
24.
25.
26.

27.

28.