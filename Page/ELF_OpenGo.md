**ELF OpenGo**是[Facebook](../Page/Facebook.md "wikilink") AI Research團隊（）所開發的[電腦圍棋軟體及所釋出的資料](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")\[1\]。

## 簡介

ELF OpenGo是[Facebook](../Page/Facebook.md "wikilink") AI Research團隊（）依照[DeepMind](../Page/DeepMind.md "wikilink")在科學期刊《[自然](../Page/自然_\(期刊\).md "wikilink")》上對於[AlphaGo Zero所發表的論文](../Page/AlphaGo_Zero.md "wikilink")《\[2\]》與[AlphaZero](../Page/AlphaZero.md "wikilink")的論文《\[3\]》所實做出的[開源電腦圍棋程式](https://zh.wikipedia.org/wiki/開源 "wikilink")\[4\]，也就是不使用人類棋譜與累積的圍棋知識，僅實做[圍棋規則](https://zh.wikipedia.org/wiki/圍棋規則 "wikilink")，使用單一[類神經網路從自我對弈中學習](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")（不像[AlphaGo](../Page/AlphaGo.md "wikilink")以人類角度思考，設計了Policy Network與Value Network）。

訓練網路使用20 blocks x 224 filters，在2000個[GPU下訓練兩週](https://zh.wikipedia.org/wiki/GPU "wikilink")\[5\]，相較AlphaGo Zero使用的20 blocks x 256 filters版本略小一些（AlphaGo Zero另外還有40 blocks x 256 filters）。

由於[Facebook](../Page/Facebook.md "wikilink")所擁有的計算資源，產生出高品質的訓練網路資料與對局棋譜\[6\]，許多基於相同演算法或是AlphaGo相關論文內容的圍棋軟體都積極測試ELF OpenGo所提供的訓練資料\[7\]\[8\]。

## 成績

### 對電腦

#### Leela Zero

[Leela Zero是目前少數有公開程式碼並公開訓練網路資料的](../Page/Leela_Zero.md "wikilink")[圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")，且仍然有志願者持續投入資源計算演化，故經常被當作其他圍棋軟體的基準。

由[Facebook](../Page/Facebook.md "wikilink")自行測試，ELF OpenGo與Leela Zero對戰的成績為198:2\[9\]。在Leela Zero的進度網站上也經常會比較現有訓練網路與ELF OpenGo的比較\[10\]。

#### CGOS

志願者在[CGOS](../Page/CGOS.md "wikilink")上使用[Leela Zero的程式引擎以及由ELF](../Page/Leela_Zero.md "wikilink") OpenGo公開的訓練網路（v0）轉換成Leela Zero格式的訓練網路（即Hash值`62b5417b`的訓練網路，帳號`LZ_62b541_ELF_1600`）進行對弈測試\[11\]，但由於目前在CGOS上測試的不是ELF Go的程式引擎，不清楚ELF OpenGo的訓練資料在轉換後的影響。，對弈已經超過1000盤，BayesElo分數約3770分\[12\]。

### 對人

[Facebook](../Page/Facebook.md "wikilink")與[韩国棋院合作](https://zh.wikipedia.org/wiki/韩国棋院 "wikilink")，以[中國規則與韓國的世界頂尖棋手對弈](../Page/圍棋規則比較.md "wikilink")（貼目7.5目），在電腦每步限制50秒（使用單機單張[NVIDIA Tesla V100](../Page/NVIDIA_Tesla.md "wikilink")），人類不限時間的前提下，每個人至少下兩局，達到14:0的成績\[13\]，對弈對手包括[金志錫](../Page/金志錫.md "wikilink")、[申真谞](../Page/申真谞.md "wikilink")、[朴永训](../Page/朴永训.md "wikilink")以及[崔哲瀚](../Page/崔哲瀚.md "wikilink")\[14\]。

## 相關連結

  - [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")，所參考論文的電腦圍棋軟體。
  - [Darkforest](../Page/Darkforest.md "wikilink")，上一代[Facebook](../Page/Facebook.md "wikilink")所開發的電腦圍棋軟體。
  - [Leela Zero](../Page/Leela_Zero.md "wikilink")，另外一套也是依照AlphaGo Zero所實做的[開源電腦圍棋軟體](https://zh.wikipedia.org/wiki/開源 "wikilink")，在ELF OpenGo測試時被當作比較基準。
  - [電腦圍棋](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")
  - [圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")

## 參考資料

## 註解

## 外部連結

  -
  - [pytorch/ELF: ELF: a platform for game research](https://github.com/pytorch/elf)

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink") [Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink") [Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink") [Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink") [Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

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