**cFosSpeed**是一個在[Windows作業系統上管理網路流量的軟體方案](https://zh.wikipedia.org/wiki/Windows作業系統 "wikilink")。在繁忙的網路環境中，它能有效改善網路延遲。 這個程式以驅動程式的方式附加於Windows作業系統，進行封包監測與[應用層協定的分析](https://zh.wikipedia.org/wiki/應用層 "wikilink")。

因此，它较獲得[線上遊戲玩家與](https://zh.wikipedia.org/wiki/線上遊戲 "wikilink")[網路電話使用者的青睞](https://zh.wikipedia.org/wiki/網路電話 "wikilink")。

## 工作原理

這個軟體藉由使用者自訂的規則，將封包分為不同的傳輸等級。這些自訂規則可以依據程式名稱、應用層傳輸協定、TCP或UDP埠號、DSCP標籤和其他的方式，為各種傳輸需求分類並排序。

對外的封包不會混亂且隨意地傳出。 相反地，封包會依照優先順序來判斷傳輸順序，高優先度的資料會在低優先度的資料之前被傳輸。\[1\]

即使發生網路擁塞，流量管理功能仍會優先保持具即時互動性的連線順暢，像是SSH連線、VNC連線、網路電話、線上遊戲和其他具有即時性需求的程式連線。另外，迅速地處理TCP協定中的ACK封包也能讓下載保持流暢\[2\]\[3\]，這是因為資料傳出者只有在接受到接受者的接受訊息時才會繼續傳出資料。

cFosSpeed也會降低TCP的窗口大小，以避免資料傳出者一次送出太大量的資訊，從而減少因下載而造成的網路擁塞。

除此之外，cFosSpeed包含網路防火牆、流量調節、流量監視器和許多特殊功能。\[4\]它也接受腳本式的過濾器規則，讓專業人士針對其環境與需求，修改出更適合的傳輸規則。\[5\]

## 类似产品

  - [NetLimiter](https://zh.wikipedia.org/wiki/NetLimiter "wikilink")
  - [TrafficShaperXP](https://zh.wikipedia.org/wiki/TrafficShaperXP "wikilink")

## 参见

  - [TCP拥塞控制](../Page/TCP拥塞控制.md "wikilink")

## 参考文献

## 外部链接

  -
  - [Review on kashfi.com](https://web.archive.org/web/20120306225236/http://kashfi.com/2010/04/08/review-cfosspeed-traffic-shaper/)

  - [Review on Softonic onsoftware](http://en.onsoftware.com/review-cfosspeed/)

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink") [Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")

1.
2.
3.
4.
5.