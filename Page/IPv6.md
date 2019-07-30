**网际协议第6版**（，縮寫：**IPv6**）是[网际协议](../Page/网际协议.md "wikilink")的最新版本，用作[互联网](../Page/互联网.md "wikilink")的[網路層協議](https://zh.wikipedia.org/wiki/網路層 "wikilink")。用它来取代[IPv4](../Page/IPv4.md "wikilink")主要是为了解决[IPv4地址枯竭问题](https://zh.wikipedia.org/wiki/IPv4地址枯竭问题 "wikilink")，同时它也在其他方面对于IPv4有许多改进。

IPv6的设计目的是取代IPv4，然而长期以来IPv4在互联网流量中仍占据主要地位，IPv6的使用增长缓慢。在2017年7月，通过IPv6使用[Google](../Page/Google.md "wikilink")服务的用户百分率首次超过20%。\[1\]

## 背景與目標

现今的-{zh-hans:互联网络;zh-hk:互聯網絡;zh-sg:互联网络;zh-tw:網際網路;}-发展蓬勃，截至2018年1月，[全球上網人數已達](https://zh.wikipedia.org/wiki/全球网际网路使用率 "wikilink")40.21億，[IPv4](../Page/IPv4.md "wikilink")僅能提供約42.9億個IP位置。雖然目前的[网络地址转换](../Page/网络地址转换.md "wikilink")及[无类别域间路由](../Page/无类别域间路由.md "wikilink")等技術可延緩網路位置匱乏之現象，但為求解決根本問題，從1990年開始，[互联网工程工作小组開始規劃](https://zh.wikipedia.org/wiki/互联网工程工作小组 "wikilink")[IPv4](../Page/IPv4.md "wikilink")的下一代協定，除要解決即將遇到的IP位址短缺問題外，還要發展更多的擴充功能，為此IETF小組創建IPng，以讓後續工作順利進行。1994年，各IPng領域的代表們於[多倫多舉辦的IETF會議中](https://zh.wikipedia.org/wiki/多倫多 "wikilink")，正式提議**IPv6**發展計劃，該提議直到同年的11月17日才被認可，並於1996年8月10日成為IETF的草案標準，最終IPv6在1998年12月由互联网工程工作小组以互聯網標準規範（RFC 2460）的方式正式公佈。

IPv6的計劃是建立未來網際網路擴充的基礎，其目標是取代IPv4，雖然IPv6在1994年就已被IETF指定作為IPv4的下一代標準，由於早期的路由器、防火牆、企業的[企业资源计划](../Page/企业资源计划.md "wikilink")系統及相關應用程式皆須改寫，所以在世界範圍內使用IPv6部署的公眾網與IPv4相比還非常的少\[2\]\[3\]，技術上仍以雙架構並存居多。預計在2025年以前IPv4仍會被支持，以便給新協議的修正留下足夠的時間。

IPv6能解決的核心問題與互聯網目前所面臨的關鍵問題之間出現了明顯的偏差，難以給互聯網的發展帶來革命性的影響。與IPv4的各種地址復用解決方案相比，IPv6能夠降低複雜性和成本，然而目前卻只有製造商較能夠感受到這個優勢，用戶和運營商​​無法直接感受到，導致產業鏈缺乏推動IPv6的動力。\[4\]

## 与IPv4比较

在Internet上，数据以[分组的形式传输](https://zh.wikipedia.org/wiki/分组 "wikilink")。IPv6定义了一种新的[分组格式](https://zh.wikipedia.org/wiki/IPv6分组 "wikilink")，目的是为了最小化路由器处理的訊息標頭\[5\]\[6\]。由于IPv4訊息和IPv6訊息標頭有很大不同，因此这两种协议无法互操作。但是在大多数情况下，IPv6仅仅是对IPv4的一种保守擴展。除了嵌入了互联网地址的那些应用協議（如[FTP和](https://zh.wikipedia.org/wiki/FTP "wikilink")[NTPv3](https://zh.wikipedia.org/wiki/网络时间协议 "wikilink")，新地址格式可能会与当前协议的语法冲突）以外，大多数传输层和应用层协议几乎不怎么需要修改就可以在IPv6上運行。

### 无状态地址自动配置（SLAAC）

当连接到IPv6网络上时，IPv6主机可以使用[邻居发现协议对自身进行自动配置](https://zh.wikipedia.org/wiki/邻居发现协议 "wikilink")。当第一次连接到网络上时，主机发送一个[链路本地路由器请求](../Page/链路本地地址.md "wikilink")（solicitation）多播请求来获取配置参数。路由器使用包含Internet层配置参数的路由器宣告（advertisement）报文进行回应\[7\]。

在不适合使用IPv6无状态地址自动配置的场景下，网络可以使用有状态配置，如[DHCPv6](../Page/DHCPv6.md "wikilink")，或者使用静态方法手动配置。

## IPv6编码

IPv6具有比IPv4大得多的编码地址空間。這是因為IPv6採用128位元的地址，而IPv4使用的是32位元。因此新增的地址空間支持2<sup>128</sup>（約3.4×10<sup>38</sup>）個位址，具体数量为340,282,366,920,938,463,463,374,607,431,768,211,456 个，也可以說成16<sup>32</sup>個，因為32位地址每位可以取16個不同的值。

[網絡地址轉換是目前減緩IPv](https://zh.wikipedia.org/wiki/網絡地址轉換 "wikilink")4地址耗盡最有效的方式，而IPv6的地址消除了對它的依賴，被認為足夠在可以預測的未來使用。就以地球人口70億人計算，每人平均可分得約4.86×10<sup>28</sup>（486117667×10<sup>20</sup>）個IPv6位址。

IPv6從IPv4到IPv6最顯著的變化就是網絡地址的長度。RFC 2373和RFC 2374定義的IPv6地址有128位長；IPv6地址的表達形式一般採用32個十六進制數。

在很多場合，IPv6地址由兩個邏輯部分組成：一個64位的網絡前綴和一個64位的主機地址，主機地址通常根據物理地址自動生成，叫做EUI-64（或者64-位擴展唯一標識）

## IPv6格式

IPv6二進位制下為128位元長度，以16位元為一組，每組以冒號「:」隔開，可以分為8組，每組以4-{位}-[十六進制方式表示](https://zh.wikipedia.org/wiki/十六進制 "wikilink")。例如：`2001:0db8:86a3:08d3:1319:8a2e:0370:7344` 是一個合法的IPv6位址。类似于IPv4的点分十进制，同样也存在点分十六进制的写法，将8组4位十六进制地址的冒号去除后，每位以点号“.”分组，例如：`2001:0db8:85a3:08d3:1319:8a2e:0370:7344`则记为`2.0.0.1.0.d.b.8.8.5.a.3.0.8.d.3.1.3.1.9.8.a.2.e.0.3.7.0.7.3.4.4`，其倒序写法用于[ip6.arpa子域名记录IPv](../Page/.arpa.md "wikilink")6地址与域名的映射。

同時IPv6在某些條件下可以省略：

1.  每項數字前導的0可以省略，省略後前導數字仍是0則繼續，例如下組IPv6是等價的。
      -
        2001:**0**DB8:**0**2de:**0000**:**0000**:**0000**:**0000**:**0**e13
        2001:DB8:2de:**0000**:**0000**:**0000**:**0000**:e13
        2001:DB8:2de:**000**:**000**:**000**:**000**:e13
        2001:DB8:2de:**00**:**00**:**00**:**00**:e13
        2001:DB8:2de:**0**:**0**:**0**:**0**:e13
2.  可以用雙冒號「::」表示一組0或多組連續的0，但只能出現一次：
    1.  如果四組數字都是零，可以被省略。遵照以上省略規則，下面這兩組IPv6都是相等的。
          - 2001:DB8:2de:**0**:**0**:**0**:**0**:e13
        <!-- end list -->
          -
            2001:DB8:2de**::**e13
        <!-- end list -->
          - 2001:0DB8:0000:0000:0000:0000:1428:57ab
        <!-- end list -->
          -
            2001:0DB8:0000:0000:0000::1428:57ab
            2001:0DB8:0:0:0:0:1428:57ab
            2001:0DB8:0::0:1428:57ab
            2001:0DB8::1428:57ab
    2.  2001**::**25de**::**cade 是非法的，因為雙冒號出現了兩次。它有可能是下種情形之一，造成無法推斷。
          - 2001:0000:0000:0000:0000:25de:0000:cade
          - 2001:0000:0000:0000:25de:0000:0000:cade
          - 2001:0000:0000:25de:0000:0000:0000:cade
          - 2001:0000:25de:0000:0000:0000:0000:cade
    3.  如果這個位址實際上是IPv4的位址，後32位元可以用10進制數表示；因此::ffff:192.168.89.9 相等於::ffff:c0a8:5909。

另外，::ffff:1.2.3.4 格式叫做**IPv4映射位址**。

IPv4位址可以很容易的轉化為IPv6格式。舉例來說，如果IPv4的一個位址為135.75.43.52（十六進位為0x874B2B34），它可以被轉化為0000:0000:0000:0000:0000:FFFF:874B:2B34 或者::FFFF:874B:2B34。同時，還可以使用混合符號（），則位址可以為::ffff:135.75.43.52。

### IPv6位址的分類

IPv6位址可分為三種：\[8\]

  - 單播（unicast）位址
    單播位址標示一個網路介面。协议會把送往位址的封包送往給其介面。IPv6的單播位址可以有一個代表特殊位址名字的範疇，如链路本地位址（link local address）和唯一區域位址（ULA，unique local address）。單播地址包括可聚類的全球單播地址、鏈路本地地址等。
  - 任播（anycast）位址
    Anycast是IPv6特有的資料傳送方式，它像是IPv4的Unicast（單點傳播）與Broadcast（多點廣播）的綜合。IPv4支援單點傳播和多點廣播，單點廣播在來源和目的地間直接進行通訊；多點廣播存在於單一來源和多個目的地進行通訊。
    而Anycast則在以上兩者之間，它像多點廣播（Broadcast）一樣，會有一組接收節點的位址列表，但指定為Anycast的封包，只會傳送給距離最近或傳送成本最低（根據路由表來判斷）的其中一個接收位址，當該接收位址收到封包並進行回應，且加入後續的傳輸。該接收列表的其他節點，會知道某個節點位址已經回應了，它們就不再加入後續的傳輸作業。
    以目前的應用為例，Anycast位址只能分配給中间设备（如路由器、三层交换机等），不能分配给终端设备（手机、电脑等），而且不能作為發送端的位址。
  - 多播（multicast）位址
    多播地址也稱組播地址。多播位址也被指定到一群不同的介面，送到多播位址的封包會被傳送到所有的位址。多播位址由皆為一的位元組起始，亦即：它們的前置為FF00::/8。其第二個位元組的最後四個位元用以標明"範疇"。
    一般有node-local(0x1)、link-local(0x2)、site-local(0x5)、organization-local(0x8)和global(0xE)。多播位址中的最低112位元會組成多播群組識別碼，不過因為傳統方法是從[MAC位址產生](https://zh.wikipedia.org/wiki/MAC位址 "wikilink")，故只有群組識別碼中的最低32位元有使用。定義過的群組識別碼有用於所有節點的多播位址0x1和用於所有路由器的0x2。
    另一個多播群組的位址為"solicited-node多播位址"，是由前置FF02::1:FF00:0/104和剩餘的群組識別碼（最低24位元）所組成。這些位址允許經由[鄰居發現協議](https://zh.wikipedia.org/wiki/鄰居發現協議 "wikilink")（NDP，Neighbor Discovery Protocol）來解譯連結層位址，因而不用干擾到在區網內的所有節點。

### 特殊位址

IANA維護官方的IPv6位址空間列表\[9\]。全域的單播位址的分配可在各个[区域互联网注册管理机构](../Page/区域互联网注册管理机构.md "wikilink")或 GRH DFP 頁面找到\[10\]。

IPv6中有些位址是有特殊含义的：

  - 未指定位址

<!-- end list -->

  - `::/128`－所有位元皆為零的位址稱作未指定位址。這個位址不可指定給某個網路介面，並且只有在主機尚未知道其來源IP時，才會用於軟體中。路由器不可轉送包含未指定位址的封包。

<!-- end list -->

  - 链路本地位址

<!-- end list -->

  - `::1/128`－是一種單播[繞回位址](https://zh.wikipedia.org/wiki/繞回 "wikilink")。如果一個應用程式將封包送到此位址，IPv6堆疊會轉送這些封包繞回到同樣的虛擬介面（相當於IPv4中的[127.0.0.1/8](https://zh.wikipedia.org/wiki/127.0.0.1 "wikilink")）。
  - `fe80::/10`－這些链路本地位址指明，這些位址只在區域連線中是合法的，這有點類似於IPv4中的`169.254.0.0/16`。

<!-- end list -->

  - 唯一區域位域

<!-- end list -->

  - `fc00::/7`－[唯一區域位址](https://zh.wikipedia.org/wiki/唯一區域位址 "wikilink")（ULA，unique local address）只可在一群網站中繞送。這定義在RFC 4193中，是用來取代站点本地位域。這位址包含一個40位元的[偽隨機數](https://zh.wikipedia.org/wiki/偽隨機數 "wikilink")，以減少當網站合併或封包誤傳到網路時碰撞的風險。這些位址除了只能用於區域外，還具備全域性的範疇，這點違反了唯一區域位域所取代的站点本地位址的定義。

<!-- end list -->

  - 多播位址

<!-- end list -->

  - `ff00::/8`－這個前置表明定義在"IP Version 6 Addressing Architecture"（RFC 4291）中的[多播位址](https://zh.wikipedia.org/wiki/多播位址 "wikilink")\[11\]。其中，有些位址已用於指定特殊協議，如`ff0X::101`对应所有區域的NTP伺服器（RFC 2375）。

<!-- end list -->

  - 请求节点多播位址（Solicited-node multicast address）

<!-- end list -->

  - `ff02::1:FFXX:XXXX`－XX:XXXX為相對應的單播或任播位址中的三個最低的位元組。

<!-- end list -->

  - IPv4轉譯位址

<!-- end list -->

  - `::ffff:x.x.x.x/96`－用於[IPv4映射位址](https://zh.wikipedia.org/wiki/IPv4映射位址 "wikilink")。（參見以下的[转换机制](https://zh.wikipedia.org/wiki/#转换机制 "wikilink")）。
  - `2001::/32`－用於[Teredo隧道](../Page/Teredo隧道.md "wikilink")。
  - `2002::/16`－用於[6to4](../Page/6to4.md "wikilink")。

<!-- end list -->

  - ORCHID

<!-- end list -->

  - `2001:10::/28`－ORCHID (Overlay Routable Cryptographic Hash Identifiers)（RFC 4843）。這些是不可遶送的IPv6位址，用於加密雜湊識別。

<!-- end list -->

  - 文件

<!-- end list -->

  - `2001:db8::/32`－這前置用於文件（RFC 3849）。這些位址應用於IPV6位址的範例中，或描述網路架構。

<!-- end list -->

  - 遭捨棄或刪除的用法

<!-- end list -->

  - `::/96`－這個前置曾用於[IPv4相容位址](https://zh.wikipedia.org/wiki/IPv4相容位址 "wikilink")，現已刪除。
  - `fec0::/10`－這個站点本地前置指明這位址只在組織內合法。它已在2004年9月的RFC3879中捨棄，並且新系統不應該支援這類型的位址。

## IPv6封包

[IPv6_header_rv1.png](https://zh.wikipedia.org/wiki/File:IPv6_header_rv1.png "fig:IPv6_header_rv1.png") IPv6封包由两个主要部分组成：头部和负载。

包头是包的前64比特并且包含有源和目的地址，协议版本，通信类别（8位元，包优先级），流标记（20位元，[QoS服务质量控制](https://zh.wikipedia.org/wiki/QoS "wikilink")），分组长度（16位），下一个头部（用于入栈解码，类似IPv4中的协议号），和跳段数限制（8位元，生存时间，相当于IPv4中的TTL）。后面是负载。MTU至少1280字节长，在常见的以太网环境中为1500字节。负载在标准模式下最大可为65535字节，如果扩展报头设置了"jumbo payload"选项，则长度值被置为0。

IPv6曾有两个有着细微差别的版本；在RFC 1883中定义的原始版本（现在废弃）和RFC 2460中描述的现在提议的标准版本。两者主要在通信类别这个选项上有所不同，它的位数由4位变为了8位。其他的区别都是微不足道的。

分段（Fragmentation）只在IPv6的主机中处理。在IPv6中，可选项都被从标准头部中移出并在协议字段中指定，类似于IPv4的协议字段功能。

## IPv6和域名系统

IPv6地址在域名系统中为执行正向解析表示为AAAA记录（所谓4A记录，类似地，IPv4表示为A记录(A record)）；反向解析在ip6.*arpa*（原先是ip6.int）下进行，在这里地址空间为半字节16进制数字格式。这种模式在RFC 3596给与了定义。

AAAA模式是IPv6结构设计时的两种提议之一。另外一种正向解析为A6记录。也有一些其他的创新像二进制串标签和DNAME记录等。RFC 2874和它的一些引用中定义了这种模式。

AAAA模式只是IPv6域名系统的简单概括，A6模式使域名系统中检查更全面，也因此更复杂：

  - A6记录允许一个IPv6地址在分散于多个记录中，或许在不同的区域；举例来说，这就在原则上允许网络的快速重编号。
  - 使用域名系统记录委派地址被DNAME记录（类似于现有的CNAME，不过是重命名整棵树）所取代。
  - 一种新的叫做比特标签的类型被引入，主要用于反向解析。

2002年8月的RFC 3363中对AAAA模式给与了有效的标准化（在RFC 3364有对于两种模式优缺点的更深入的讨论）。

## IPv6部署与应用

2004年7月时[ICANN声称網際網路的](https://zh.wikipedia.org/wiki/ICANN "wikilink")[根域名服务器已经经过改进以同时支持IPv](../Page/根網域名稱伺服器.md "wikilink")6和IPv4。\[12\]

缺点：

  - 需要在整个網際網路和它所连接到的设备上建立对IPv6的支持
  - 从IPv4访问时的转换过程中，在网关路由器（IPv6\<--\>IPv4）还是需要一个IPv4地址和一些[NAT](../Page/网络地址转换.md "wikilink")（=共享的IP地址），增加了它的复杂性，还意味着IPv6许诺的巨大的空间地址不能够立刻被有效的使用。
  - 遗留的结构问题，例如在对IPv6 [multihoming支持上一致性的匮乏](https://zh.wikipedia.org/wiki/multihoming "wikilink")。

工作：

  - 6bone
  - [ICMPv6](https://zh.wikipedia.org/wiki/ICMPv6 "wikilink")
  - IPv6 multihoming

部署進度：

  - 截至2011年，全球通過IPv6第二階段認證的產品共644項，以國別和地區論，美國位居首共264種產品通過階段認證，次為日本計143項，台灣居第三，共115項完成階段認證，中國大陸居四，共68件產品通過階段認證\[13\]。

### 网络层安全

[网际网络安全协议](../Page/IPsec.md "wikilink")（Internet Protocol Security，即IPsec）原本为IPv6开发，但是在IPv4中已经大量部署。IPsec最初是IPv6协议的强制要求\[14\]，但后来改为可选项。\[15\]

## 轉換機制

在IPv6完全取代IPv4前，需要一些轉換機制\[16\]使得只支援IPv6的主機可以連絡IPv4服務，並且允許孤立的IPv6主機及網路可以藉由IPv4設施連絡IPv6網際網路。

在IPv6主機和路由器與IPv4系統共存的時期時，[RFC2893](http://tools.ietf.org/html/rfc2893)和[RFC2185](http://tools.ietf.org/html/rfc2185)定義了轉換機制。這些技術，有時一起稱作**簡單網際網路轉換**（SIT，Simple Internet Transition）。\[17\]包含：

  - 運作於主機和路由器之間的雙堆疊IP實作
  - 將IPv4嵌入IPv6位址
  - IPv6立於IPv4之上的隧道機制
  - IPv4/IPv6报头轉換

许多转换机制使用隧道来把IPv6交通包封在IPv4网络中。这个解决方案并不完美，可能会增加延时以及引起**路径最大传输单元发现**（Path MTU Discovery）的问题，\[18\]它并不总能运行，因为过时的网络设备可能不支持IPv6。有线电视基础上的Internet访问就是一个例子。在现代的有线电视网络中，光纤同轴混合网（HFC）的核心（比如大型核心路由器）是有可能支持IPv6的。然而，其他网络设备（比如一个[线缆调制解调器终端系统](https://zh.wikipedia.org/wiki/线缆调制解调器终端系统 "wikilink")（CMTS）)以及用户设备（如[线缆调制解调器](https://zh.wikipedia.org/wiki/线缆调制解调器 "wikilink")）会需要软件更新或硬件更新来支持IPv6。这意味着线缆网络运营商必须调整适应隧道直至主干设备支持内部雙堆疊。

### 雙堆疊

雙堆疊（Dual IP stack implementation）是將IPv6視為一種IPv4的延伸，以共享程式碼的方式去實作網路堆疊，其可以同時支援IPv4和IPv6，如此是相對較為容易的。如此的實作稱為“雙堆疊”，並且，一個實作雙堆疊的主機稱為“雙堆疊主機”。這步驟描述於RFC 4213。

目前大部分IPv6的實現使用雙堆疊。一些早期實驗性實作使用獨立的IPv4和IPv6堆疊。

### 隧道

隧道（Tunneling）是另一個用來連結IPv4與IPv6的機制。為了連通IPv6網際網路，一個孤立主機或網路需要使用現存IPv4的基礎設施來攜帶IPv6封包。這可由將IPv6封包裝入IPv4封包的[隧道協議來完成](https://zh.wikipedia.org/wiki/隧道協議 "wikilink")，實際上就是將IPv4當成IPv6的連結層。

IP協議號碼的41號用來標示將IPv6資料訊框直接裝入IPv4封包。IPv6亦能加入UDP封包，如為了跨過一些會阻擋協議41流量的路由器或NAT設備。其它流行的封裝機制則有[AYIYA和](https://zh.wikipedia.org/wiki/AYIYA "wikilink")[GRE](../Page/通用路由封装.md "wikilink")。

#### 自動隧道

自動隧道（Automatic tunneling）指路由設施自動決定隧道端點的技術。RFC 3056建議使用[6to4](../Page/6to4.md "wikilink")穿隧技術來自動隧道，其會使用41協議來封裝。\[19\] 隧道端點是由遠端知名的IPv4任播位址所決定，並在本地端嵌入IPv4位址資訊到IPv6中。現今6to4是廣泛佈署的。

[Teredo是使用UDP封裝的隧道技術](https://zh.wikipedia.org/wiki/Teredo "wikilink")，據稱可跨越多個NAT設備。\[20\]Teredo並非廣泛用於佈署的，但一個實驗性版本的Teredo已安裝於Windows XP SP2 IPv6堆疊中。IPv6，包含6to4隧道和Teredo隧道，在[Windows Vista中預設是啟動的](../Page/Windows_Vista.md "wikilink")。\[21\]許多Unix系統只支援原生的6to4，但Teredo可由如Miredoo的第三方軟體來提供。

[ISATAP](../Page/ISATAP.md "wikilink")\[22\]藉由將IPv4位址對應到IPv6的链路本地位址，從而將IPv4網路視為一種虛擬的IPv6區域連線。不像6to4和Teredo是*站點間*的隧道機制，ISATAP是一種*站點內*機制，意味著它是用來設計提供在一個組織內節點之間的IPv6連接性。

#### 組態隧道（6in4）

在*組態隧道*中，如[6in4](../Page/6in4.md "wikilink")隧道隧，隧道端點是要明確組態過的，可以是藉由管理員手動或作業系統的組態機制，或者藉由如tunnel broker等的自動服務。\[23\]組態隧道通常比自動隧道更容易去除錯，故建議用於大型且良好管理的網路。

組態隧道在IPv4隧道上，使用[網際協議中號碼的](https://zh.wikipedia.org/wiki/網際協議 "wikilink")41號。

### 用於只支援IPv6主機的代理和轉譯

在[區域網際網路註冊管理機構耗盡所有可使用的IPv](https://zh.wikipedia.org/wiki/RIR "wikilink")4位址後，非常有可能使新加入網際網路的主機只具有IPv6連接能力。對這些須要向後相容以能存取IPv4資源的客戶端，須要佈署合適的轉換機制。

一種轉換技術是使用雙堆疊的[應用層代理](https://zh.wikipedia.org/wiki/代理伺服器 "wikilink")，如網頁代理伺服器。

一些對於應用程式無法得知但在其低層使用類NAT轉換技術也曾被提出。但因為一般應用層協議所要求的能力其應用太廣，其中大部分都被認定在實際上太不可靠，並且被認為應刪除。

## 主要的IPv6公告

  - 在2003年，[日本經濟新聞](../Page/日本經濟新聞.md "wikilink")（在2003年被CNET亚洲机构引用）报告中说日本、中国和韩国声称已经决定要在网络技术中寻求领先，将部分参与IPv6的开发并在2005年开始全面采用IPv6。
  - [ICANN在](https://zh.wikipedia.org/wiki/ICANN "wikilink")2004年7月20日发表声明，称[DNS根服务器已经建立对应日本](https://zh.wikipedia.org/wiki/網域名稱系統 "wikilink")（[.jp](../Page/.jp.md "wikilink")）和韩国（[.kr](https://zh.wikipedia.org/wiki/.kr "wikilink")）的顶级域名服务器的AAAA记录，序列号为2004072000。对应法国的（[.fr](https://zh.wikipedia.org/wiki/.fr "wikilink")）IPv6记录会再晚一点时间加入。
  - 2011年[互联网协会](../Page/互联网协会.md "wikilink")将6月8日定为[世界IPv6日](../Page/世界IPv6日.md "wikilink")。包括Google、Facebook和雅虎在内的参与者将在当天对他们的主要服务启用IPv6，以推进互联网工业加速部署全面IPv6支持\[24\]。
  - 2017年11月26日，[中共中央办公厅](../Page/中共中央办公厅.md "wikilink")、[国务院办公厅印发](https://zh.wikipedia.org/wiki/国务院办公厅 "wikilink")《推进互联网协议第六版（IPv6）规模部署行动计划》，要求各地各部门贯彻落实。其中主要目标包括：到2018年末，IPv6活跃用户数达2亿，互联网用户中占比不低于20%；到2020年末，IPv6活跃用户数超过5亿，互联网用户中占比超过50%，新增网络地址不再使用私有IPv4地址；到2025年末，中国IPv6网络规模、用户规模、流量规模位居世界第一，网络、应用、终端全面支持IPv6\[25\]。

## 参見

  - [OSI模型](../Page/OSI模型.md "wikilink")
  - [IPv4](../Page/IPv4.md "wikilink")
  - [IPv9](../Page/IPv9.md "wikilink")
  - [TCP/IP协议](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")
  - [CNGI](https://zh.wikipedia.org/wiki/CNGI "wikilink")

## 相关的IETF工作组

  - [6bone](https://web.archive.org/web/20041206233510/http://www.ietf.org/html.charters/OLD/6bone-charter.html)：IPv6 Backbone
  - [ipng](https://web.archive.org/web/20041206234721/http://www.ietf.org/html.charters/OLD/ipngwg-charter.html)：IP Next Generation (concluded)
  - [ipv6](https://web.archive.org/web/20041230083921/http://www.ietf.org/html.charters/ipv6-charter.html)：IP Version 6
  - [ipv6mib](https://web.archive.org/web/20041206235830/http://www.ietf.org/html.charters/OLD/ipv6mib-charter.html)：IPv6 MIB (concluded)
  - [multi6](https://web.archive.org/web/20041206231415/http://www.ietf.org/html.charters/multi6-charter.html)：Site Multihoming in IPv6
  - [v6ops](https://web.archive.org/web/20090710124043/http://www.ietf.org/html.charters/v6ops-charter.html)：IPv6 Operations

## 參考資料

  - RFC 2460 - Internet Protocol, Version 6 - 現在版本
  - RFC 1883 - Internet Protocol, Version 6 - 舊版本
  - RFC 5214: Intra-Site Automatic Tunnel Addressing Protocol (ISATAP) - 現在版本取代RFC 4214

## 外部链接

  - [test-ipv6.com，可测试本机IPv6配置情况并评分](http://test-ipv6.com/)

  - [IPv6 Q\&A](http://www.ipv6.org.tw/NDHU/QA.htm)

  - [IPv6 Forum Taiwan](http://www.ipv6.org.tw/index.html)

  - [台灣NGN IPv6移轉技術入口網](https://web.archive.org/web/20021122065917/http://rd.ipv6.org.tw/)

  - [ipv6-test.com可测试本机IPv6连通性、传输速度、ping时延](http://ipv6-test.com/)

  - [TRACEROUTE6.NET - 顯示現時使用之IP，执行ping, trace, whois等多用途IPv6工具](http://www.traceroute6.net/)

  - [The IPv6 Portal...... All the IPv6 News](http://www.ipv6tf.org/)

  - [Why you want IPv6 - LinuxReviews](http://en.linuxreviews.org/Why_you_want_IPv6)

  - [SPEEDTEST6.COM - 可顯示現時使用之IP, IPv6速度測試工具](http://www.speedtest6.com/)

  - <http://www.iana.org/assignments/ipv6-address-space>

  - [CNET Asia Staff.（2003）. Report: Japan, China, S. Korea developing next Net. Retrieved January 14, 2003.](https://archive.is/20121206002112/http://news.com.com/2100-1032_3-5134110.html?tag=nefd_top)

  - <https://web.archive.org/web/20160317021818/http://www.moonv6.org/>

  - [IBM红皮书](http://www.redbooks.ibm.com/Redbooks.nsf/RedbookAbstracts/redp4776.html?OpenDocument)

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:互联网结构](https://zh.wikipedia.org/wiki/Category:互联网结构 "wikilink") [Category:网络层协议](https://zh.wikipedia.org/wiki/Category:网络层协议 "wikilink")

1.
2.  [IPv6 Reports](http://bgp.potaroo.net/index-v6.html)
3.  [BGP Analysis Reports](http://bgp.potaroo.net/index-bgp.html)
4.  [IPv6发展现状和面临困难分析，2008年11月22日](http://www.chinabgao.com/freereports/25139.html)
5.  RFC 2460, *Internet Protocol, Version 6 (IPv6) Specification*, Deering S. Hinden R.（December 1998）
6.  RFC 1726, *Technical Criteria for Choosing IP The Next Generation (IPng)*, Partridge C., Kastenholz F.（December 1994）
7.  RFC 4862, *IPv6 Stateless Address Autoconfiguration*, Thomson S., Narten T., Jinmei T.（September 2007）
8.  [RFC 2373 - *IP Version 6 Addressing Architecture*](http://tools.ietf.org/html/rfc2373)
9.
10. [GRH DFP pages](https://www.sixxs.net/tools/grh/dfp/all/)
11. [1](http://www.iana.org/assignments/ipv6-multicast-addresses（英文）IPv6多播位址)
12.
13.
14. RFC 4301, ''IPv6 Node Requirements", J. Loughney (April 2006)
15. RFC 6434, "IPv6 Node Requirements", E. Jankiewicz, J. Loughney, T. Narten (December 2011)
16. [IPv6 Transition Mechanism / Tunneling Comparison](http://www.sixxs.net/faq/connectivity/?faq=comparison)
17.
18.
19. RFC 3056: Connection of IPv6 Domains via IPv4 Clouds
20. RFC 4380: Teredo: Tunneling IPv6 over UDP through Network Address Translations (NATs)
21. [The Windows Vista Developer Story: Application Compatibility Cookbook](http://msdn2.microsoft.com/en-us/library/aa480152.aspx)
22. RFC 4214: Intra-Site Automatic Tunnel Addressing Protocol (ISATAP)
23. RFC 3053: IPv6 Tunnel Broker
24.
25.