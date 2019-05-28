**Leela
Zero**是由比利時程式設計師起頭所開發的[電腦圍棋軟體](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")，以及相關的運算計畫。

## 簡介

Leela
Zero是依照[DeepMind在科學期刊](../Page/DeepMind.md "wikilink")《[自然](../Page/自然_\(期刊\).md "wikilink")》上對於[AlphaGo
Zero所發表的論文](../Page/AlphaGo_Zero.md "wikilink")《\[1\]》所實做出的[開源電腦圍棋程式](https://zh.wikipedia.org/wiki/開源 "wikilink")\[2\]，也就是不使用人類棋譜與累積的圍棋知識，僅實做[圍棋規則](https://zh.wikipedia.org/wiki/圍棋規則 "wikilink")，使用單一[類神經網路從自我對弈中學習](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")（不像[AlphaGo以人類角度思考](../Page/AlphaGo.md "wikilink")，設計了Policy
Network與Value Network）。

軟體使用[蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）模擬與\[3\]，在蒙特卡洛树搜索模擬與自我訓練時都採用Tromp–Taylor規則\[4\]，這個規則的[貼目雖然與中國規則相同](../Page/讓子_\(圍棋\).md "wikilink")，都是由黑棋貼7.5目，但在某些情境下可能會有差異。

程式碼部份，用戶端對弈的程式碼與訓練的程式碼以[GPLv3授權公開](https://zh.wikipedia.org/wiki/GPLv3 "wikilink")\[5\]，分散式運算的伺服器端程式則以[AGPLv3授權公開](https://zh.wikipedia.org/wiki/AGPLv3 "wikilink")\[6\]；資料的部份，訓練對弈資料\[7\]以及訓練對弈的原始資料\[8\]也可以公開下載。

## 與論文的差異

在初期Leela Zero在確認演算法以及程式是否實做正確，所以對論文裡提到的部份參數進行調整，以加快驗證速度：

  - 類神經網路的架構
    AlphaGo Zero使用20 blocks或40 blocks，配上256 filters\[9\]。
    Leela
    Zero是逐步提昇類神經網路的大小（在近期的版本開始使用Net2Net，將舊的網路資料轉換到新的網路上\[10\]），一開始使用
      - 1 block x 8 filters（2017年11月10日，第0代），並逐步換成
      - 4 blocks x 32 filter（2017年11月17日，第2代，訓練約1.9萬盤時）、
      - 5 blocks x 64 filters（2017年11月21日，第5代，約13.7萬盤時）、
      - 6 blocks x 128 filters（2018年1月20日，第58代，約286萬盤時）、
      - 10 blocks x 128 filters（2018年3月5日，第92代，約481萬盤時）、
      - 15 blocks x 192 filters（2018年4月9日，第117代，約664萬盤時）、
      - 20 blocks x 256 filters（2018年7月28日，第158代，約872萬盤時），到目前使用的
      - 40 blocks x 256 filters（2018年9月4日，第174代，約997萬盤時）\[11\]。
  - 自我對戰訓練的盤數
    AlphaGo Zero使用最新的50萬盤訓練\[12\]。
    Leela Zero在10 blocks前（不含10
    blocks）使用最新的25萬盤自我對戰結果訓練\[13\]（在2018年1月1號前因為有[bug](https://zh.wikipedia.org/wiki/bug "wikilink")，導致只會使用最新的（約）16萬盤自我對戰結果進行訓練\[14\]），在10
    blocks x 128 filters後改用最新的50萬盤自我對戰結果訓練\[15\]。
  - [蒙特卡洛树搜索](../Page/蒙特卡洛树搜索.md "wikilink")（MCTS）的模擬的次數
    AlphaGo Zero在論文裡提到自我訓練或正式對弈時，每一步都使用1600次模擬\[16\]。
    Leela Zero一開始使用與AlphaGo Zero的論文相同的1600次，但後來改為3200次\[17\]。

這些調整是希望在比較小的網路與訓練盤數下快速確認程式的正確性\[18\]。在每個階段確認沒有重大問題以及bug後會重新評估調昇，並且正式公開向社群尋求運算資源\[19\]。

另外作者發現在原論文裡有瑕疵：論文裡的第一層輸入只有17個，會導致白棋較容易看到棋盤邊緣（指[類神經網路](https://zh.wikipedia.org/wiki/類神經網路 "wikilink")），這在Leela
Zero內被修正為18個\[20\]。

## 目標

早期Leela Zero剛出來時，Gian-Carlo Pascutto的目標是重製[AlphaGo
Zero的論文結果](../Page/AlphaGo_Zero.md "wikilink")\[21\]\[22\]。在後來受到更多關注後，有更多的計算資源與人力投入Leela
Zero計畫之中，使得Leela
Zero的強度迅速提昇，甚至已經超越先前開發的[Leela以及其他對手](../Page/Leela.md "wikilink")\[23\]。

現在的目標是希望在[行動電話上也能夠有足夠強的圍棋軟體可以使用](https://zh.wikipedia.org/wiki/行動電話 "wikilink")\[24\]。

## 訓練

由於作者估算以當時的高階硬體（以[Nvidia的](https://zh.wikipedia.org/wiki/Nvidia "wikilink")[GeForce
GTX 1080
Ti估算](../Page/NVIDIA_GeForce_10系列.md "wikilink")）大約需要1700年的計算量才能達到AlphaGo
Zero自我學習2900萬盤的水平\[25\]，所以在2017年十一月開始，讓自願者使用自己的硬體，透過作者群開發的AutoGTP程式參加分散式運算計畫（以[GTP自動與伺服器溝通以取得計算工作](https://zh.wikipedia.org/wiki/GTP "wikilink")）\[26\]：

  - 在計畫啟動的34天後（2017年12月13日），自我對弈的訓練量超過100萬盤。
  - 59天後（2018年1月8日）超過200萬盤。
  - 74天後（2018年1月23日）超過300萬盤。
  - 100天後（2018年2月18日）超過400萬盤。
  - 119天後（2018年3月9日）超過500萬盤。
  - 138天後（2018年3月28日）超過600萬盤。
  - 166天後（2018年4月25日）超過700萬盤。
  - 218天後（2018年6月16日）超過800萬盤。
  - 261天後（2018年7月29日）超過900萬盤。
  - 299天後（2018年9月5日）超過1000萬盤。

2018年初，志願者申請到[超級電腦的部份計算資源](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")，[印第安纳大学的Big](../Page/印第安纳大学.md "wikilink")
Red II（申請到3360
cores，約該台超級電腦的10.7%資源）\[27\]\[28\]，另外自0.10版支援純CPU版本（不需GPU），現有演算法的最佳化以及新演算法的引入，這些因素大幅提昇了整體的計算速度。

Leela Zero官方曾鼓勵參與者使用Google
Colaboratory所提供的免費運算資源幫助訓練\[29\]，但後來因為文件裡的操作步驟過時而失效而移除文件\[30\]。

## 合作

### Minigo

[Minigo同樣也是依照](../Page/Minigo.md "wikilink")[AlphaGo
Zero論文所獨立實做出來的軟體](../Page/AlphaGo_Zero.md "wikilink")\[31\]，而Minigo專案取得[Google贊助的計算資源](../Page/Google.md "wikilink")\[32\]，透過大量計算資源得到品質還不錯的訓練網路資料。因此Leela
Zero的團隊與Minigo的團隊基於雙方的經驗，討論參數的調整能帶來的改善，以及雙方訓練資料共用的可能性\[33\]。

### ELF OpenGo

[ELF
OpenGo是](../Page/ELF_OpenGo.md "wikilink")[Facebook依照](../Page/Facebook.md "wikilink")[AlphaGo
Zero與](../Page/AlphaGo_Zero.md "wikilink")[AlphaZero所實做出來的軟體](../Page/AlphaZero.md "wikilink")\[34\]，由於Facebook使用大量資源運算（使用2000顆[GPU計算兩週](https://zh.wikipedia.org/wiki/GPU "wikilink")）並公開訓練網路資料，Leela
Zero團隊得以將資料轉換為Leela Zero可以使用的格式（Hash值為`62b5417b`\[35\]），並進行分析。

Leela Zero後來決定將ELF OpenGo的資料混入自我對弈，在2018年5月7日後引入了ELF
OpenGo的資料\[36\]\[37\]。

## 成績

### CGOS

在[CGOS](../Page/CGOS.md "wikilink")（）上會有志願者將每次演化的版本掛上進行測試（19x19）\[38\]以比較與其他圍棋軟體的差距。

#### 名稱

程式名稱會以`LZ`或`LeelaZero`之類的名稱命名。大致上有幾個不同的版本，像是使用訓練網路的[Hash值為名](https://zh.wikipedia.org/wiki/Hash "wikilink")（如`LZ-d6f3a6-t1-p1600`\[39\]），或是使用訓練世代的次數為名（如`LZ-000-p1600-t1-r1`\[40\]）。

#### 特例

有幾個特別的訓練網路不是自我訓練產生，而是透過人類頂尖棋手的對弈棋譜產生，用以作為階段性的指標。

名為`LZ-HBest1-t1-p1600`\[41\]的帳號是使用Leela Zero的程式加上以人類棋譜計算出的20 blocks x
256 filters訓練網路\[42\]所產生的的版本\[43\]（BayesElo約2650分\[44\]）。

另一個帳號是`LZH256x20-t4-nolim`\[45\]，也是使用20 blocks x 256
filters訓練網路，但以CGOS的時間限制，找出Leela
Zero的程式與人類棋譜訓練的網路可以達到的最高成績（BayesElo約3610分\[46\]）。

#### 分數

另外由於CGOS可以任意註冊名稱，有些人會拿較強的軟體摸魚混珠（而非使用Leela
Zero），因此CGOS上面的數據需要確認後才有參考價值\[47\]。在CGOS上測試比較完整的基準參數是`t1-p1600`（Thread
1、Playouts 1600），但目前（2018年四月）已暫時沒有使用這個參數測試訓練網路：

  - 在`LZ-c99f1a-t1-p1600`\[48\]（第36代，約136萬盤訓練）的BayesElo分數約1830分\[49\]，超越CGOS的分數基準[GNU
    Go](../Page/GNU_Go.md "wikilink")（1800分），不過此時對GNU Go的勝率還不高。
  - 在`LZ-097dee-t1-p1600`\[50\]（第41代，約146萬盤訓練）後可以穩定對GNU
    Go獲勝。此時BayesElo分數約2000分\[51\]。
  - 在`LZ-c83e1b-t1-p1600`\[52\]（第57代，約266萬盤訓練）的BayesElo分數約2480分\[53\]，這是最後一個5
    blocks x 64 filters的版本。
  - 在`LZ-ed002c-t1-p1600`\[54\]（第58代，約286萬盤訓練）的BayesElo分數約2460分\[55\]，這是第一個6
    blocks x 128 filters的版本。
  - 在`LZ-5773f4-t1-p1600`\[56\]（第65代，約314萬盤訓練）的BayesElo分數約2670分\[57\]，是第一個在相同執行參數下，超越以人類棋譜訓練出的版本（即`LZ-HBest1-t1-p1600`\[58\]的2650分）。

### 野狐圍棋

2017年12月16日，[贴吧上的志願者以](https://zh.wikipedia.org/wiki/贴吧 "wikilink")`alphaleela`的帳號在[野狐圍棋上開始測試](https://zh.wikipedia.org/wiki/野狐圍棋 "wikilink")，以快棋對弈為主，並隨時更新為最新版的訓練網路。於2017年12月30日（約150萬盤訓練）從級位升到一段，在2018年3月8日（約497萬盤訓練）升到九段\[59\]。

### 2018世界人工智慧圍棋大賽

在預賽取得第三名，僅輸給[PhoenixGo與](../Page/PhoenixGo.md "wikilink")[絕藝](https://zh.wikipedia.org/wiki/絕藝 "wikilink")\[60\]。

## 相關連結

  - [AlphaGo Zero](../Page/AlphaGo_Zero.md "wikilink")，Leela
    Zero所參考的論文所實做的電腦圍棋軟體。
  - [ELF
    OpenGo](../Page/ELF_OpenGo.md "wikilink")，由[Facebook團隊依照AlphaGo](../Page/Facebook.md "wikilink")
    Zero論文所實做的[開源電腦圍棋軟體](https://zh.wikipedia.org/wiki/開源 "wikilink")，並將訓練的數據被Leela
    Zero團隊納入。
  - [Leela](../Page/Leela.md "wikilink")，同作者的上一代電腦圍棋軟體。
  - [Minigo](../Page/Minigo.md "wikilink")，另外一套開源電腦圍棋軟體。
  - [電腦圍棋](https://zh.wikipedia.org/wiki/電腦圍棋 "wikilink")
  - [圍棋軟體](https://zh.wikipedia.org/wiki/圍棋軟體 "wikilink")

## 參考資料

## 註解

## 外部連結

  -

  - [Leela Zero](https://zero.sjeng.org/)，Leela Zero的訓練狀態頁。

  - [featurecat/lizzie: Lizzie - Leela Zero
    Interface](https://github.com/featurecat/lizzie)，Leela Zero的GUI界面。

[Category:围棋软件](https://zh.wikipedia.org/wiki/Category:围棋软件 "wikilink")
[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")
[Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink")
[Category:人工智能应用](https://zh.wikipedia.org/wiki/Category:人工智能应用 "wikilink")
[Category:使用GPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用GPL许可证的软件 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

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