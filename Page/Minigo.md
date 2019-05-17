**Minigo**是一套[電腦圍棋軟體](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")。

## 簡介

Minigo是一套依照[DeepMind在](../Page/DeepMind.md "wikilink")《[自然](../Page/自然_\(期刊\).md "wikilink")》上對於[AlphaGo
Zero所發表的論文](../Page/AlphaGo_Zero.md "wikilink")《\[1\]》所實做出的[開源電腦圍棋程式](https://zh.wikipedia.org/wiki/開源 "wikilink")\[2\]，也就是不使用人類棋譜與累積的圍棋知識，僅實做[圍棋規則](https://zh.wikipedia.org/wiki/圍棋規則 "wikilink")，使用單一[類神經網路從自我對弈中學習](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")（不像[AlphaGo以人類角度思考](../Page/AlphaGo.md "wikilink")，設計了Policy
Network與Value Network）。

軟體本身使用[Python撰寫](../Page/Python.md "wikilink")\[3\]，並且透過[TensorFlow實做](../Page/TensorFlow.md "wikilink")[類神經網路的部份](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")\[4\]。程式碼以[Apache
License
2.0釋出](https://zh.wikipedia.org/wiki/Apache_License_2.0 "wikilink")\[5\]，訓練資料以[公有领域](../Page/公有领域.md "wikilink")（）釋出\[6\]。

專案的目標包括了\[7\]：

  - 提供使用[TensorFlow](../Page/TensorFlow.md "wikilink")、[Kubernetes以及](../Page/Kubernetes.md "wikilink")[Google雲端平台實做](../Page/Google雲端平台.md "wikilink")[强化学习](../Page/强化学习.md "wikilink")（）的範例。
  - 盡可能重製論文裡所提到的方法，並提供[開源的程式與工具](https://zh.wikipedia.org/wiki/開源 "wikilink")。
  - 提供資料以及訓練成果，讓[圍棋界](https://zh.wikipedia.org/wiki/圍棋 "wikilink")、[機器學習領域以及Kubernetes社群都能夠受益](https://zh.wikipedia.org/wiki/機器學習 "wikilink")。

除此之外，專案也希望藉由獨立另外實做，驗證[Leela
Zero所產生的疑問](../Page/Leela_Zero.md "wikilink")\[8\]。

### 與Google及DeepMind的關聯

這個計畫雖然是掛在[TensorFlow的](../Page/TensorFlow.md "wikilink")[GitHub下](../Page/GitHub.md "wikilink")（且TensowFlow是由Google研發出的軟體），而且主要的專案貢獻者Andrew
Jackson\[9\]是[Google員工](../Page/Google.md "wikilink")\[10\]，但官方一再強調這並非TensorFlow專案的一環\[11\]，也不是[DeepMind的](../Page/DeepMind.md "wikilink")[AlphaGo官方版本](../Page/AlphaGo.md "wikilink")\[12\]，而是由獨立的團隊依照[AlphaGo
Zero的論文而實做出的版本](../Page/AlphaGo_Zero.md "wikilink")\[13\]\[14\]。

### 版本演進

雖然[Google與](../Page/Google.md "wikilink")[DeepMind沒有正式參與Minigo計畫](../Page/DeepMind.md "wikilink")，但Andrew
Jackson使用的是Google所提供的20%時間\[15\]，並且得到[Google贊助提供硬體資源進行運算](../Page/Google.md "wikilink")，供Minigo團隊確認程式正確性\[16\]\[17\]：

  - 第一階段（2017年十月）
    使用約1000 CPU
    cores（沒有[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")）跑兩週，訓練9x9棋盤，主要是確認程式實做的正確性。

  - 第二階段（2017年十二月至2018年一月）
    使用約1000 GPU跑四個禮拜，訓練19x19棋盤，使用20 blocks x 128
    filters，在更大的規模上邊修正[bug](https://zh.wikipedia.org/wiki/bug "wikilink")，邊對程式做出各類改善，並摸索論文裡沒有提到的細節要如何實做。在160個迭代（）後，團隊將訓練結果放到[KGS與](../Page/KGS.md "wikilink")[CGOS上對弈](../Page/CGOS.md "wikilink")，以`somebot`為名，後面的數字表示是哪個迭代。最終大約跑了250個迭代。

  - 第三階段（2018年1月20日至2月1日）
    在確認論文內不清楚的地方，嘗試後從錯誤中學到不少事情。

  - 第四階段（2018年2月7日後）

## 合作

[Leela Zero同樣也是依照](../Page/Leela_Zero.md "wikilink")[AlphaGo
Zero論文所獨立實做出來的軟體](../Page/AlphaGo_Zero.md "wikilink")\[18\]，而Minigo專案取得[Google贊助的計算資源](../Page/Google.md "wikilink")，透過大量計算資源得到品質還不錯的訓練網路資料。因此Leela
Zero的團隊與Minigo的團隊基於雙方的經驗，討論參數的調整能帶來的改善，以及雙方訓練資料共用的可能性\[19\]。

## 成績

Minigo的第二階段在[CGOS上以](../Page/CGOS.md "wikilink")`somebot`開頭的名稱參與19x19的對戰\[20\]，排名最高的帳號為`somebot-199b`\[21\]，取得約2600分的BayesElo成績\[22\]。

## 相關連結

  - [AlphaGo](../Page/AlphaGo.md "wikilink")，所參考論文的電腦圍棋軟體。
  - [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")，所參考論文的電腦圍棋軟體。
  - [Leela Zero](../Page/Leela_Zero.md "wikilink")，另外一套也是依照AlphaGo
    Zero所實做的[開源電腦圍棋軟體](https://zh.wikipedia.org/wiki/開源 "wikilink")。
  - [TensorFlow](../Page/TensorFlow.md "wikilink")，Minigo所使用到的框架。
  - [電腦圍棋](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")
  - [圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")

## 參考資料

## 註解

## 外部連結

  -

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink")
[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")
[Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink")
[Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink")

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