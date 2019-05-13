[Nrzi_linecode.svg](https://zh.wikipedia.org/wiki/File:Nrzi_linecode.svg "fig:Nrzi_linecode.svg")

**Non return to zero,
inverted**（簡稱：**NRZI**）中文譯為：**翻轉不歸零制**\[1\]，是[二進制](../Page/二進制.md "wikilink")[信號](../Page/信號.md "wikilink")，此信號[對應於實體性](../Page/對應.md "wikilink")[發送](../Page/發送.md "wikilink")（），以此欲於一些發送媒體（介質）。

NRZI的發送信號有兩種準位，並且在準位信號內也已經夾帶了同步時脈信號於內，電位保持時傳送邏輯1，電位翻轉時傳送邏輯0。

目前為止，使用NRZI編碼法的應用有[CD光碟](../Page/CD.md "wikilink")、[USB介面](../Page/USB.md "wikilink")、以及使用光纖傳輸的100BASE-FX（）等。

舉例而言，想像一個資料串流包含的位元依序為"10110010"，假设初始状态为“H”（一个高的信号电平）。这个比特流就会通过NRZI编码转化成"LLHLLLHH"，在这里，“L”对应于一个低的信号电平，而“H”对应于一个高的信号电平。类似地，如果初始状态为“L”，那么这个比特流就会被编码成"HHLHHHLL".

**Return-to-zero,
inverted**（**RZI**）是另一種用于映射传输的編碼法，但受用處並不多。如果二进制信号是0，双电平的RZI信号就有一个[脉冲](../Page/脉冲.md "wikilink")（比[时钟周期短](../Page/时钟周期.md "wikilink")），如果二进制信号是1就不会有脉冲。

## 参见

  - [不归零码](../Page/不歸零.md "wikilink")

## 附註

<references/>

[en:Non-return-to-zero](../Page/en:Non-return-to-zero.md "wikilink")

[Category:编码](https://zh.wikipedia.org/wiki/Category:编码 "wikilink")

1.  有關大陸與台灣的翻譯用詞，是參考引據自[此](http://www.cnpedia.com/Result/Eword.Asp?Eword=Non-Return%20to%20Zero,%20Inverted)與[此](http://www.cnpedia.com/Result/Eword.Asp?Eword=non-return-to-zero%20change-on-ones%20recording\(NRZI\))