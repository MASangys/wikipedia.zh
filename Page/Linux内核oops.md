[Linux-2.6-oops-parisc.jpg](https://zh.wikipedia.org/wiki/File:Linux-2.6-oops-parisc.jpg "fig:Linux-2.6-oops-parisc.jpg")上顯示出一頭由ASCII字元組成的死亡乳牛的Linux内核oops\]\]

**oops**是[Linux内核發生不正確的行為並產生一份錯誤報告](../Page/Linux内核.md "wikilink")。多種類型的oops導致眾所周知的[内核错误](../Page/内核错误.md "wikilink")，但部分oops也允許繼續操作，但[可靠度會打折扣](https://zh.wikipedia.org/wiki/可靠度 "wikilink")。這個術語僅僅代表了一個簡單的錯誤。

當核心檢測到問題時，它會列印一個oops訊息然後殺死全部相關[行程](../Page/行程.md "wikilink")。oops訊息可以幫助Linux核心工程師進行[调试](https://zh.wikipedia.org/wiki/调试 "wikilink")，檢測oops出現的條件，並修復導致oops的程式錯誤。

Linux官方核心文件中提到的oops訊息被放在核心原始碼Documentation/oops-tracing.txt中。部份記錄程式的設定可能會影響收集oops訊息\[1\]。

若系統遇到了oops，一些內部資源可能不再可用。即使系統看起來運作正常，非預期的副作用可能導致活動行程被終止。若系統試圖使用無法使用的資源，核心oops常常導致核心錯誤。

Kernelloops提到了一種用於收集和提交oops到 <http://www.kerneloops.org/>
的軟體\[2\]。Kerneloops.org同時也提供了oops的統計資訊。

對於不熟悉電腦及作業系統的人來說，「oops訊息」可能會難以理解。不像[Windows或](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[OS
X等作業系統](https://zh.wikipedia.org/wiki/OS_X "wikilink")，Linux尚未具備顯示一個簡單且易懂的訊息來代表核心的當機。

## 參見

  - [System.map](https://zh.wikipedia.org/wiki/System.map "wikilink")

## 參考資料

## 延伸閱讀

  - [*Linux Device
    Drivers*，第三版，第四章](http://lwn.net/images/pdf/LDD3/ch04.pdf)

  -
  -
  -
## 外部連結

  - [oops.kernel.org](http://oops.kernel.org/)，一個收集oops報告的公共服務

[分類:Linux內核](https://zh.wikipedia.org/wiki/分類:Linux內核 "wikilink")

[Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink")

1.
2.