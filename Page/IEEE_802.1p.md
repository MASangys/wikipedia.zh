**IEEE 802.1p**是[IEEE
802.1Q](../Page/IEEE_802.1Q.md "wikilink")（[VLAN標籤技術](https://zh.wikipedia.org/wiki/VLAN "wikilink")）標準的擴充協定，两者共同運作，使第二層[網路交換器能夠提供流量優先級和動態](../Page/網路交換器.md "wikilink")[多播過濾服務](../Page/多播.md "wikilink")。

[IEEE
802.1Q標準定義了乙太網路MAC資料框添加的標籤](../Page/IEEE_802.1Q.md "wikilink")。VLAN標籤有兩部分：VLAN
ID（12位元）和PCP（Priority Code Point）（3位元）。IEEE 802.1Q
VLAN標準中沒有定義和使用PCP，而802.1P中則定義了PCP。

PCP定義了從0至7的優先值，可以為第二層服務品質（QoS）或服務類（CoS）區分流量。此外，IEEE
802.1p標準也提供了[多播流量過濾功能](../Page/多播.md "wikilink")，以確保該流量不超出第二層交換網路範圍。

## 優先級

可用的服務等級有八個，透過加到[IEEE802.1Q資料框表頭](https://zh.wikipedia.org/wiki/IEEE802.1Q "wikilink")3位元的PCP欄位表達，IEEE作了大量建議。\[1\]

| PCP值 | 优先级   | 缩写 | 流量类型                   |
| ---- | ----- | -- | ---------------------- |
| 1    | 0（最低） | BK | 后台（Background）         |
| 0    | 1（默认） | BE | 尽力而为（Best Effort）      |
| 2    | 2     | EE | 极大努力（Excellent effort） |
| 3    | 3     | CA | 关键应用程序                 |
| 4    | 4     | VI | 视频，\< 100 ms延迟和抖动      |
| 5    | 5     | VO | 音频，\< 10 ms延迟和抖动       |
| 6    | 6     | IC | 网间控制                   |
| 7    | 7（最高） | NC | 网络控制                   |

要注意以上的定義是已在IEEE 802.1Q-2005修正，不同於IEEE 802.1D-2004的原始定義。

## 參見

  - [IEEE 802.1](https://zh.wikipedia.org/wiki/IEEE_802.1 "wikilink")

  -
  - [IEEE 802.3](https://zh.wikipedia.org/wiki/IEEE_802.3 "wikilink")

  - （ToS）

  - [以太网优先流量控制](../Page/IEEE_802.3x.md "wikilink")

## 參考資料

[Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")
[Category:以太网标准](https://zh.wikipedia.org/wiki/Category:以太网标准 "wikilink")

1.  IEEE 802.1Q-2011, Table I-2 - Traffic type acronyms