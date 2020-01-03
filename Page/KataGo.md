> 本文内容由[KataGo](https://zh.wikipedia.org/wiki/KataGo)转换而来。


**KataGo**是由David J. Wu（lightvector）所研究並開發的一套圍棋軟體。

## 簡介

KataGo是David J. Wu依照[AlphaGo Zero與](../Page/AlphaGo_Zero.md "wikilink")[AlphaZero](../Page/AlphaZero.md "wikilink")的論文\[1\]，以及許多在論文後的研究，所實做的電腦圍棋程式，其中包括自我對弈訓練的程式（使用[C++](../Page/C++.md "wikilink")、[Python](../Page/Python.md "wikilink") 3與[TensorFlow](../Page/TensorFlow.md "wikilink")實做），以及可以透過軟體操作的[GTP引擎](https://zh.wikipedia.org/wiki/GTP "wikilink")（使用[C++](../Page/C++.md "wikilink")實做）\[2\]。

## 差異

### AlphaZero

KataGo與[AlphaZero](../Page/AlphaZero.md "wikilink")主要差異在於，透過研究大幅降低了初期自我訓練的成本\[3\]，使得一般家用的高階電腦可以在數天內，從零訓練出一個具有中高段水準的業餘高手水準的訓練網路\[4\]。

### Leela Zero

KataGo與[Leela Zero的主要差異在於](../Page/Leela_Zero.md "wikilink")，KataGo的[GTP引擎支援了](https://zh.wikipedia.org/wiki/GTP "wikilink")`kata-analyze`指令，可以讓前端的程式（像是[Lizzie](https://zh.wikipedia.org/wiki/Lizzie "wikilink")）取得KataGo的目數分析，這可以讓人類棋手判斷，減輕讓子棋中黑棋不會下出最好的選擇的問題\[5\]。

另外一個差異是KataGo支援[OpenCL](../Page/OpenCL.md "wikilink")與[CUDA](../Page/CUDA.md "wikilink")\[6\]，但Leela Zero只支援OpenCL\[7\]。

## 強度

第一個版本（編號g65）是在2019年二月使用35顆[NVIDIA Tesla](../Page/NVIDIA_Tesla.md "wikilink") V100訓練7天，從6 blocks x 96 filters訓練到15 blocks x 192 filters\[8\]，棋力大約與LZ130（[Leela Zero的第](../Page/Leela_Zero.md "wikilink")130代）相符，大約是超越人類的強度\[9\]。

第二個版本（編號g104）是在2019年五月與六月使用28顆NVIDIA Tesla V100訓練，從6 blocks x 96 filters訓練到20 blocks x 256 filters\[10\]，由於大幅改善了超參數（），只使用了3.5天就超越第一版的棋力\[11\]。最後訓練了19天產生出20 blocks的版本，棋力超越了LZ-ELFv2（[ELF OpenGo的v](../Page/ELF_OpenGo.md "wikilink")2資料配上[Leela Zero的程式](../Page/Leela_Zero.md "wikilink")），另外與Leela Zero 40 blocks版本的比較，大約落在LZ200的棋力\[12\]。

## 相關連結

  - [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")
  - [AlphaZero](../Page/AlphaZero.md "wikilink")
  - [SAI](https://zh.wikipedia.org/wiki/SAI_\(圍棋軟體\) "wikilink")，修改自[Leela Zero](../Page/Leela_Zero.md "wikilink")，支援動態貼目的圍棋軟體。
  - [计算机围棋](../Page/计算机围棋.md "wikilink")
  - [圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")

## 參考資料

## 外部連結

  -

  - [katago-public](https://d3dndmfyhecmj0.cloudfront.net/)，訓練的資料與訓練出來的網路。

  - [Accelerating Self-Play Learning in Go](https://arxiv.org/abs/1902.10565)，KataGo研究所寫下的論文。

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink") [Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink") [Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink") [Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

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