**IEEE
802.3**是[IEEE制定在](https://zh.wikipedia.org/wiki/IEEE "wikilink")[雙工模式](https://zh.wikipedia.org/wiki/雙工模式 "wikilink")(Full
Duplex)中提供流量控管的機制(Flow Control) ，相關規格已制定於 IEEE Std 802.3-2002(Annex
31B)中。

目前高效能的[網路交換器](../Page/網路交換器.md "wikilink")皆有建置流量控管機制，當[網路交換器](../Page/網路交換器.md "wikilink")產生擁塞時就會利用PAUSE
frame 通知傳送者暫緩送出封包，以減緩擁塞情況。

## 概述

早期[網路交換器](../Page/網路交換器.md "wikilink")在[半雙工](https://zh.wikipedia.org/wiki/半雙工 "wikilink")(Half
Duplex) 中，有一方因為效能較差或頻寬較小，來不及處理這些源源不斷的封包時，會使用back pressure
方式，以減緩封包雍塞情況。大致分為兩種作法: (1) force
collision：當接收者發現有封包送來了，就發個封包故意產生傳輸碰撞(collision)現象。這樣傳送者發現傳輸碰撞就會安排重送，因此接收者可以有更多的時間處理封包，queue
被塞滿的情況可以暫時舒緩。 (2) false
carrier：又稱deferral，接收者利用發一長串的preamble信號，讓傳送者一直以為這邊要傳輸資料過去(carrier)，因此傳送者就會等待不再送出封包。

但是[雙工模式](https://zh.wikipedia.org/wiki/雙工模式 "wikilink")(Full
Duplex)下，因為沒有載波偵聽多路存取/衝突檢測（CSMA/CD）機制，所以上述的方法無效。

在 802.3x下，當[網路交換器](../Page/網路交換器.md "wikilink")產生擁塞時就會利用PAUSE frame
通知傳送者暫緩送出封包，以減緩擁塞情況。\[1\]。

## 参考資料

<div class="references-small">

<references />

</div>

## 外部連結

  - [Get
    IEEE 802®](http://standards.ieee.org/getieee802/download/802.1X-2004.pdf)

[Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")

1.