> 本文内容由[MOST](https://zh.wikipedia.org/wiki/MOST)转换而来。


**媒體導向系統傳輸**簡稱**MOST**（英文：**Media Oriented Systems Transport**）是一種車內[網路介面標準](https://zh.wikipedia.org/wiki/網路 "wikilink")，主要是為了讓[汽車或其他運輸交通工具內的](https://zh.wikipedia.org/wiki/汽車 "wikilink")[多媒體組件能夠互連而設計](https://zh.wikipedia.org/wiki/多媒體 "wikilink")。

MOST與原有的技術不同，它運用[光纖來進行主幹性的大量](https://zh.wikipedia.org/wiki/光纖 "wikilink")、高速傳輸，使得支末的匯流排連接在傳輸率上能遠超越過去的Vehicle-bus技術。

MOST的資料通訊標準、規範等規格制訂上完全遵循與實現[ISO/OSI的網路七層參考模型](../Page/OSI模型.md "wikilink")。MOST網路通常採行環狀（Ring）的連接拓樸，不過若為了因應更嚴苛的應用需求也可以改採星狀（Star）或雙環狀（Double Ring）的連接拓樸，而網路上最多可以連接64個裝置或節點，且MOST具有[隨插即用](../Page/隨插即用.md "wikilink")的特性，允許隨時增減節點數。

在64個節點中，有一個時序主控者（Timing Master）的節點負責持續送出資料訊框到環狀連接中，時序主控者等於是擔任資料閘門的角色工作。除此之外其他的節點為時序受控者（Timing Slave），受控者若處在閒置、休眠等狀態，也會不斷接收到來自主控者所發送出來的（preamble）、[信頭](https://zh.wikipedia.org/wiki/信頭 "wikilink")（packet header）。

MOST的總頻寬（包含串流資料與封包資料）達每秒23M個[鮑率](../Page/波特率.md "wikilink")，並有60個通道、15個MPEG-1通道，這些可由設計者自行規劃配置。

MOST是由MOST Cooperation公司所研創，並由多家汽車製造業者共同支持為產業標準，這些業者包括[福特汽車](https://zh.wikipedia.org/wiki/福特汽車 "wikilink")（Ford Motor Company）、[寶馬汽車](../Page/BMW.md "wikilink")（BMW）、[戴姆勒-克莱斯勒汽車](https://zh.wikipedia.org/wiki/戴姆勒-克莱斯勒 "wikilink")（Daimler AG）、以及[通用汽車](https://zh.wikipedia.org/wiki/通用汽車公司 "wikilink")（General Motors Corporation）。

此外一線的車用電子供應業者，如[英飛凌](https://zh.wikipedia.org/wiki/英飛凌 "wikilink")（Infineon Technologies）、（通用汽車的一個部門）、電裝（Denso，[豐田汽車的一個部門](https://zh.wikipedia.org/wiki/豐田汽車股份有限公司 "wikilink")），以及視聽設備的製造業者，如[索尼](https://zh.wikipedia.org/wiki/Sony "wikilink")、[飛利浦](https://zh.wikipedia.org/wiki/飛利浦公司 "wikilink")、以及[摩托羅拉等](https://zh.wikipedia.org/wiki/摩托羅拉 "wikilink")，都是MOST技術的支持者。另外MOST是SMSC公司的註冊商標，MOST Cooperation已獲得授權許可，可免費使用此一商標。

## 外部連結

  - [MOST Cooperation的官方網站](http://www.mostcooperation.com/)
  - [MOST技術的歷史](https://web.archive.org/web/20041019201857/http://www.telos.de/most_e.htm)
  - [車用電子之多媒體傳控網路：MOST技術](https://web.archive.org/web/20060505105635/http://tech.digitimes.com.tw/ShowNews.aspx?zCatId=135&zNotesDocId=682CAC814E4CE9A048257156005C846C)

[Category:電腦匯流排](https://zh.wikipedia.org/wiki/Category:電腦匯流排 "wikilink") [Category:車用部件小作品](https://zh.wikipedia.org/wiki/Category:車用部件小作品 "wikilink")