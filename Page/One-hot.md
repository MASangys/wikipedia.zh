| [二進制](https://zh.wikipedia.org/wiki/二進制 "wikilink") | [格雷碼](https://zh.wikipedia.org/wiki/格雷碼 "wikilink") | One-hot  |
| --------------------------------------------------- | --------------------------------------------------- | -------- |
| 000                                                 | 000                                                 | 00000001 |
| 001                                                 | 001                                                 | 00000010 |
| 010                                                 | 011                                                 | 00000100 |
| 011                                                 | 010                                                 | 00001000 |
| 100                                                 | 110                                                 | 00010000 |
| 101                                                 | 111                                                 | 00100000 |
| 110                                                 | 101                                                 | 01000000 |
| 111                                                 | 100                                                 | 10000000 |

**One-hot**在[數位電路中被用來表示一種特殊的](https://zh.wikipedia.org/wiki/數位電路 "wikilink")[位元](../Page/位元.md "wikilink")組合，該位元組裏，僅容許單一位元爲1，其他位元都必須爲0。之所以稱爲one-hot就是因爲只能有一個1（hot）。若情況相反，只有一個0，其餘爲1，則稱爲one-cold\[1\]。在[機器學習裏](https://zh.wikipedia.org/wiki/機器學習 "wikilink")，也有one-hot[向量](https://zh.wikipedia.org/wiki/向量空間 "wikilink")（）的概念。在一任意維度的向量中，僅有一個維度的值是1，其餘爲0。譬如向量 \([0\ 0\ 0\ 0\ 0\ 1\ 0\ 0\ 0\ 0\ 0\ 0\ 0\ 0\ 0]\)，即爲15維空間中的一組one-hot向量。將類別性資料轉換成one-hot向量的過程則稱one-hot編碼（）\[2\]。在統計學中，代表了類似的概念。

One-hot目前並無公認或被廣泛使用的中文譯名。目前可見的one-hot encoding譯名有**獨熱編碼**\[3\] 以及**一位有效編碼**\[4\]。

## 應用

### 自然語言處理

在[自然語言處理中](https://zh.wikipedia.org/wiki/自然語言處理 "wikilink")，若有個字典或字庫裏有\(N\)個單字，則每個單字可以被一個\(N\)維的one-hot向量代表。譬如若字庫裏僅有apple（蘋果），banana（香蕉），以及pineapple（鳳梨）這三個單字，則他們各自的one-hot向量可以爲：

\(\begin{array}{ll}
    apple &=[1\ 0\ 0] \\
    banana &=[0\ 1\ 0] \\
    pineapple &=[0\ 0\ 1]
\end{array}\)

由於電腦無法理解非數字類的數據，One-hot編碼可以將類別性數據轉換成統一的數字格式，方便機器學習的演算法進行處理及計算。而轉換成固定維度的向量則方便機器學習演算法進行線性代數上的計算。另外由於一個one-hot向量中，絕大部分的數字都是0，所以若使用[稀疏矩陣的資料結構](../Page/稀疏矩阵.md "wikilink")，則可以節省電腦記憶體的使用量。

### 有限狀態機

One-hot編碼常常被用來表示一個[有限狀態機的](https://zh.wikipedia.org/wiki/有限狀態機 "wikilink")。如果使用[二進制或](https://zh.wikipedia.org/wiki/二進制 "wikilink")[格雷碼來代表狀態](https://zh.wikipedia.org/wiki/格雷碼 "wikilink")，則需要用到[解碼器才能得知該碼代表的狀態](https://zh.wikipedia.org/wiki/解碼器 "wikilink")。使用one-hot來代表狀態的話，則不需要解碼器，因爲若第\(n\)個位元爲1，就代表機器目前在第\(n\)個狀態。

一個有限狀態機的例子是由15個狀態構成的。使用one-hot編碼來實現此狀態機的話，可以將15個[正反器串聯在一起](https://zh.wikipedia.org/wiki/正反器 "wikilink")，每個正反器的Q輸出接到下一個正反器的D輸入，而第一個正反器的D輸入則是接到第15個的Q輸出，形成一個環狀。第一個正反器代表機器的第一個狀態，第二個正反器代表第二個狀態，依此類推。當機器被歸零重設時，第一個正反器的值爲1，其餘爲0。當一個[時脈邊緣抵達正反器時](../Page/信号边缘.md "wikilink")，會將1推進到下一個正反器。依照這種方式，1可一步步推進到第15個正反器，亦即第15個狀態，再之後則重新回到第一個狀態。

可以將二進制或格雷碼轉換成one-shot表示形式。而[優先編碼器則是作用相反](https://zh.wikipedia.org/wiki/優先編碼器 "wikilink")。

## 與其他編碼的差異

### 優點

  - 決定狀態機目前狀態的時間成本低，因爲讀取一個正反器的時間成本固定。
  - 改變機器的狀態所需時間成本也是固定，因爲每次只需要改變兩個正反器的值。
  - 設計及設計變更容易。
  - 容易偵測出非法狀態。
  - 可以有效率地使用[FPGA的大量正反器](https://zh.wikipedia.org/wiki/現場可程式化邏輯門陣列 "wikilink")\[5\]。

相較於其他編碼，使用one-hot來實現狀態機通常可以達到更高的[時脈頻率](https://zh.wikipedia.org/wiki/時脈頻率 "wikilink")\[6\]\[7\]。

### 缺點

  - 比起其他編碼，需要更多的正反器，使得其在[PAL裝置上不切實際](../Page/可程式化陣列邏輯.md "wikilink")。
  - 會有很多非法狀態存在\[8\]。這是由於\(N\)個正反器構成的[計數器總共有](../Page/计数器.md "wikilink")\(2^N\)個狀態（每個正反器可以是0或1，所以總共\(2^N\)種可能狀態），但是合法狀態卻只有\(N\)個（即同一時間只允許一個正反器是1,其他必須爲0），所以總共會有\(2^N-N\)個可能的非法狀態。

## 參見

  - [D正反器](https://zh.wikipedia.org/wiki/触发器#D触发器 "wikilink")

## 參考文獻

[Category:機器學習](https://zh.wikipedia.org/wiki/Category:機器學習 "wikilink") [Category:数字电路](https://zh.wikipedia.org/wiki/Category:数字电路 "wikilink") [Category:数字电路](https://zh.wikipedia.org/wiki/Category:数字电路 "wikilink")

1.

2.

3.

4.

5.

6.
7.

8.