**IEEE 802.1Q**以及**VLAN
Tagging**屬於[網際網路下](https://zh.wikipedia.org/wiki/計算機網路 "wikilink")[IEEE
802.1的標準規範](https://zh.wikipedia.org/wiki/IEEE_802.1 "wikilink")，允許多個[网桥(Bridge)在信息不被外洩的情況下公開的共用同一個實體網路](https://zh.wikipedia.org/wiki/网桥 "wikilink")。IEEE
802.1Q -英文縮寫寫為dot1q，經常在實現[乙太網路](https://zh.wikipedia.org/wiki/乙太網 "wikilink")[封裝協議的架構下被提及](https://zh.wikipedia.org/wiki/封裝協議 "wikilink")。

IEEE
802.1Q定義一個關於[VLAN連接](https://zh.wikipedia.org/wiki/虛擬局域網 "wikilink")[介質訪問控制層和](../Page/数据链路层.md "wikilink")[IEEE
802.1D](https://zh.wikipedia.org/wiki/IEEE_802.1D "wikilink")[生成樹協議的具體概念模型](https://zh.wikipedia.org/wiki/生成樹協議 "wikilink")。這個模型允許各個獨立的VLAN以[以太网交换机的](https://zh.wikipedia.org/wiki/以太网交换机 "wikilink")[数据链路层或](../Page/数据链路层.md "wikilink")[路由器互相連接](../Page/路由器.md "wikilink")。

## 用途

以VLAN的架構而言，可以想像一個公司的IT部門希望能夠只使用一個實體企業網路端以提供個別獨立的邏輯網路端，其他每個部門能夠分配到一個獨特的VLAN網路。企業網路中的[Edge
switch用來替所有從設備儀器中送抵各個部門的数据帧](https://zh.wikipedia.org/wiki/Edge_switch "wikilink")(Data
frames)，插入適合的VLAN標記。當帧(frames)在網路中被交換時，VLAN標籤會在被送回部門底下的設備時被移除。用這種方法資訊在被傳到其它部門時就不會外洩或被[嗅探](https://zh.wikipedia.org/wiki/嗅探 "wikilink")。

## 封包格式

[Ethernet_802.1Q_Insert.svg](https://zh.wikipedia.org/wiki/File:Ethernet_802.1Q_Insert.svg "fig:Ethernet_802.1Q_Insert.svg")

802.1Q
並非實際封入原始幀中。相反，在[以太网帧格式裡](../Page/以太网帧格式.md "wikilink")，在[MAC地址源與](../Page/MAC地址.md "wikilink")[以太网类型](https://zh.wikipedia.org/wiki/以太网类型 "wikilink")/長度的原始幀裡添加一個32位元的域(field)。VLAN標籤領域必須遵守下列格式:

| 16 bits | 3 bits | 1 bit | 12 bits |
| ------- | ------ | ----- | ------- |
| TPID    | PCP    | CFI   | VID     |

  - **標簽協議識別符**(Tag Protocol Identifier, TPID):
    一組16位元的域其數值被設定在0x8100，以用來辨別某個IEEE
    802.1Q的幀成為「已被標註的」，而這個域所被標定位置與乙太形式/長度與未標籤幀的域相同，這是為了用來區別未標籤的幀。

<!-- end list -->

  - **優先權代碼點**(Priority Code Point, PCP): 以一組3位元的域當作[IEEE
    802.1p優先權的參考](../Page/IEEE_802.1p.md "wikilink")，從0(最低)到7(最高)，用來對資料流(音訊、影像、檔案等等)作傳輸的優先順序。

<!-- end list -->

  - **標準格式指示**(Canonical Format Indicator, CFI):
    1位元的域。若是這個域的值為1，則MAC地址則為非標準格式；若為0，則為標準格式；在乙太交換器中他通常預設為0。在乙太和[令牌環中](https://zh.wikipedia.org/wiki/令牌環 "wikilink")，CFI用來做為兩者的相容。若幀在乙太端中接收資料則CFI的值須設為1，且這個端口不能與未標籤的其他端口橋接。

<!-- end list -->

  - **虛擬局域網識別符**(VLAN Identifier, VID):
    12位元的域，用來具體指出幀是屬於哪個特定VLAN。值為0時，表示幀不屬於任何一個VLAN；此時，802.1Q標籤代表優先權。12位元的值0x000和0xFFF為保留值，其他的值都可用來做為共4094個VLAN的識別符。在橋接器上，VLAN1在管理上做為保留值。這個12位元的域可分為兩個6位元的域以延伸目的(Destination)與源(Source)之48位元地址，18位元的[三重標記](https://zh.wikipedia.org/wiki/三重標記 "wikilink")(Triple-Tagging)可和原本的48位元相加成為66位元的地址。

使用[IEEE
802.2](https://zh.wikipedia.org/wiki/IEEE_802.2 "wikilink")/[SNAP涵蓋了一組值為](https://zh.wikipedia.org/wiki/子网接入协议 "wikilink")00-00-00的OUI域(所以SNAP[信頭的協議ID域屬於乙太形式](https://zh.wikipedia.org/wiki/信頭 "wikilink"))。在乙太網以外的情況下，SNAP信頭的乙太形式數值被設為0x8100且前述的額外4個位元會被附加在SNPA開頭之後。

因為插入VLAN標籤會改變幀，在乙太外掛裡802.1Q概括(encapsulation)會強迫檢驗原始的[幀檢查序列](https://zh.wikipedia.org/wiki/幀檢查序列 "wikilink")(Frame
Check Sequence, FCS)域。這同時也會增加幀4位元組的上限容量。

**雙重標記**([IEEE
802.1ad](../Page/IEEE_802.1ad.md "wikilink"))對於[網際網路提供者](https://zh.wikipedia.org/wiki/網際網路提供者 "wikilink")(ISP)是非常有用的。他允許當已被VLAN標籤的混合資料從客戶端送出時ISP仍能在內部使用VLAN。**外部**(outer,
next to Source MAC and represening ISP
VLAN)標籤會先於**內部**(inner)標籤。此時，一個可變的TPID在16進位值可能為9100、9200或是9300，通常作為外部標籤；然而在值為88a8時會違反[802.1ad而無法作為外部標籤](https://zh.wikipedia.org/wiki/802.1ad "wikilink")。
[TCPIP_802.1ad_DoubleTag.svg](https://zh.wikipedia.org/wiki/File:TCPIP_802.1ad_DoubleTag.svg "fig:TCPIP_802.1ad_DoubleTag.svg")

**三重標記**
也同樣可行。12位元的VID延伸出48位元的目的與源地址成66位元。中間3位元的PCP域可作為虛擬TTL或Hop-Count以確保封包不會成為無限迴圈；更複雜的形式則是使其中一位元超載成為ingress-egress的編碼形式。PCP域的末三碼用來替檔案內容分層，從000
NR至111 XXX。在Payload段落找到的CFI3位元被組合並編碼成Next
Header(或是協定)，僅有其中兩碼會被使用而產生4個協定，\[NOP、ICMP、UDP、ENCAP\]。
NOP, No Protocol:用作IP byte/管流(pipe streams)中微小的Payload段落。
ICMP供做控制用途。UDP增加端口數量，是一個從IP送出的半冗沉(semi-redundant)即可選擇的校驗和。ENCAP協定或是Payload形是允許前述所有的協定，不需序文就可以封中；其中內容必須包含CRC\\FCS標籤。TTL和長度(length)被置於48位元的地址域前讓硬體優先讀取以減少延遲。

## 中繼端口及原生VLAN

1998
802.1Q標準定義封裝協議的第9項，藉由加入VLAN標籤可使複數VLAN透過一個連結[多路複用](https://zh.wikipedia.org/wiki/多路複用 "wikilink")，然而他卻能夠傳送所有幀不論是否已被標記。因此，為了能夠辨識所傳送的幀是否需要標籤，有些廠商(尤其是[思科系統](https://zh.wikipedia.org/wiki/思科系統 "wikilink"))經常將**中繼端口**以及**原生VLAN**的想法應用在中繼器上。

中繼端口的想法基於設計一個中繼端口，他能夠接收並轉送幀。若中繼端口接收到未標籤的幀，此幀就會連結這個端口與原生VLAN。

假設有個802.1Q的端口有VLAN2、3、4，且VLAN2被當作原生VLAN，則在VLAN2中的幀會在不帶有802.1Q信頭的情況下離開前述的端口(它們屬於普通的乙太網)。；在此帧未帶802.1Q信頭時進入端口會被放入VLAN2裡。與VLAN3和VLAN4的資訊流行為是可預測的，也就是說送抵VLAN3和4的幀是帶有標記以辨識他們，而離開VLAN3和4的幀也會攜帶各自的VLAN標籤。

然而並不是所有的廠商都會使用這樣的概念。

## 多重VLAN註冊協議

另外，IEEE
802.1Q定義了[多重VLAN註冊協議](https://zh.wikipedia.org/wiki/多重VLAN註冊協議 "wikilink")(Mutiple
VLAN Registration Protocol, MVRP)，它可應用於橋接器在具體網路上與VLAN的溝通。

在2007年，MVRP和IEEE 802.1ak-2007修正案取代了速度較慢的[GARP
VALN註冊協議](https://zh.wikipedia.org/wiki/GARP_VALN註冊協議 "wikilink")(GVRP)。

## 多重生成樹協議

2003年時推行了[多重生成樹協議](https://zh.wikipedia.org/wiki/多重生成樹協議 "wikilink")(Mutiple
Spanning Tree Protocol, MSTP)並定義了原始的[IEEE
802.1s](https://zh.wikipedia.org/wiki/IEEE_802.1s "wikilink")

## 參見

  - [Shortest Path
    Bridging](https://zh.wikipedia.org/wiki/Shortest_Path_Bridging "wikilink")
    (SPB), [IEEE
    802.1aq](https://zh.wikipedia.org/wiki/IEEE_802.1aq "wikilink")
  - [VLAN Trunking
    Protocol](https://zh.wikipedia.org/wiki/VLAN_Trunking_Protocol "wikilink")
    (VTP), a Cisco proprietary VLAN management protocol
  - [Cisco Inter-Switch
    Link](https://zh.wikipedia.org/wiki/Cisco_Inter-Switch_Link "wikilink")
    (ISL), an older VLAN trunking protocol that is proprietary to
    [Cisco](https://zh.wikipedia.org/wiki/Cisco "wikilink")
  - [Dynamic Trunking
    Protocol](https://zh.wikipedia.org/wiki/Dynamic_Trunking_Protocol "wikilink")
    another Cisco proprietary networking protocol.

## 參考資料

  -
  - [ISL & 802.1q Frame
    Formats](http://www.cisco.com/en/US/tech/tk389/tk689/technologies_tech_note09186a0080094665.shtml)

[Category:網路標準](https://zh.wikipedia.org/wiki/Category:網路標準 "wikilink")
[Category:以太网标准](https://zh.wikipedia.org/wiki/Category:以太网标准 "wikilink")
[Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink")