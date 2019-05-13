**ARP欺騙**（），又稱**ARP毒化**（**ARP
poisoning**，網路上多譯為**ARP病毒**）或**ARP攻擊**，是針對[乙太網路](../Page/乙太網路.md "wikilink")[地址解析協議](../Page/地址解析協議.md "wikilink")（[ARP](../Page/ARP.md "wikilink")）的一種攻擊技術。此種攻擊可讓攻擊者取得[區域網路上的資料封包甚至可篡改封包](../Page/區域網路.md "wikilink")，且可讓網路上特定電腦或所有電腦無法正常連線。最早探討ARP欺騙的文章是由Yuri
Volobuev所寫的《ARP與ICMP轉向遊戲》（*ARP and ICMP redirection games*）\[1\]。

## 運作機制

ARP欺騙的運作原理是由攻擊者發送假的ARP封包到網路上，尤其是送到閘道器上。其目的是要讓送至特定的IP位址的流量被錯誤送到攻擊者所取代的地方。因此攻擊者可將這些流量另行轉送到真正的閘道（被動式封包嗅探，passive
sniffing）或是篡改後再轉送（中間人攻擊，man-in-the-middle
attack）。攻擊者亦可將ARP封包導到不存在的[MAC位址以達到阻斷服務攻擊的效果](../Page/MAC位址.md "wikilink")，例如[netcut軟體](../Page/netcut.md "wikilink")。

例如某一的IP位址是`192.168.0.254`，其MAC位址為`00-11-22-33-44-55`，網路上的電腦內ARP表會有這一筆ARP記錄。攻擊者發動攻擊時，會大量發出已將`192.168.0.254`的MAC位址篡改為`00-55-44-33-22-11`的ARP封包。那麼網路上的電腦若將此偽造的ARP寫入自身的ARP表後，電腦若要透過網路閘道連到其他電腦時，封包將被導到`00-55-44-33-22-11`這個MAC位址，因此攻擊者可從此MAC位址截收到封包，可篡改後再送回真正的閘道，或是什麼也不做，讓網路無法連線。

[Ethernet_Type_II_Frame_format.svg](https://zh.wikipedia.org/wiki/File:Ethernet_Type_II_Frame_format.svg "fig:Ethernet_Type_II_Frame_format.svg")

**简单案例分析**：这里用一个最简单的案例来说明ARP欺骗的核心步骤。假设在一个LAN裡，只有三台主机A、B、C，且C是攻击者。

1.  攻击者聆听局域网上的MAC地址。它只要收到两台主机洪泛的ARP Request，就可以进行欺骗活动。
2.  主机A、B都洪泛了ARP Request.攻击者现在有了两台主机的IP、MAC地址，开始攻击。
3.  攻击者发送一个ARP Reply给主机B，把此包protocol header里的sender IP设为A的IP地址，sender
    mac设为攻击者自己的MAC地址。
4.  主机B收到ARP Reply后，更新它的ARP表，把主机A的MAC地址（IP_A, MAC_A）改为（IP_A, MAC_C）。
5.  当主机B要发送数据包给主机A时，它根据ARP表来封装数据包的Link报头，把目的MAC地址设为MAC_C，而非MAC_A。
6.  当交换机收到B发送给A的数据包时，根据此包的目的MAC地址（MAC_C）而把数据包转发给攻击者C。
7.  攻击者收到数据包后，可以把它存起来后再发送给A，达到偷听效果。攻击者也可以篡改数据后才发送数据包给A，造成伤害。

## 防制方法

最理想的防制方法是網路內的每台電腦的ARP一律改用靜態的方式，不過這在大型的網路是不可行的，因為需要經常更新每台電腦的ARP表。

另外一種方法，例如[DHCP
snooping](../Page/DHCP_snooping.md "wikilink")，網路設備可藉由[DHCP保留網路上各電腦的MAC位址](../Page/DHCP.md "wikilink")，在偽造的ARP封包發出時即可偵測到。此方式已在一些廠牌的網路設備產品所支援。

有一些軟體可監聽網路上的ARP回應，若偵測出有不正常變動時可發送[電子郵件通知管理者](../Page/電子郵件.md "wikilink")。例如[UNIX平台的](../Page/UNIX.md "wikilink")[Arpwatch以及](../Page/Arpwatch.md "wikilink")[Windows上的](../Page/Windows.md "wikilink")[XArp
v2](../Page/XArp_v2.md "wikilink")\[2\]或一些網路設備的Dynamic ARP inspection功能。

## 正當用途

ARP欺騙亦有正當用途。其一是在一個需要登入的網路中，讓未登入的電腦將其瀏覽網頁強制轉向到登入頁面，以便登入後才可使用網路。另外有些設有備援機制的網路設備或[伺服器](../Page/伺服器.md "wikilink")，亦需要利用ARP欺騙以在設備出現故障時將訊務導到備用的設備上。

## 参考資料

<div class="references-small">

<references />

</div>

## 外部連結

  -
  -
  -
  -
  -
  -
  -
  -
[Category:網路安全](https://zh.wikipedia.org/wiki/Category:網路安全 "wikilink")
[Category:乙太網路](https://zh.wikipedia.org/wiki/Category:乙太網路 "wikilink")

1.
2.