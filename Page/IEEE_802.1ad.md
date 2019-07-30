**IEEE 802.1ad**或稱為**QinQ**、**vlan stacking**。是一種以[802.1Q為基礎衍生出來的通訊協定](../Page/IEEE_802.1Q.md "wikilink")。

原始[802.1Q為允許加入單一Vlan](../Page/IEEE_802.1Q.md "wikilink") header。QinQ允許兩個Vlan header被放置在同一個frame中。

主要用途為電信供應商可以放置一個vlan標籤作為通過外部網路的辨識，而不需變動客戶的封包所帶出的vlan標籤。

## 優點

1\. 擴充原始的vlan個數4094 -\> 4094(inner)\*4094(outer)。

2\. ISP可以針對單一客戶設置單一vlan tag，而不需變更客戶的封包資訊。

3\. 不需要客戶的相互配合及合作，即可進行供應商橋樑的配置。

## 端口角色

1\. Normal port : for 802.1Q訊框通行的port

2\. Access port : SP邊緣裝置的入口port，在vlan stacking中被視為untagged，因此加入第二個vlan tag(outer)。

3\. Tunnel port : SP邊緣裝置的出口port，同一個客戶端皆被帶入同一個vlan tagged(使用SPVID)。

## 訊框格式

[TCPIP_802.1ad_DoubleTag.svg](https://zh.wikipedia.org/wiki/File:TCPIP_802.1ad_DoubleTag.svg "fig:TCPIP_802.1ad_DoubleTag.svg")

## 範例

[QinQ-example-simple-SP-cloud.JPG](https://zh.wikipedia.org/wiki/File:QinQ-example-simple-SP-cloud.JPG "fig:QinQ-example-simple-SP-cloud.JPG")

Acme及XYZ分別在Seattle及Tacoma有一間分公司，並藉由SP的L2 VPN網路連線，而他們的子公司都使用相同的LAN。 換句話說，我們可以假設，Acme使用VLAN 100-200並透過SP連結兩間子公司的網路；XYZ也使用VLAN 100-200並使用SP的網路連結子公司。

而對SP而言，則必須想辦法區隔Acme及XYZ的資料，使其有辦法通過SP的網路並分別送至各自的子公司。

解決辦法就是，使用VLAN STACKING來區隔Acme及XYZ的資料。

當Acme送出資料時，SP使用QinQ並給予該資料一個獨特的SPVID 1001，使其能通過SP的網路並流向另外一間子公司，當到達子公司則移除該SPVID，該資料便能依照原始的VLAN ID進行傳送。而XYZ送出資料時，SP則使用SPVID 1002來區隔。

## 參考文獻

1.  Standard approved 8 December 2005 and published May 26, 2006.

## 外部連結

  - [IEEE 802.1AD](http://www.ieee802.org/1/pages/802.1ad.html)

[Category:IEEE_802](https://zh.wikipedia.org/wiki/Category:IEEE_802 "wikilink") [Category:以太网标准](https://zh.wikipedia.org/wiki/Category:以太网标准 "wikilink")