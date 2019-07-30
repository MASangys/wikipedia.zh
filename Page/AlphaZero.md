**AlplaZero**是[DeepMind](../Page/DeepMind.md "wikilink")所開發的人工智能軟體\[1\]。

## 簡介

AlphaZero使用與[AlphaGo Zero類似但更一般性的演算法](../Page/AlphaGo_Zero.md "wikilink")，在不做太多改變的前提下，並將演算法從[圍棋延伸到](https://zh.wikipedia.org/wiki/圍棋 "wikilink")[将棋與](../Page/将棋_\(日本\).md "wikilink")[國際象棋上](https://zh.wikipedia.org/wiki/國際象棋 "wikilink")。AlphaZero與AlphaGo Zero不同之處在於\[2\]：

  - AlphaZero的是寫死的。
  - AlphaZero現在會不斷更新[人工神经网络](../Page/人工神经网络.md "wikilink")。
  - [圍棋在某些情況是對稱或是可旋轉的](https://zh.wikipedia.org/wiki/圍棋 "wikilink")，AlphaGo Zero的程式利用這個特性降低計算複雜性，AlphaZero因為延伸到將棋與國際象棋則拿掉了這段程式。
  - 西洋棋有已知的[和局終局資料庫](../Page/和局_\(國際象棋\).md "wikilink")，所以AlphaZero利用這個終局資料庫納入計算。

## 與Stockfish以及elmo的比較

AlphaZero基於[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")，每秒只能搜尋8萬步（西洋棋）與4萬步（將棋），相較於每秒可以7000萬步，以及每秒可以3500萬步，AlphaZero則是利用了[類神經網路提昇了搜尋的品質](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")\[3\]。

## 訓練

AlphaZero使用了5,000顆第一代的[TPU進行訓練](https://zh.wikipedia.org/wiki/TPU "wikilink")。

## 成績

### 西洋棋

在9小時的訓練後（約自我訓練4400萬局\[4\]），AlphaZero以28勝72和0敗的成績打敗\[5\]。

### 將棋

在2小時的訓練後（約自我訓練2400萬局\[6\]），AlphaZero以90勝2和8敗的成績打敗\[7\]。

### 圍棋

在34小時的訓練後（約自我訓練2100萬局\[8\]），AlphaZero以60勝40敗的成績打敗[AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")\[9\]。

## 相關連結

  - [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")
  - [DeepMind](../Page/DeepMind.md "wikilink")
  - [ELF OpenGo](../Page/ELF_OpenGo.md "wikilink")

## 參考資料

## 外部連結

  - [Mastering Chess and Shogi by Self-Play with a General Reinforcement Learning Algorithm](https://arxiv.org/abs/1712.01815)，AlphaZero的論文。
  - [Game Downloads](https://deepmind.com/research/alphago/alphazero-resources/)，AlphaZero與西洋棋軟體的對弈記錄。
  - [Chess.com Youtube playlist for AlphaZero vs. Stockfish](https://www.youtube.com/watch?v=akgalUq5vew&list=PL-qLOQ-OEls607FPLAsPZ6De4f1W3ZF-I)

[Category:2017年软件](https://zh.wikipedia.org/wiki/Category:2017年软件 "wikilink") [Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink") [Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink") [Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink")

1.

2.
3.
4.
5.
6.
7.
8.
9.