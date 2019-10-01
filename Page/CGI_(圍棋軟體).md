**CGI**（\[1\]\[2\]）是由[國立交通大學](../Page/國立交通大學.md "wikilink")資訊工程學系[吳毅成教授所帶領的團隊所開發的](https://zh.wikipedia.org/wiki/吳毅成 "wikilink")[圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")。

## 簡介

從2008年開始發展，一開始名稱為HappyGo，之後大幅改寫時改名為Amigo，但因Amigo與其他圍棋軟體名稱衝突，在後來改名時以實驗室的名字為基礎，改名為CGI\[3\]。其中CGI為CGI Go Intelligence的[递归缩写](../Page/递归缩写.md "wikilink")，指的是「CGI實驗室圍棋智慧」\[4\]\[5\]。

於2017年年底與[棋城合作](https://zh.wikipedia.org/wiki/棋城 "wikilink")，推出業餘七段棋力的對弈服務\[6\]。

## 演進

### HappyGo

2008年到2011年的版本，以作者王永樂的[暱稱Happy為名](https://zh.wikipedia.org/wiki/暱稱 "wikilink")，僅支援9x9的棋盤\[7\]：

  - 沒有任何[機器學習的程式碼](https://zh.wikipedia.org/wiki/機器學習 "wikilink")，是基於[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）以及人類對圍棋的知識所寫成的程式。
  - 不支援任何[平行運算](https://zh.wikipedia.org/wiki/平行運算 "wikilink")。

### Amigo

2012年到2014年的版本，這個版本將[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）的平行運算框架化，以便於用在其他軟體上\[8\]。這個版本雖然可以進行19x19棋盤對弈，但只是實做而沒有最佳化，所以非常的弱\[9\]：

  - 實做蒙特卡洛树搜索（MCTS）的平行運算框架。
  - 支援[平行運算](https://zh.wikipedia.org/wiki/平行運算 "wikilink")。

### CGI 1.0

2015年一月到十二月的版本，這個版本以及之後的版本，主要都由吳廸融設計，除了採用了[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）外，還包括了\[10\]\[11\]：

  - 利用很多人為定義的特性進行學習。
  - 利用progressive bias、progressive widening以及動態貼目改善蒙特卡洛树搜索（MCTS）。

### CGI 2.0

2015年十二月到2016年八月的版本，這個版本引入了深度[卷积神经网络](../Page/卷积神经网络.md "wikilink")（DCNN）使得棋力大幅增強。在引入的初期採用Detlef Schmicker所提供的資料，在2016一月後採用自己訓練的資料\[12\]\[13\]：

  - 使用[監督式學習](../Page/監督式學習.md "wikilink")策略神經網路（），這個版本還沒有使用[强化学习](../Page/强化学习.md "wikilink")策略策略神經網路（）以及價值神經網路（）。

### CGI 3.0

2016年八月後的版本，在這個版本因為[AlphaGo](../Page/AlphaGo.md "wikilink")論文的出現而有了巨大的改動，使得實力大幅進步，能在不[讓子的對弈中與](../Page/讓子_\(圍棋\).md "wikilink")[職業棋士較勁](https://zh.wikipedia.org/wiki/職業棋士 "wikilink")\[14\]\[15\]：

  - 引入[監督式學習](../Page/監督式學習.md "wikilink")策略神經網路（）
  - 引入[強化學習策略神經網路](https://zh.wikipedia.org/wiki/強化學習 "wikilink")（）
  - 引入價值網路（）\[16\]
  - 改善[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）內的快速走子（）
  - 支援[分散式計算](https://zh.wikipedia.org/wiki/分散式計算 "wikilink")

## 成績

### HappyGo

#### 對電腦

  - 2009年[TAAI](https://zh.wikipedia.org/wiki/TAAI "wikilink")，9x9第四名\[17\]。
  - 2010年[ICGA](https://zh.wikipedia.org/wiki/國際電腦對局協會 "wikilink")，9x9第八名\[18\]。
  - 2010年TAAI，9x9第二名\[19\]。
  - 2011年TAAI，9x9第五名\[20\]。
  - 2013年[TCGA](https://zh.wikipedia.org/wiki/TCGA "wikilink")，9x9第二名\[21\]。

### Amigo

#### 對電腦

  - 2013年[ICGA](https://zh.wikipedia.org/wiki/國際電腦對局協會 "wikilink")，9x9第三名\[22\]。
  - 2013年[TCGA](https://zh.wikipedia.org/wiki/TCGA "wikilink")，9x9第三名\[23\]。
  - 2014年TCGA，9x9第二名\[24\]。
  - 2014年[TAAI](https://zh.wikipedia.org/wiki/TAAI "wikilink")，9x9第二名\[25\]。

### CGI 1.0

#### 對電腦

  - 2015年[ICGA](https://zh.wikipedia.org/wiki/國際電腦對局協會 "wikilink")，9x9第三名，13x13第四名，19x19第四名\[26\]\[27\]。
  - 2015年[TCGA](https://zh.wikipedia.org/wiki/TCGA "wikilink")，9x9第一名，13x13第一名，19x19第一名\[28\]\[29\]。

#### 對人

賽事皆為IEEE CIG 2015：

<table>
<thead>
<tr class="header">
<th><p>黑</p></th>
<th><p>白</p></th>
<th><p>讓子</p></th>
<th><p>貼目</p></th>
<th><p>結果</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/俞俐均" title="wikilink">俞俐均</a>（職業一段）</p></td>
<td><p>6</p></td>
<td><p>0.5</p></td>
<td><p>B+Res[30][31][32]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>CGI</p></td>
<td></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>W+Res[33]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CGI</p></td>
<td></td>
<td><p>6</p></td>
<td><p>6.5</p></td>
<td><p>W+5.5[34][35][36]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>CGI</p></td>
<td></td>
<td><p>6</p></td>
<td><p>0.5</p></td>
<td><p>W+Res[37][38][39]</p></td>
<td></td>
</tr>
</tbody>
</table>

### CGI 2.0

#### 對電腦

  - 2016年[UEC杯世界電腦圍棋大會](../Page/UEC杯世界電腦圍棋大會.md "wikilink")，初賽第一名\[40\]，決賽第六名\[41\]\[42\]\[43\]。

#### 對人

賽事皆為IEEE WCCI 2016：

<table>
<thead>
<tr class="header">
<th><p>黑</p></th>
<th><p>白</p></th>
<th><p>讓子</p></th>
<th><p>貼目</p></th>
<th><p>結果</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CGI</p></td>
<td></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>W+Res[44]</p></td>
<td><p>七月24日</p></td>
</tr>
<tr class="even">
<td><p>CGI</p></td>
<td></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>W+Res[45][46][47]</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>CGI</p></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>B+Res[48]</p></td>
<td><p>七月25日</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>CGI</p></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>B+Res[49]</p></td>
<td><p>七月25日</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>周平強（職業六段）</p></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>B+Res[50]</p></td>
<td><p>七月25日</p></td>
</tr>
<tr class="even">
<td><p>蔡尚榮（業餘六段）</p></td>
<td></td>
<td><p>0</p></td>
<td><p>0.5</p></td>
<td><p>W+Res[51]</p></td>
<td><p>七月26日</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>CGI</p></td>
<td><p>2</p></td>
<td><p>0.5</p></td>
<td><p>B+Res[52]</p></td>
<td><p>七月26日</p></td>
</tr>
</tbody>
</table>

#### CGOS

在[CGOS](../Page/CGOS.md "wikilink")上，`CGI1407_1_475_7c`的BayesElo為3265分\[53\]。

### CGI 3.0

#### 對電腦

  - 2017年[UEC杯世界電腦圍棋大會](../Page/UEC杯世界電腦圍棋大會.md "wikilink")，初賽第六名\[54\]，決賽第七名\[55\]\[56\]\[57\]。
  - 2017年[世界智能圍棋公開賽](https://zh.wikipedia.org/wiki/世界智能圍棋公開賽 "wikilink")，初賽第一名，決賽第二名\[58\]\[59\]\[60\]。

#### 對人

賽事為FUZZ-IEEE 2017：

<table>
<thead>
<tr class="header">
<th><p>黑</p></th>
<th><p>白</p></th>
<th><p>讓子</p></th>
<th><p>貼目</p></th>
<th><p>結果</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p><a href="../Page/周俊勳.md" title="wikilink">周俊勳</a>（職業九段）</p></td>
<td><p>0</p></td>
<td><p>7.5</p></td>
<td><p>B+Res[61][62][63][64]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>周俊勳（職業九段）</p></td>
<td></td>
<td><p>0</p></td>
<td><p>7.5</p></td>
<td><p>W+2.5[65][66][67][68]</p></td>
<td></td>
</tr>
</tbody>
</table>

#### CGOS

在[CGOS](../Page/CGOS.md "wikilink")上，`CGI1900_4c`的BayesElo為3513分\[69\]。

## 參考文獻

## 相關連結

  - [AlphaGo](../Page/AlphaGo.md "wikilink")
  - [吳毅成](https://zh.wikipedia.org/wiki/吳毅成 "wikilink")
  - [電腦圍棋](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")

## 外部連結

  - ，目前的官方資訊頁面。

  - 。

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink") [Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink") [Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink")

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
29.
30.
31.
32.
33.
34.

35.
36.
37.
38.
39.
40.

41.

42.
43.
44.

45.
46.
47.
48.
49.
50.
51.
52.
53.

54.

55.

56.
57.
58.

59.
60.
61.

62.

63.
64.
65.
66.
67.
68.
69.