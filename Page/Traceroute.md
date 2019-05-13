**traceroute**，現代[Linux系統稱為](../Page/Linux.md "wikilink")**tracepath**，[Windows系統稱為](../Page/Windows.md "wikilink")**tracert**，是一種電腦網絡工具。它可顯示[封包在IP網絡經過的](../Page/封包.md "wikilink")[路由器的](../Page/路由器.md "wikilink")[IP位址](../Page/IP位址.md "wikilink")。

## 原理

程式是利用增加[存活時間](../Page/存活時間.md "wikilink")（TTL）值來實現其功能的。每當封包經過一個路由器，其存活時間就會減1。當其存活時間是0時，主機便取消封包，並傳送一個[ICMP](../Page/ICMP.md "wikilink")
TTL封包給原封包的發出者。

程式發出的首3個封包TTL值是1，之後3個是2，如此類推，它便得到一連串封包路徑。注意IP不保證每個封包走的路徑都一樣。

## 實現

主叫方首先發出 TTL=1 的數據包，第一個路由器將 TTL 減1得0后就不再繼續轉發此數據包，而是返回一個 ICMP
逾時報文，主叫方從逾時報文中即可提取出數據包所經過的第一個閘道器位址。然後又發出一個
TTL=2 的 ICMP 數據包，可獲得第二個閘道器位址，依次遞增 TTL 便獲取了沿途所有閘道器位址。

需要注意的是，並不是所有閘道器都會如實返回 ICMP 超時報文。出於安全性考慮，大多數防火墻以及啓用了防火墻功能的路由器缺省配置為不返回各種
ICMP 報文，其餘路由器或[交換機也可被管理員主動修改配置變為不返回](../Page/交換機.md "wikilink") ICMP
報文。因此 Traceroute 程式不一定能拿全所有的沿途閘道器位址。所以，當某個 TTL
值的數據包得不到響應時，並不能停止這一追蹤過程，程式仍然會把 TTL
遞增而發出下一個數據包。一直達到預設或用參數指定的追蹤限制（maximum_hops）才结束追蹤。

依據上述原理，利用了 UDP 數據包的 Traceroute 程式在數據包到達真正的目的主機時，就可能因為該主機沒有提供
[UDP](../Page/UDP.md "wikilink")
服務而簡單將數據包抛棄，並不返回任何信息。爲了解決這個問題，Traceroute
故意使用了一個大於 30000 的端口號，因 UDP 協定規定端口號必須小於 30000
，所以目標主機收到數據包后唯一能做的事就是返回一個“端口不可達”的
ICMP 報文，於是主叫方就將端口不可達報文當作跟蹤結束的標誌。

## 例子

由[愛沙尼亞的](../Page/愛沙尼亞.md "wikilink")`kauge.aso.ee`（`195.80.96.219`）到[美國](../Page/美國.md "wikilink")`larousse.wikipedia.org`（`130.94.122.199`）：

    1   kauge.aso.ee
    2   et-gw.aso.ee
    3   kjj-bb2-fe-0-1-4.ee.estpak.ee
    4   noe-bb2-ge-0-0-0-1.ee.estpak.ee
    5   s-b3-pos0-3.telia.net
    6   s-bb1-pos1-2-0.telia.net
    7   adm-bb1-pos1-1-0.telia.net
    8   adm-b1-pos2-0.telia.net
    9   p4-1-2-0.r00.amstnl02.nl.bb.verio.net
    10  p4-0-3-0.r01.amstnl02.nl.bb.verio.net
    11  p4-0-1-0.r80.nwrknj01.us.bb.verio.net
    12  p4-0-3-0.r00.nwrknj01.us.bb.verio.net
    13  p16-0-1-1.r20.mlpsca01.us.bb.verio.net
    14  xe-1-2-0.r21.mlpsca01.us.bb.verio.net
    15  xe-0-2-0.r21.snjsca04.us.bb.verio.net
    16  p64-0-0-0.r21.lsanca01.us.bb.verio.net
    17  p16-3-0-0.r01.sndgca01.us.bb.verio.net
    18  ge-1-2.a03.sndgca01.us.da.verio.net
    19  larousse.wikipedia.org

## 歷史

根據traceroute的[man page](../Page/man_page.md "wikilink")：1987年，Steve
Deering建議Van Jacobson寫一個這樣的程式。C. Philip Wood、Tim Seaver和Ken
Adelman為這個程式提供一些意見或改動。

[Windows
NT系統有結合](../Page/Windows_NT.md "wikilink")[ping和traceroute的pathping工具](../Page/ping.md "wikilink")。

## 外部連結

  - [線上traceroute工具](http://www.traceroute.org/)

  - [TRACEROUTE6.net](http://www.traceroute6.net/): 在亚洲区含IPv4 和 IPv6
    的線上traceroute工具

  - [Traceroute test](http://www.test-net.org/traceroute/)

  - [在线Traceroute路由器追踪工具](https://myipaddress.pro/cn/traceroute)

[Category:网路管理软件](https://zh.wikipedia.org/wiki/Category:网路管理软件 "wikilink")