[Tcp_normal.svg](https://zh.wikipedia.org/wiki/File:Tcp_normal.svg "fig:Tcp_normal.svg")）與伺服器之間正常連線狀況。三向交握正確的進行。\]\]
[Tcp_synflood.png](https://zh.wikipedia.org/wiki/File:Tcp_synflood.png "fig:Tcp_synflood.png")）傳送許多封包就是不送"ACK"回到伺服器。該連線因此處於半開狀態並吞食伺服器資源。因為阻斷服務攻擊的結果合法用戶Alice與伺服器嘗試建立連線遭拒。\]\]

**SYN
flood**或稱**SYN洪水**、**SYN洪泛**是一種[阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")，起因於攻擊者傳送一系列的[`SYN`](../Page/SYN_\(TCP\).md "wikilink")請求到目標系統。\[1\]\[2\]

當用戶端試著與伺服器間建立[TCP連線時](../Page/传输控制协议.md "wikilink")，正常情況下[用戶端與](../Page/客戶端.md "wikilink")[伺服器端交換一系列的信息如下](../Page/伺服器.md "wikilink")：

1.  用戶端透過傳送`SYN`同步（synchronize）信息到伺服器要求建立連線。
2.  伺服器透過響應用戶端`SYN-ACK`以抄收（acknowledge）請求。
3.  用戶端答應[`ACK`](../Page/ACK_\(TCP\).md "wikilink")，連線隨之建立。

這即是所謂[TCP三向交握](../Page/传输控制协议#通路的建立和终结.md "wikilink")，並且這是每個使用TCP傳輸協議建立連線的基礎。

SYN
flood是一種廣為人知的攻擊，一般對現代網路不太有效。這種攻擊只有在伺服器在收到`SYN`後分配資源，但在收到`ACK`之前這個區段有效。

SYN
flood攻擊目前有兩種方法，不過都與伺服器端沒收到`ACK`有關。惡意用戶可以跳過傳送最後的`ACK`信息；或者在`SYN`裡透過[欺騙來源](../Page/IP位址欺騙.md "wikilink")[IP位址](../Page/IP位址.md "wikilink")，這讓伺服器送`SYN-ACK`到假造的IP位址，因此永不可能收到`ACK`。這兩個案例伺服器會花點時間等抄收通知，故一個簡單的網路壅塞可能是由於沒有`ACK`造成的。

如果這些綁定伺服器資源，透過海量`SYN`信息淹沒伺服器是有可能耗盡其資源。一旦所有資源都撥給半開通連線所保留，沒有新的連線（不管合法不合法）可被建立，導致阻斷服務攻擊。某些系統可能會故障得很糟糕，甚至宕機如果其他作業系統函式渴望這種形式的資源。

過去通常於1996年用來分配資源給半開通連線的技術牽涉到通常相當短的佇列\[3\]。佇列的每個空位可在連線完成、或者到期時\[4\]被清空。當佇列滿時，新進來的連線建立會失敗。以上面的範例來說，所有新進來的連線在總共8個封包被送出之前會被阻擋下來。也就是說，每3分鐘正時算好的8個封包將阻斷所有新進的TCP連線完成。這讓這種阻斷服務攻擊只須佔很小的傳輸量。

建議的反制方法包括[SYN
cookie或者限定某一段時間內來自同一來源請求新連線的數量](../Page/SYN_cookie.md "wikilink")，不過因為現代的[TCP/IP堆疊沒有上面所述的](../Page/TCP/IP协议.md "wikilink")[瓶頸](../Page/瓶頸.md "wikilink")，因此介於SYN
flood與其它種基於[通道容量類型的攻擊應該會只有很小或幾乎沒有差別](../Page/通道容量.md "wikilink")。

[反射路由器亦可以被攻擊者所利用](../Page/反射路由器.md "wikilink")，以取代客戶端機器。SYN讲的是黑客利用TCP协议发送大量的半连接请求去攻击目标服务器或者主机，致使目标服务器发生拒绝服务，或者蓝屏。

## 對策

在 RFC 4987 中有许多著名的对策，包括：

1.  過濾
2.  增加積壓
3.  減少SYN-RECEIVED定時
4.  複用古老的
5.  SYN緩存
6.  [SYN Cookie](../Page/SYN_cookie.md "wikilink")
7.  混合方法
8.  防火牆和代理

## 相關概念

  - [阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")

  - [互联网控制消息协议](../Page/互联网控制消息协议.md "wikilink")

  - [IP地址欺骗](../Page/IP地址欺骗.md "wikilink")

  -
  -
## 參考資料

<references/>

## 外部連結

  - [CERT官方對SYN攻擊的建議](http://www.cert.org/advisories/CA-1996-21.html)

  -
[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink")

1.  [RFC4987](http://tools.ietf.org/html/rfc4987) TCP SYN Flood攻擊與一般對策
2.  [New York's Panix Service Is Crippled by Hacker
    Attack](https://partners.nytimes.com/library/cyber/week/0914panix.html),
    New York Times, September 14, 1996
3.  例如：[8個空位長](http://www.sean.de/Solaris/soltune.html)
4.  例如：[3分鐘後](http://tools.ietf.org/html/rfc1122#section-4.2.3.5)