[Tor_Animation_en.webm](https://zh.wikipedia.org/wiki/File:Tor_Animation_en.webm "fig:Tor_Animation_en.webm")
**Tor**是实现[匿名通信的](../Page/匿名.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。其名源於「The
Onion
Router」（洋蔥路由器）的英語縮寫\[1\]\[2\]。用戶可透過Tor接達由全球志願者免費提供，包含7000+個中繼的[覆盖网络](../Page/覆盖网络.md "wikilink")\[3\]，從而達至隱藏用戶真實地址、避免網絡監控及流量分析的目的。Tor用戶的互聯網活動（包括瀏覽在線網站、帖子以及即時消息等通訊形式）相對較難追踪\[4\]。Tor的設計原意在於保障用戶的個人私隱，以及不受監控地進行秘密通信的自由和能力。

Tor不會阻止在線網站判斷用戶是否通過Tor訪問該網站。儘管它保護用戶的私隱，但卻不會掩飾用戶正在使用Tor這一事實。有些網站會對使用Tor的用戶進行限制。[MediaWiki的擴充功能Torblock便是其中一個例子](../Page/MediaWiki.md "wikilink")，其能自動地限制透過Tor進行的編輯。而使用了Torblock的[維基百科則容許用戶在某些情況下透過Tor编辑其內容](https://zh.wikipedia.org/wiki/維基百科 "wikilink")\[5\]。

Tor透過在传输协议栈中的[應用層進行](https://zh.wikipedia.org/wiki/应用层 "wikilink")[加密](https://zh.wikipedia.org/wiki/加密 "wikilink")，從而實現[洋葱路由這一種技術](../Page/洋葱路由.md "wikilink")。Tor會對包括下一個節點的[IP地址在內的數據](../Page/IP地址.md "wikilink")，進行多次加密，並透過[虛擬電路](https://zh.wikipedia.org/wiki/虛擬電路 "wikilink")（包括隨機選擇的Tor节点）將其送出。每個中繼都會對一層加密的數據進行解密，以知道數據的下一個傳送目的地，然後將剩餘的加密數據傳送給它。最後的中繼會解密最內層的加密數據，並在不會洩露或得知源IP地址的情況下，將原始數據發送至目標地址。\[6\]

攻擊者可能會嘗試透過某些手段來使Tor用戶去匿名化。包括利用Tor用戶電腦上的軟件[漏洞](https://zh.wikipedia.org/wiki/漏洞利用 "wikilink")\[7\]。美国国家安全-{}-局擁有針對Tor安裝包中所綑綁的舊版本Firefox漏洞的技術（代號「EgotisticalGiraffe」）\[8\]，並曾利用[XKeyscore系統來密切監控Tor用戶](https://zh.wikipedia.org/wiki/XKeyscore "wikilink")\[9\]。不少學者亦就如何破解Tor網絡進行過學術研究\[10\]\[11\]，此一行為受到Tor项目公司所肯定\[12\]。

開發及維護Tor所需的一大部分費用由[美國聯邦政府所捐助](../Page/美國聯邦政府.md "wikilink")\[13\]，過去則以海軍研究辦公室及[國防高等研究計劃署的名義捐助](../Page/國防高等研究計劃署.md "wikilink")\[14\]。

## 历史

[Geographies_of_Tor.png](https://zh.wikipedia.org/wiki/File:Geographies_of_Tor.png "fig:Geographies_of_Tor.png")

Tor的核心技术“洋葱路由”，是在1990年代中期由[美国海军研究实验室的员工](https://zh.wikipedia.org/wiki/美国海军研究实验室 "wikilink")，数学家保罗·西维森（Paul
Syverson）和计算机科学家邁克·里德（G. Mike Reed）和大衛·戈爾德施拉格（David
Goldschlag），为保护美国情报通信而开发的软件。之后，洋葱路由于1997年交由美国[國防高等研究計劃署進行进一步开发](../Page/國防高等研究計劃署.md "wikilink")\[15\]\[16\]\[17\]\[18\]\[19\]\[20\]。

Tor的测试版由西维森和计算机科学家罗根·丁格伦（Roger Dingledine）和尼克·马修森（Nick
Mathewson）开发\[21\] ，并將其命名为“洋葱路由项目”（The Onion Routing
project，简称TOR项目）\[22\]\[23\]。這個测试版于2002年9月20日发布\[24\]\[25\]。次年推出首個公开发行版本\[26\]。2004年8月13日，西维森、丁格伦和马修森在第13届[USENIX安全研讨会上以](../Page/USENIX.md "wikilink")「Tor：第二代洋葱路由器」為題進行演講\[27\]。2004年，美国海军研究实验室以自由软件许可证发布了Tor代码，[电子前哨基金会开始资助丁格伦和马修森继续开发](../Page/电子前哨基金会.md "wikilink")\[28\]。

2006年12月，丁格伦、马修森等人成立了一个位于马萨诸塞州的非营利组织——The Tor
Project，负责维护Tor\[29\]。电子前哨基金会担任其早年的财政赞助商，Tor项目的早期赞助者还包括、[新闻国际](https://zh.wikipedia.org/wiki/新闻国际 "wikilink")、[人权观察](../Page/人权观察.md "wikilink")、[剑桥大学](../Page/剑桥大学.md "wikilink")、[谷歌和](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[荷兰的](../Page/荷兰.md "wikilink")\[30\]\[31\]\[32\]\[33\]\[34\]。

此後維護Tor所需的一大部分費用由美國聯邦政府所捐助\[35\]。

2014年11月，由於全球司法部門開展了一項名為「」的反黑市行動，所以有推測指Tor的漏洞已被人利用\[36\]。[英国广播公司引述評論指這是](../Page/英国广播公司.md "wikilink")「技術性破解」\[37\]，使得司法部門可以追蹤伺服器的物理位置。有關的法庭文件於次年引起人們對研究倫理\[38\]及《[美國憲法第四修正案](../Page/美國憲法第四修正案.md "wikilink")》所保證的「不能受到無理搜查」的權利之關注\[39\]，這也可能與當時稍早時候發生且針對Tor的攻擊存有關係\[40\]。

2015年12月，Tor專案公司宣佈聘用莎麗·斯蒂爾（Shari
Steele），由她擔任新任執行董事\[41\]。莎麗在這以前领导過电子前哨基金会15年之久，且在2004年使得电子前哨基金会決定為Tor的早期维护提供資金。其目標之一為增加Tor的[用戶友好度](../Page/易用性.md "wikilink")，使得更多人能夠匿名地瀏覽網頁\[42\]。

2016年7月，Tor專案公司的董事會成員集體辭任，同時成立一個由、、、萊納斯·諾德伯格（Linus
Nordberg）、梅根·普赖斯（Megan
Price）及[布魯斯·施奈爾組成的新董事會](../Page/布魯斯·施奈爾.md "wikilink")\[43\]\[44\]。

## 應用

使用了Tor的用戶可以匿名地瀏覽在線網站、聊天和發送即時信息。他們可把Tor應用於合法目的上，也可應用於非法目的上\[45\]。例如犯罪企業、黑客行動主義組織及執法機關會為了各種目的而使用Tor\[46\]\[47\]
。除此之外，美國政府的內部機構會為Tor提供贊助（美國國務院、國家科學基金會，以及美國廣播理事會皆有/曾為Tor提供贊助）並試圖破解它\[48\]\[49\]。

Tor不能夠使網絡活動完全匿名。其設計目的並不是使網絡跟蹤完全消去，而是減低網站透過數據及活動跟蹤用戶的可能性\[50\]。

Tor也被用於進行非法活動，例子包括存取在當地受到[審查的資訊](../Page/审查制度.md "wikilink")、組織政治運動\[51\]
、規避禁止人們發表批評國家首腦的言論的法律。

《[经济学人](../Page/经济学人.md "wikilink")》的一篇報導稱Tor跟[比特幣和](https://zh.wikipedia.org/wiki/比特幣 "wikilink")[絲路有關](../Page/絲路_\(購物網站\).md "wikilink")，並指Tor為「網絡上的阴暗角落」\[52\]。儘管美国国家安全-{}-局及英國[政府通信总部已把Tor視為破解目標](../Page/政府通信总部.md "wikilink")，但只取得少許成功\[53\]。的「确认行動」（Operation
Notarise）為最為成功破解Tor的行動\[54\]。同時，英國政府通信总部利用了一款名為「Shadowcat」的工具來「透過Tor網絡，並使用[安全外殼協定存取受到端對端加密的](../Page/Secure_Shell.md "wikilink")[虚拟专用服务器](https://zh.wikipedia.org/wiki/虚拟专用服务器 "wikilink")」\[55\]\[56\]。它也可應用於匿名誹謗、洩露政府敏感資訊、上下载[侵權作品](https://zh.wikipedia.org/wiki/侵權 "wikilink")、分發非法色情內容\[57\]\[58\]\[59\]、販賣[受管制药物](../Page/管制药物.md "wikilink")\[60\]、武器及被盜的信用卡號碼\[61\]、[洗錢](../Page/洗錢.md "wikilink")\[62\]、银行诈骗\[63\]、、[身份诈骗](https://zh.wikipedia.org/wiki/身份盗窃 "wikilink")、[假幣兑换](../Page/假幣.md "wikilink")\[64\]；以Tor為基礎架構的黑市網站有相當一部分會以比特幣作交易媒介\[65\]。最後它還可用於攻擊[物聯網設備](https://zh.wikipedia.org/wiki/物聯網 "wikilink")\[66\]。

美国[联邦调查局在逮捕絲路的創辦人](../Page/联邦调查局.md "wikilink")的過程中，承認Tor「存有合法用途」\[67\]\[68\]。[CNET的報導指](../Page/CNET.md "wikilink")，Tor的匿名功能「受到像[电子前哨基金会般的民權組織的贊同](../Page/电子前哨基金会.md "wikilink")，因為它能為[告密者和人權工作者提供一個渠道](https://zh.wikipedia.org/wiki/告密者 "wikilink")，以跟記者溝通」\[69\]。电子前哨基金会的監控自衛指南包含了如何使用Tor的描述，並指它符合保障私穩及匿名性的大原則\[70\]。

电子前哨基金会的於2014年接受《[彭博商业周刊](../Page/彭博商业周刊.md "wikilink")》訪問時指出：「Tor最大的問題就是新闻报道（的取向），沒人聽說過有些用戶透過其擺脫滥用者的追蹤，但只聽說過人們如何透過其下載兒童色情作品」\[71\]。

Tor專案公司指出，Tor用戶當中也有「正常人」，這包括渴望網站及廣告商不會得知自己的網上活動的人、擔憂網絡侦察的人，以及像活動家、記者和軍事專業人士般渴望擺脫審查的用戶。截至2013年11月，Tor有大約400萬名用戶\[72\]。《[华尔街日报](../Page/华尔街日报.md "wikilink")》指出，Tor有約14％的流量來自美國，它的第二大用戶群來自「網絡審查盛行的國家」\[73\]。[家庭暴力的受害者](../Page/家庭暴力.md "wikilink")、[社工及幫助受害者的機構使用Tor溝通的情況也有上升趨勢](https://zh.wikipedia.org/wiki/社工 "wikilink")，儘管他們可能沒受過網絡安全相關的專業培訓\[74\]。然而若進行了適當的配置，它便可以使人不會受到數碼追蹤的影響\[75\]。像《[衛報](../Page/衛報.md "wikilink")》、《[紐約客](../Page/紐約客.md "wikilink")》、《[ProPublica](../Page/ProPublica.md "wikilink")》及《The
Intercept》般的新聞機構會利用SecureDrop及Tor來保障告密者的私隱\[76\]。

於2015年3月發佈了一份简要報告，當中指出「英國人普遍不會認為完全禁止線上匿名系統是可接受的……即使若事實並不如此，技術上這也是一項挑戰」。除此之外，它進一步指出Tor「在線上觀看和分發兒童不雅物品上，只扮演一個較小的角色（這可部分歸因於Tor的固有延时）」。Tor也因能幫助[网络观察基金会運作](../Page/网络观察基金会.md "wikilink")、告密者告密以及突破[防火長城而受到熱捧](https://zh.wikipedia.org/wiki/防火長城 "wikilink")\[77\]。

Tor的時任執行董事安德魯·勒曼（Andrew
Lewman）於2014年8月說道，美国国家安全-{}-局及英國政府通信总部的特務曾匿名地向Tor專案公司報告Tor的漏洞\[78\]。

Tor項目的常見問題解答頁面上寫道：

## 运作方式

[Tor-onion-network-zh.jpg](https://zh.wikipedia.org/wiki/File:Tor-onion-network-zh.jpg "fig:Tor-onion-network-zh.jpg")（由电子前哨基金会創作）\]\]

Tor的設計原意在於保障用戶的個人私隱，以及不受監控地進行秘密通訊的自由和能力。它能夠實現[洋葱路由這一種使通訊加密](../Page/洋葱路由.md "wikilink")，和在由全球志願者運行的中繼中隨機跳轉的技術。該些洋葱路由器會對信息進行多層[加密](https://zh.wikipedia.org/wiki/加密 "wikilink")（因此以洋葱來比喻），由此確保中繼間的[完美前向安全性](https://zh.wikipedia.org/wiki/前向安全性 "wikilink")，使用戶的網絡位置得以匿名化。這種匿名性也使得Tor可以寄存規避審查的匿名服務\[79\]。此外其把一部分的入口中繼保密，這能使依賴封鎖Tor公開節點的[互联网审查失效](../Page/互联网审查.md "wikilink")\[80\]。

由於接收者和發信者的[IP位址在任何中繼中不是通過](https://zh.wikipedia.org/wiki/IP位址 "wikilink")[明文傳輸](https://zh.wikipedia.org/wiki/明文 "wikilink")，所以若有人在中繼路徑中的任何一點竊聽，都無法同時識別兩端。此外對於發送者而言，接收者的出口節點正是其入口節點。

### 流量導源

[EtherApeTorScreenShot.png](https://zh.wikipedia.org/wiki/File:EtherApeTorScreenShot.png "fig:EtherApeTorScreenShot.png")EtherApe來分析的一些Tor中繼節點流量。
\]\] Tor用戶的SOCKS解析應用程序可以透過嗅探TCP
9150這一個端口來獲取[本地主机上的流量](../Page/Localhost.md "wikilink")\[81\]。Tor會定期透過Tor網絡創立虛擬電路，使它可以[多路复用](../Page/多路复用.md "wikilink")，並透過洋葱路由，使流量傳送至目標。從Tor網絡內部的角度而言，雙方的流量是通過路由器沿著電路傳送至下一個路由器，最終到達出口節點；在出口節點的封包是[明文的](https://zh.wikipedia.org/wiki/明文 "wikilink")，並會轉送至原本的目標地址。從目標的角度而言，出口節點正是其入口節點。
[Tor-non-exit-relay-bandwidth-usage.jpg](https://zh.wikipedia.org/wiki/File:Tor-non-exit-relay-bandwidth-usage.jpg "fig:Tor-non-exit-relay-bandwidth-usage.jpg")
Tor的獨特運作方式使得其跟其他匿名網絡得以區分開來：它建立在[传输控制协议](../Page/传输控制协议.md "wikilink")（TCP）流之上。透過Tor匿名化的常見互聯網活動包括[IRC](../Page/IRC.md "wikilink")、[即時通訊以及瀏覽](../Page/即時通訊.md "wikilink")[万维网](../Page/万维网.md "wikilink")。

### 洋葱服務

Tor也可以為網站及伺服器提供匿名性。只接受透過Tor從外部連接的伺服器一般統稱為**洋葱服務**（另有**隱藏服務**這個較正式的稱呼）\[82\]。該些洋葱服務一般能在配合Tor瀏覽器的情況下，經[洋葱地址來存取](../Page/.onion.md "wikilink")，而不像瀏覽一般網站般先找出伺服器的IP位址後再存取。Tor網絡以找出相應的[公鑰和](https://zh.wikipedia.org/wiki/公開金鑰 "wikilink")[分散式雜湊表](../Page/分散式雜湊表.md "wikilink")（DHT）中的介绍结点（introduction
points）的方式來得知其位址。它可以路由傳入洋葱服務或從洋葱服務傳出的數據，這同樣適用於在[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）或[防火墙背後的主机](../Page/防火墙.md "wikilink")，並能保障雙方的匿名性。對於存取該些洋葱服務而言，Tor是必要的\[83\]。

洋葱服務在2003年首次提出\[84\]，並自次年起在Tor網絡上配置\[85\]。除了存儲洋蔥服務的描述符所需的數據庫之外\[86\]，Tor在設計上是去中心化的；不存在一個列出所有洋葱服務的可供閲讀列表，儘管一些洋蔥服務目錄會把知名的洋葱地址列出。

由於洋蔥服務會把它們的所有流量皆經由Tor網絡路由，所以它們的連接為端到端加密的，且不能夠成為竊聽的目標。但Tor的洋蔥服務仍有安全問題。例如所有能透過Tor洋葱服務和公共互联网存取的服务皆易受相关攻击（correlation
attacks）的影響，由此可見它的匿名性並不是完美的。其他隱患包括服務設定错误（例如Web伺服器的默認錯誤頁面可能會包含識別信息）、運行和停機時間統計、交集攻击（intersection
attacks）以及用戶錯誤\[87\]\[88\]
。獨立安全研究者開發了一個名為「OnionScan」的[开源软件](../Page/开源软件.md "wikilink")，用於全面檢測洋葱服務上的漏洞\[89\]（劉易斯還是研究透過洋蔥路由來進行[遠程性愛的先驅](../Page/遠程性愛.md "wikilink")，因為她認為性玩具不應透過互聯網不安全地連接\[90\]。）

洋蔥服務也可在[客戶端沒有連接Tor網絡的情況下透過標準瀏覽器存取](https://zh.wikipedia.org/wiki/客戶端 "wikilink")，比如使用像般的服務即可存取之\[91\]
。人們常在
、[Twitter](../Page/Twitter.md "wikilink")、[Reddit及其他](../Page/Reddit.md "wikilink")[網絡論壇分享以](https://zh.wikipedia.org/wiki/網絡論壇 "wikilink")[.onion為頂級域的](../Page/.onion.md "wikilink")[暗网鏈接](../Page/暗网.md "wikilink")\[92\]。

### Nyx狀態监视器

Nyx是一款以[Python來編寫的Tor](../Page/Python.md "wikilink")[命令行界面狀態监视器](../Page/命令行界面.md "wikilink")\[93\]\[94\]。其能使人實時监视其所運行的Tor節點的狀態，它的监视範圍包括：

  - 目前正在使用的資源（[带宽](../Page/带宽_\(计算机\).md "wikilink")、CPU和記憶體的使用情況）
  - 中繼的一般資訊（暱稱、指紋、旗標或/dir/controlports）
  - 擁有[正則表達式過濾和重复数据删除功能的事件記錄表](https://zh.wikipedia.org/wiki/正則表達式 "wikilink")
  - 與Tor數據一致相關的連接（IP地址、連接類型、詳細中繼資訊等等）
  - 在torrc設定檔上加入[語法突顯及行數](../Page/語法突顯.md "wikilink")

Nyx的大多數屬性都可以通過armrc設定档進行設定。它能在任何支持curses[函式庫的平台上運行](../Page/函式庫.md "wikilink")，包括[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[Linux及其他](../Page/Linux.md "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")。

這一專案始於2009年的夏天\[95\]\[96\]，並自2010年7月18日起正式成為Tor專案的一部分。它是一款以[GNU通用公共许可证授權的](../Page/GNU通用公共许可证.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。

## 弱點

Tor就像其他[低延迟](../Page/延迟_\(工程学\).md "wikilink")[匿名網絡般](../Page/代理服务器.md "wikilink")，不能夠也沒有嘗試阻止他人監聽Tor網絡流量的边界（亦即流量進出網絡時的情形）。儘管Tor能保護人們免於受到，但它仍不能夠防止流量確認（traffic
confirmation，亦即端對端確認）的發生\[97\]\[98\]。

一項發表於2009年的研究指出，Tor及另外一套匿名網絡系統[Java Anon
Proxy比其他](../Page/Java_Anon_Proxy.md "wikilink")[隧道协议更對](../Page/隧道协议.md "wikilink")[網站指紋技術有适应力](../Page/裝置指紋.md "wikilink")。

其原因在於單一節點的[VPN協定的封包重新建构次數一般不比使用了多重節點的Tor及Java](https://zh.wikipedia.org/wiki/VPN "wikilink")
Anon
Proxy多。利用網站指紋識別在傳統VPN協定上識別[HTTP封包的準確率達](https://zh.wikipedia.org/wiki/HTTP "wikilink")90%，與此相比識別透過Tor傳送的封包的準確率只有2.96%。然而若使用了像[OpenVPN及](../Page/OpenVPN.md "wikilink")[OpenSSH般的協定](../Page/OpenSSH.md "wikilink")，那麼也需要大量數據才可識別HTTP封包\[99\]。

[密歇根大学的研究者開發了一款網絡掃描器](../Page/密歇根大学.md "wikilink")，能一次掃描86%的可用Tor网桥\[100\]。

### 監聽

#### 自治系统監聽

如果「客戶至入口中繼」及「出口中繼至目標地址」這兩段網絡路徑皆為同一個[自治系统所管轄](../Page/自治系统.md "wikilink")，那麼該系統就能經由統計把入口路段和出口路段劃上關係，且有可能推斷出客戶把封包傳送至哪個目的地。LASTor於2012年發表了一篇論文，當中提出如何預測處於上述兩條路徑的自治系统的方法，並建議如何在路徑選擇演算法中避免選擇由同一個自治系统管轄的路徑。在這篇論文中，作者們也以選擇較短路徑的方式來改善延遲性。\[101\]

#### 出口節點監聽

瑞典安全顧問丹·艾格斯塔德（Dan
Egerstad）在2007年9月透露，他透過运行和監聽Tor出口節點來截獲一些電子郵件帳戶的用戶名和密碼\[102\]。由於Tor不能加密出口節點至目標伺服器之間的流量，所以任一出口節點皆有能力截獲通過它而又沒經過[傳輸層安全性協定](../Page/傳輸層安全性協定.md "wikilink")（TSL）或[安全通訊協定](https://zh.wikipedia.org/wiki/安全通訊協定 "wikilink")（SSL）進行端到端加密的流量。儘管這可能並不對來源端的匿名性構成任何影響，但截獲流量的第三方也可能能在[實際數據和協議數據中找到來源端的信息](../Page/负载_\(计算机\).md "wikilink")\[103\]。艾格斯塔德同時擔憂情報機構會暗中破坏Tor\[104\]：

法國的一隊研究團隊在2011年10月宣稱找到危害Tor網絡安全性的方法——解密經過它的通訊\[105\]\[106\]。這項技術的前設包括一張關於Tor節點的圖表、控制三分之一的Tor節點、獲取用於加密的[密钥以及演算法的](../Page/密钥.md "wikilink")。他們宣稱他們能夠使用已知的密钥及随机种子，解密三層加密中的兩層，然後利用基於統計的攻擊來解密最後一層。最後為了將流量重定向到他們控制的節點而使用[阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")。Tor對此在官方博客上進行了回應，稱該些有關Tor網絡的安全性受到损害的传闻過分誇大\[107\]。

### 流量分析攻擊

流量分析攻擊可分為兩種：被動式及主動式。採用了被動式流量分析攻擊的攻擊者先會從一端網絡找出一段特定流量的特徵，然後在另一端網絡尋找該些特徵。採用了主動式流量分析攻擊的攻擊者會在一端網絡按特定模式修改封包的定時（timings），然後在另一端尋找符合該些模式的封包。攻擊者可以籍此把兩端的流量聯繫起來，使其去匿名化\[108\]。即使在封包上加入定時雜訊也好，也有攻擊手段能夠抗衡它\[109\]。

[剑桥大学的](../Page/剑桥大学.md "wikilink")和喬治·達內茲（George
Danezis）在2005年的IEEE流量分析研讨会上發表了一篇論文，其內容提及到一種技術，其能使只知道一部分網絡的攻擊者推斷出哪些中繼是用於传递匿名数据流\[110\]。該些技術會大大減低Tor的匿名性。他們的研究也表明，即使数据流不相關，也可以把它們跟同一個來源聯繫起來。但這種攻擊無法找出原始用戶的身份\[111\]。默多克自2006年起跟Tor合作，並受到其資助。

### Tor出口節點封鎖

網站營運者有能力封鎖來自Tor出口節點的流量，或減少Tor用戶所能使用的功能。比如除非另有[豁免](https://zh.wikipedia.org/wiki/Wikipedia:IP封禁例外 "wikilink")，否則使用了Tor的用戶是不可能編輯維基百科的，因為維基百科使用了MediaWiki的擴充功能Torblock\[112\]。
英國廣播公司的[iPlayer封鎖了Tor所有的入口和出口節點](../Page/BBC_iPlayer.md "wikilink")，但沒有封鎖中繼和網橋\[113\]。

### 壞蘋果攻擊

2011年3月，[法国国家信息与自动化研究所和其他外界研究者記錄了一種攻擊手段](https://zh.wikipedia.org/wiki/法国国家信息与自动化研究所 "wikilink")，其能夠找出利用Tor網絡來進行BT上下載的用戶的IP地址。壞蘋果攻擊利用了Tor本身的設計，暴露同時使用兩者的Tor用戶的IP地址。其中一種攻擊手段取決於對出口節點的控制，或被劫持的[BT伺服器的回應](https://zh.wikipedia.org/wiki/BitTorrent_tracker "wikilink")。另一種則基於對[分散式雜湊表的追蹤統計](../Page/分散式雜湊表.md "wikilink")\[114\]。研究指出\[115\]：

壞蘋果攻擊研究中作者所得出的結果是以針對Tor網絡發起的外圍攻擊為依據的。該攻擊以6個出口節點為目標，時長23日，並找出了10,000名活躍Tor用戶的IP地址。這一研究的結果具有重大意義，因為它是首項存有正式記錄，並針對Tor網絡上的P2P文件分享應用程序的攻擊\[116\]。BitTorrent可能佔了高達40%的Tor整體流量\[117\]。此外壞蘋果攻擊不僅對BitTorrent有效，且還能有效攻擊任何運行在Tor之上的不安全應用程序\[118\]。

### 一些暴露IP地址的協定

來自法国国家信息与自动化研究所的研究者表示，BitTorrent中的Tor掩饰技術可以被控制Tor出口節點的攻擊者繞過。該研究以6個出口節點為監控目標，時長23日。研究者在當中使用了三種攻击手段\[119\]：

  - 檢查BitTorrent的控制信息:
    BT伺服器的宣告和擴展協議握手可能包含客戶的IP地址。對收集到的數據進行分析後，結果顯示33-35％的信息包含客戶地址\[120\]。

<!-- end list -->

  - 劫持BT伺服器的回應:
    由於BT伺服器和用戶群之間的通信缺乏加密或認證，所以傳統的[中间人攻击能使攻擊者確定用戶群的IP地址](../Page/中间人攻击.md "wikilink")，以至驗證內容的分佈。當Tor僅用於跟BT伺服器通訊時，此類攻擊就能生效\[121\]。

<!-- end list -->

  - 利用分散式雜湊表:
    此攻擊利用了分散式雜湊表不可能透過Tor連接的事實，因此即使目標使用了Tor連接到其他用戶群，攻擊者也可以在分散式雜湊表中查找目標的IP地址\[122\]。

透過這種技術，研究者能夠識別用戶發起的其他數據流、找出該用戶的IP地址\[123\]。

### 狙擊手攻擊

詹森等人描述了針對Tor節點軟件的分散式阻斷服務攻擊（DDoS），以及針對該攻擊或其變體的防禦方式。攻擊者會使用串連在一起的伺服器和容戶端發動攻擊，不斷地往出口節點的任务队列填入要求，直到節點的記憶體不足以應付為止。此舉能使受到攻擊的出口節點不能為其他（真正的）客戶提供服務。攻擊者可以透過這種方式來攻擊大部分出口節點，使網絡降速，及增加用戶使用由攻擊者控制的節點的機會\[124\]。

### 心脏出血漏洞

2014年4月，[OpenSSL的](../Page/OpenSSL.md "wikilink")[心脏出血漏洞使Tor網絡受到了幾天的影响](../Page/心脏出血漏洞.md "wikilink")，期間Tor網絡的中繼要生成新的[私有密鑰](../Page/公开密钥加密.md "wikilink")。Tor專案建議中繼和隱藏服務的營運者在修補OpenSSL後，應復原並生成新密鑰，但同時指出，兩套Tor中繼密鑰及多次跳轉的設計已最大限度地減少了單一中繼遭竊取所造成的影響\[125\]。為了防止用戶受到此漏洞的影響，隨後發現存在漏洞的586個中繼被強制下線\[126\]\[127\]\[128\]\[129\]。

### 中繼早期流量確認攻擊

2014年7月30日，Tor项目發怖了一項有關「中繼早期流量確認攻擊」的安全問題警告，於當中指出他們發現一組嘗試使洋蔥服務的用戶和营運者去匿名化的中繼\[130\]。用以攻擊的洋蔥服務目錄節點會修改單元的表头，使它們分別標記為「中繼」或「中繼早期」單元，用以編碼額外的資訊，然後把其傳送給用戶/营運者。若用戶/营運者的入口中繼也為攻擊者所控制，那麼便有可能能夠獲取用戶/营運者的IP地址及所請求的洋蔥服務資訊。由於該些中繼是特意設計成「適合充當洋蔥服務目錄」或「適合充當入口中繼」的，所以洋蔥服務的用戶和洋蔥服務皆有機會利用該些目錄節點或入口節點\[131\]。

該些節點在2014年1月30日加入網絡，同年7月4日Tor项目把它們從網絡中移除\[132\]。儘管相關攻擊於何時開始尚是不明，但Tor官方表示，2-7月期間洋蔥服務用戶和营運者的IP地址可能已經洩漏\[133\]。

除了從網絡中移除用以攻擊的中繼以外，Tor項目官方還提到了以下減低影響的措施：

  - 修複中繼的軟件，使其不會把表头標記為「中繼早期」的非預期單元轉送出去\[134\]。
  - 計劃升級用戶的網絡代理軟件，令其能夠检验有否從中繼中收到「中繼早期」單元（正常情況下不會出現這種情況）\[135\]，以及把「三個中繼都是隨機選擇」的设置換成只固定連接到某一個入口節點，用以減低連接至受到攻擊的中繼的可能性\[136\]。
  - 建议洋蔥服務的营運者應考慮把伺服器搬至另一處地方\[137\]。
  - 提醒用戶和营運者若攻擊者控制或監聽了Tor線路的兩端，那麼流量就無可避免地可被攻擊者去匿名化\[138\]。

2014年11月，由全球司法部門開展的「去匿名化行動」導致了來自不同地區的17人被捕，故此後來有推測指Tor的漏洞已被人利用。[欧洲刑警组织的代表不願透露鎖定目標時所用的方法](../Page/欧洲刑警组织.md "wikilink")，稱：「我們想把一些事保持在只有我們知道的狀態。我們所使用的方法不能夠透露給全世界知道，因為我們會一而再，再而三地使用該套方法\[139\]。」英國廣播公司引述評論指這是「技術性破解」\[140\]，並稱該套方法能讓人知道伺服器的地理位置，指最初公佈的渗入網站數量引來了漏洞已被人利用的猜測。Tor的代表安德魯·勒曼（Andrew
Lewman）認為Tor已被破解的可能性頗低，並認為警方所使用的目標鎖定方法較有可能是「傳統的那一套」\[141\]\[142\]。

「去匿名化行動」的法庭檔案\[143\]於次年引起人們對研究倫理\[144\]及《美國憲法第四修正案》所保證的「不能受到無理搜查」的權利之關注\[145\]。此外文件和專家的意見也可能顯示網絡攻擊與執法行動之間的關係，該些證據包括：

  - 對絲路2.0的管理員發出之搜查令表明，2014年1月-7月期間，美國聯邦調查局收到從「大學研究所」發出的資訊，其內容有關「像RS2般的隱藏服務和TOR的IP地址」，這使得「最少另外17個建構於TOR之上的黑市網站」和「最少78個存取供应商的[.onion地址的用戶之IP地址](../Page/.onion.md "wikilink")」遭到識別。其中之一便是上述管理員的IP地址\[146\]。
  - [加利福尼亞大學柏克萊分校](../Page/加利福尼亞大學柏克萊分校.md "wikilink")的一位資深研究員在接受訪問時說，跟美國聯邦調查局合作的「幾乎可以肯定」是[卡内基·梅隆大学](../Page/卡内基·梅隆大学.md "wikilink")\[147\]，這與Tor項目及[普林斯顿大学電腦科學系教授](../Page/普林斯顿大学.md "wikilink")的估計一致；後者更把估計範圍收窄至該大學的\[148\]\[149\]。

費爾滕在7月31日發表的分析中，除了指出這種做法所引起的倫理問題外，還質疑該做法是否符合協調中心的原本目的——「防止攻擊、通知相關人員、把漏洞對大眾公佈」，因為他們是在「沒有通知相關人員的情況下實施大規模長期性攻擊，且沒有就發現漏洞一事向大眾公佈」\[150\]。

### 鼠標指紋

一位來自[巴塞罗那的資訊安全研究者在](https://zh.wikipedia.org/wiki/巴塞罗那 "wikilink")2016年3月展示了一項實驗室技術，該項技術能透過JavaScript在1毫秒的層面上進行時間測量\[151\]。它可以識別用戶的獨特鼠標移動方式，並使其跟先後利用Tor瀏覽器和常規瀏覽器訪問了同一個「指紋識別」網站的用戶劃上關係\[152\]。是項技術利用了「透過JavaScript進行時間測量」這一項在Tor專案上無指定验证時間的概念\[153\]。

### 资料大小相關信息

一項研究指出「匿名方案僅能降低選擇監控目標的有效度」，它們一般「不會隱藏對於目標選擇而言是必要的资料大小信息」\[154\]。

## 實施方案

Tor主要由[C语言編寫而成](https://zh.wikipedia.org/wiki/C语言 "wikilink")，緊隨其後的有[Python](../Page/Python.md "wikilink")、[JavaScript等](../Page/JavaScript.md "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")。截至2018年12月，它共有693,393行[源代码](../Page/源代码.md "wikilink")\[155\]。

### Tor浏览器

**Tor瀏覽器**，前身为**Tor Browser
Bundle**（TBB）\[156\]，是Tor项目的旗舰产品\[157\]。由[Mozilla
Firefox
ESR浏览器修改而成](https://zh.wikipedia.org/wiki/Mozilla_Firefox_ESR "wikilink")，並由Tor
Project開發人員做了許多安全性和隱私保護的調校，預載TorButton、TorLauncher、[NoScript和](../Page/NoScript.md "wikilink")[HTTPS
Everywhere等擴充套件與Tor](../Page/HTTPS_Everywhere.md "wikilink")[代理](https://zh.wikipedia.org/wiki/proxy "wikilink")\[158\]\[159\]。其为[開源軟體](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")、[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")、[绿色软件](https://zh.wikipedia.org/wiki/绿色软件 "wikilink")，可在多種[作業系統上運行](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，包括[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac
OS
X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[Android](../Page/Android.md "wikilink")\[160\]\[161\]。

Tor瀏覽器在后台启动Tor进程并透过其连接网络。一旦程序断开連接，Tor瀏覽器便会自动删除隐私敏感数据，如[cookie和浏览历史记录](https://zh.wikipedia.org/wiki/cookie "wikilink")\[162\]。

Tor瀏覽器本身提供[SOCKS代理服務](../Page/SOCKS.md "wikilink")，一些應用程式已可藉此使用Tor網路。若結合代理伺服器軟體
[Privoxy](../Page/Privoxy.md "wikilink")，可以讓所有走[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")/[HTTPS協定的連網應用程式](https://zh.wikipedia.org/wiki/HTTPS "wikilink")、以及所有能夠設定HTTP/HTTPS代理的應用程式都透過Tor網路來上網。\[163\]

斯圖爾特·德雷奇（Stuart
Dredge）在2013年11月，亦即一系列的全球監控被揭露之後，於《[衛報](../Page/衛報.md "wikilink")》上建議人們使用Tor瀏覽器，用以達至避免竊聽及在萬維網上保有私隱的目的\[164\]。

#### Firefox/Tor瀏覽器攻擊

2011年，荷蘭當局在調查網上流通的[兒童色情作品時](../Page/兒童色情.md "wikilink")，發現Tor洋蔥服務網站「Pedoboard」的管理員的IP地址，並把這項資訊轉交給美國聯邦調查局跟進。聯邦調查局籍此鎖定其擁有者為亞倫·麥格拉思（Aaron
McGrath）。在經過1年的監視後，聯邦調查局展開名為「Operation
Torpedo」的行動，拘捕麥格拉思，並在由麥格拉思管理的3個洋蔥服務網站上安裝惡意軟件，獲取造訪用戶的資訊\[165\]。
當中利用了Firefox/Tor瀏覽器經已修補的漏洞，故此以不安裝更新，並安裝了[Flash的用戶為目標](../Page/Adobe_Flash.md "wikilink")。該漏洞能讓聯邦調查局直接把用戶的IP地址[ping回自身的伺服器](https://zh.wikipedia.org/wiki/ping "wikilink")\[166\]\[167\]\[168\]\[169\]，這個漏洞導致至少25名美國用戶以及眾多外國用戶的IP地址曝光\[170\]。麥格拉思於2014年初被判處20年徒刑，隨後有18名用戶陸續被判刑，這包括一名[美国卫生及公共服务部前網絡安全代理總監](../Page/美国卫生及公共服务部.md "wikilink")\[171\]\[172\]。

2013年8月，發現很多舊版本的Tor Browser
Bundle所捆綁的Firefox皆會受到一種JavaScript攻擊的影響\[173\]。攻擊者可以藉此提取用戶的IP和MAC位址、以及Windows電腦名稱\[174\]\[175\]\[176\]。新聞將此跟提供Tor匿名網頁寄存服務的Freedom
Hosting的负责人埃里克·埃恩·马克斯（Eric Eoin
Marques）被捕劃上聯繫，他因美國法院於7月29日發出的臨時引渡令而被捕。他被指控分發、密謀分發、宣傳，以及協助和教唆他人宣傳兒童色情物品。逮捕令稱马克斯為「這個星球上最大的兒童色情物品推動者」\[177\]\[178\]。聯邦調查局于2013年9月12日在都柏林提交的法庭文件中承認了這起JavaScript攻擊\[179\]；[爱德华·斯诺登洩露的培訓演示文稿中透露了更多有關該漏洞的細節](../Page/爱德华·斯诺登.md "wikilink")，並揭示了該漏洞的代號——「EgotisticalGiraffe」\[180\]。而[Mozilla已在](../Page/Mozilla.md "wikilink")2012年11月釋出Firefox
17版修補了該漏洞\[181\]。

### Tor Messenger

2015年10月29日，Tor專案公司釋出了一款基於[Instantbird的即時通訊程序的測試版](../Page/Instantbird.md "wikilink")——Tor
Messenger，預設情況下透過Tor連接及[不會留下通訊记录](https://zh.wikipedia.org/wiki/不留记录即时通讯 "wikilink")\[182\]。它跟[Pidgin和](../Page/Pidgin.md "wikilink")[Adium一樣](../Page/Adium.md "wikilink")，能夠支援多種通訊協定；但是，它卻不依賴libpurple函數庫來實現之，反之用記憶體安全性較佳的語言JavaScript來實現所有通訊協定的支援\[183\]。

Tor Messenger於2018年4月因數據必然洩露至社交網站、人手不足及Instantbird停止維護等問題而結束\[184\]。

### 第三方應用

[BitTorrent客戶端](../Page/BitTorrent_\(协议\).md "wikilink")[Vuze](../Page/Vuze.md "wikilink")\[185\]、匿名訊息系統[比特信](../Page/比特信.md "wikilink")\[186\]及即時通訊軟件\[187\]皆支持Tor。

[保衛者計劃是一項為了提高智能手機的通訊安全性](../Page/保衛者計畫_\(軟體\).md "wikilink")，而開發相關韌體和應用的活動\[188\]。由這個計劃開發的Tor相關產品包括Tor實施工具[Orbot](../Page/Orbot.md "wikilink")\[189\]、私隱增強型移動瀏覽器Orweb（官方不再提供下載）\[190\]、Orfox（Tor瀏覽器的移動版本）\[191\]、Firefox附加元件ProxyMob
（官方不再提供下載）\[192\]。

### 側重安全的作業系統

一些側重安全的GNU/Linux發行版會廣泛使用Tor，包括[Linux From
Scratch](../Page/Linux_From_Scratch.md "wikilink")、、Liberté Linux、[Qubes
OS](../Page/Qubes_OS.md "wikilink")、、[Tails](../Page/Tails_\(操作系统\).md "wikilink")、、[Whonix](https://zh.wikipedia.org/wiki/Whonix "wikilink")\[193\]。

## 影響及反應

[TorPluggable_transports-animation.webm](https://zh.wikipedia.org/wiki/File:TorPluggable_transports-animation.webm "fig:TorPluggable_transports-animation.webm")
Tor因能為擔憂監控和被捕的政治活動家、規避網絡審查的網民、受到纏擾者暴力對待或威脅的人提供匿名隱私保護，而受到讚賞\[194\]\[195\]。美国国家安全-{}-局稱Tor為「具有高安全性及低延遲性特點的互聯網匿名系統之王」\[196\]；《[彭博商业周刊](../Page/彭博商业周刊.md "wikilink")》形容Tor為「規避各國情報機構所嘗試進行的線上監控的最有效方案」\[197\]。此外其他媒體對Tor有著以下的評價：「一款極為成熟的私隱保障工具」\[198\]、「容易上手」\[199\]、「即使是世界上最頂尖的電子間諜也對如何破解Tor束手無策」\[200\]。

Tor的支持者稱它能透過保障用戶的匿名性和隱私性的方式，來促進[表達自由](https://zh.wikipedia.org/wiki/表達自由 "wikilink")；即使是在互聯網受到審查的國家也好也是如此。還有評價指「Tor就像[基础设施的一部分](../Page/基础设施.md "wikilink")，政府自然會為他們想要使用的基礎設施付費」\[201\]。

Tor最初是由美國情報機構開發的，此後維護Tor所需的一大部分費用也是由美國聯邦政府所捐助，因此有批評指：「它更像是一個间谍專案，欠缺問責性及透明度，只是一款因文化而生的工具」\[202\]。截至2012年，Tor的200萬美元總年度預算當中有約8成來自美國政府，當中大多數捐款來自美國國務院、美国国际媒体署、國家科學基金會\[203\]，用以「幫助專制國家的民主支持者」\[204\]。其他有參與捐款的公共機構包括[美國海軍研究實驗室](../Page/美國海軍研究實驗室.md "wikilink")、[國防高等研究計劃署](../Page/國防高等研究計劃署.md "wikilink")、[瑞典政府](../Page/瑞典政府.md "wikilink")\[205\]\[206\]。有意見指政府重視Tor對推動言論自由的承諾，並會暗中利用暗網收集情報\[207\]。Tor也有收到部分[非政府组织和私人機構的捐款](../Page/非政府组织.md "wikilink")，包括[人权观察](../Page/人权观察.md "wikilink")、[Reddit](../Page/Reddit.md "wikilink")、[Google](../Page/Google.md "wikilink")\[208\]。丁萊迪稱美国国防部的捐款「與其說是采购合同，倒不說其更像研究補助金」。Tor的前任執行董事德魯·勒曼稱，雖然它接受了美國聯邦政府的捐款，但「我們沒有跟美国国家安全-{}-局合作，沒有跟其一起找出用戶的身份」\[209\]。

批評者指責Tor不像其所標榜的那樣安全\[210\]，並以[絲路](../Page/絲路_\(購物網站\).md "wikilink")、Freedom
Hosting等例子為佐證\[211\]。《衛報》在愛德華·斯諾登洩露一糸列分析性文件後，報導指美国国家安全-{}-局曾不斷地嘗試破解Tor，但仍未能破壞其核心安全性，不過在攻擊Tor用戶的電腦方面取得了部分成功\[212\]。《衛報》也把美国国家安全-{}-局的2012年幻燈片刊出，其內容指：「我們一直以來都無法使所有Tor用戶去匿名化」，即使「加上了人手分析，我們也就只能使極少一部分的Tor用戶去匿名化」\[213\]。被捕的Tor用戶多因為人為錯誤而被捕\[214\]。《[明鏡周刊](https://zh.wikipedia.org/wiki/明鏡 "wikilink")》在2014年末的報告中使用了經由斯諾登洩露出去的資料，指截至2012年為止，美国国家安全-{}-局認為Tor本身就是其使命的「主要威脅」，並把與「像[OTR](https://zh.wikipedia.org/wiki/不留记录即时通讯 "wikilink")、Cspace、、[RedPhone](https://zh.wikipedia.org/wiki/RedPhone "wikilink")、[Tails](../Page/Tails_\(操作系统\).md "wikilink")、[TrueCrypt般的隱私工具](../Page/TrueCrypt.md "wikilink")」併用的情況稱為「灾难性的」，令「我們幾乎完全喪失/缺乏對目標通信的洞察力」\[215\]\[216\]。

2011年，Tor贏得[自由软件基金会的](../Page/自由软件基金会.md "wikilink")2010年度社會福利自由軟件大獎。該基金會指：「Tor已使全世界大約3600萬人能夠在互聯網上實現存取和表達自由，同時而又能夠保障他們的私隱性和匿名性。它的網絡已在[伊朗和](https://zh.wikipedia.org/wiki/伊朗 "wikilink")[埃及的持不同政見者運動中發揮關鍵作用](../Page/埃及.md "wikilink")\[217\]。」

在2012年，《[外交政策](../Page/外交政策_\(杂志\).md "wikilink")》把丁格倫、馬修森、西維森並列在[FT
100全球知識分子名單之上](../Page/FT_100全球知識分子.md "wikilink")，因為他們為「告密者提供一個更安全的網絡環境」\[218\]。

電腦安全研究員在2013年稱Tor為「軟件生態系統的一部分，其能幫助人們收回及重新獲得他們的自主權。它有助於使人們賦權、助人自助。它是開放的，並得到了各個大型社區的支持。」\[219\]

[爱德华·斯诺登於](../Page/爱德华·斯诺登.md "wikilink")2013年6月利用Tor把[稜鏡計畫的資料傳送給](../Page/稜鏡計畫.md "wikilink")《[华盛顿邮报](../Page/华盛顿邮报.md "wikilink")》和《[衛報](../Page/衛報.md "wikilink")》\[220\]。

在2014年，俄羅斯政府簽訂了一份值111,000美元的合同，為的是「研究在Tor匿名網絡中獲取用戶及其設備的技術性信息的可能性\[221\]\[222\]。」

2014年10月，Tor項目從外部公關公司聘請了公關，以改善其公眾形象（特別是想改善黑暗网络方面的負面印象），並就Tor的應用技術向記者提供教育\[223\]。

## 安全性

### 中国

Tor在[中国被许多人用于突破](https://zh.wikipedia.org/wiki/中国 "wikilink")[防火长城](../Page/防火长城.md "wikilink")，这主要是因为中国大陆屏蔽了大量的海外网站和服务器。Tor会自动检测节点是否可达目标地址。如果返回错误无法到达，它会自动更换节点。相应地，这种技术也可以用在中国大陸境外模拟中国大陸境内的节点，以访问一些境外无法访问的内容。

而防火长城对于Tor一直没有很好的解决方法。现行比较有效的方法是对未使用[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")（[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")）加密的连接进行特征检测并重置连接，或对已知节点和[网桥进行IP地址屏蔽](https://zh.wikipedia.org/wiki/网桥 "wikilink")，也有在中国境内建立Tor的虚假节点以对通过其传输的数据进行最大限度的审查。

作为反制，有部分大陆网民自发在中国境内建起网桥，帮助中国大陸境内未能连接上Tor网络的使用者连接。

  - 2009年9月以后的一段时间内，使用的Tor的0.2.1.19版本，并不使用网桥的情况之下无法建立Tor的连接。然而使用的Tor的稳定版0.2.1.20，仍能够建立Tor的连接，突破网络封锁且不需要勾选“我的ISP阻挡了对Tor网络的连接”的选项，即使用网桥。从理论上来说，在使用网桥的情况下，Tor的总能建立连接，而不被封锁，因为网桥是可以动态更新的。

<!-- end list -->

  - 2010年6月3日前后的一段时间内，使用Tor的0.2.1.26版本，在使用Bridges的情况之下，建立Tor的连接也相当的困难，显示的信息是“建立Tor回路failed”，这说明防火长城成功侦测并截断了Tor的连接。但Tor的连接一旦建立后切断并不容易，所以Tor一旦成功建立连接后就无法被防火长城干扰。同年8月前后至今，Tor又可以连接上。据全球互联网自由联盟上的用户说，只要加一次网桥，接下来就可以轻松连上Tor网络。

<!-- end list -->

  - 但在2011年1月之后，中国大陆有网民反映，Tor即使更换了网桥也无法正常连接上，但事实上这是网桥已经被屏蔽的结果\[224\]\[225\]。对于长期频繁使用和连接Tor的用户来说，由于Tor会缓存节点路由信息，所以只要这些节点或网桥没被封锁，他们照样能正常使用Tor。

<!-- end list -->

  - 自2011年10月后，当中国的一个Tor客户端与美国的网桥中继建立连接，一个中国的数据探针会在15分钟周期内尝试与Tor进行SSL协商和重协商，但目的不是建立TCP连接。12月后这种行为停止\[226\]。

<!-- end list -->

  - 自Tor Browser4.5发布后，借助meek网桥，中国大陸用户可以接通Tor网络。

## 利用代理访问TOR

  - 使用[ShadowsocksR的话](https://zh.wikipedia.org/wiki/ShadowsocksR "wikilink")，可在“使用代理访问互联网”中选择代理类型socks5,IP默认127.0.0.1，端口默认1080即可快速访问tor，当然，务必要要选择内置网桥。
  - 使用[无界浏览](../Page/无界浏览.md "wikilink")，同上将端口改为默认的9666即可访问。

## 参见

  - [XeroBank
    Browser](https://zh.wikipedia.org/wiki/XeroBank_Browser "wikilink")（即原[Torpark](https://zh.wikipedia.org/wiki/Torpark "wikilink")）
  - [Vidalia](https://zh.wikipedia.org/wiki/Vidalia "wikilink")——Tor的图形配置软件，曾有Tor+Privoxy+Vidalia整装套件，现在改为Tor+[Polipo](../Page/Polipo.md "wikilink")+Vidalia。
  - [Privoxy](../Page/Privoxy.md "wikilink")——本是一个http代理服务器，但经常作为Tor客户端的伴侣，作用相当于socks4、socks5到socks4a的桥梁，因为Tor客户端使用socks4a可以得到更高的安全性。
  - [I2P](../Page/I2P.md "wikilink")：I2P网络是由I2P路由器以[大蒜路由方式组成的表层网络](https://zh.wikipedia.org/wiki/大蒜路由 "wikilink")，建立于其上的应用程序可以安全匿名的相互通信。
  - [JAP](../Page/Java_Anon_Proxy.md "wikilink")——一个Java写的匿名[代理服务器](../Page/代理服务器.md "wikilink")
  - [Softether](https://zh.wikipedia.org/wiki/Softether "wikilink")－日本程式設計師[登大遊就讀](../Page/登大遊.md "wikilink")[筑波大學時写的虚拟](https://zh.wikipedia.org/wiki/筑波大學 "wikilink")[以太网软件](../Page/以太网.md "wikilink")，於2003年公開1.0版，因免费简洁而在Internet上曾广泛传播。
  - [Shadowsocks](../Page/Shadowsocks.md "wikilink")——一个安全的socks5代理
  - [VNN](https://zh.wikipedia.org/wiki/VNN "wikilink")
  - [VPN-X](https://zh.wikipedia.org/wiki/VPN-X "wikilink")——由BirdsSoft开发的一套Java
    P2P VPN解决方案，利用了[TUN与TAP技术](../Page/TUN与TAP.md "wikilink")
  - [HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")
  - [代理服务器](../Page/代理服务器.md "wikilink")
  - [突破網路審查](https://zh.wikipedia.org/wiki/突破網路審查 "wikilink")
  - [中國網絡審查](https://zh.wikipedia.org/wiki/中華人民共和國網絡審查 "wikilink")
  - [网络安全](../Page/网络安全.md "wikilink")
  - [名偵探柯南：零的執行人](../Page/名偵探柯南：零的執行人.md "wikilink")——劇情將Tor改編為Nor，嫌犯用來IOT恐怖攻擊。

## 注释

## 参考文献

## 延伸阅读

  - *Applied Cryptography*，Bruce Schneier (ISBN 978-0-471-11709-4)
  - *Email Security*，Bruce Schneier (ISBN 978-0-471-05318-7)
  - *Computer Privacy Handbook*，Andre Bacard (ISBN 978-1-56609-171-8)

## 外部链接

  - [Tor Project](https://www.torproject.org)/[Tor
    官网简体中文界面](https://www.torproject.org/zh-CN/)
  - [Tor
    浏览器各语言版本下载地址](https://www.torproject.org/zh-CN/download/languages/)

{{-}}

[Category:Tor_(匿名網絡)](https://zh.wikipedia.org/wiki/Category:Tor_\(匿名網絡\) "wikilink")
[Category:匿名網路](https://zh.wikipedia.org/wiki/Category:匿名網路 "wikilink")
[Category:應用層協議](https://zh.wikipedia.org/wiki/Category:應用層協議 "wikilink")
[Category:加密協議](https://zh.wikipedia.org/wiki/Category:加密協議 "wikilink")
[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")
[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")
[Category:網際網路隱私軟體](https://zh.wikipedia.org/wiki/Category:網際網路隱私軟體 "wikilink")
[Category:網際協議](https://zh.wikipedia.org/wiki/Category:網際協議 "wikilink")
[Category:網際網路安全](https://zh.wikipedia.org/wiki/Category:網際網路安全 "wikilink")
[Category:網際網路標準](https://zh.wikipedia.org/wiki/Category:網際網路標準 "wikilink")
[Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")
[Category:保密通信](https://zh.wikipedia.org/wiki/Category:保密通信 "wikilink")
[Category:使用BSD許可證的軟體](https://zh.wikipedia.org/wiki/Category:使用BSD許可證的軟體 "wikilink")
[Category:2002年軟體](https://zh.wikipedia.org/wiki/Category:2002年軟體 "wikilink")
[Category:2002年建立的網站](https://zh.wikipedia.org/wiki/Category:2002年建立的網站 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.

12.

13.

14.

15.

16.

17.

18.

19.

20.

21.
22.
23.

24.
25.
26.

27.

28.
29.

30.

31.

32.

33.

34.

35.
36.

37.

38.

39.

40.

41.

42.

43.

44.

45.

46.

47.

48.
49.

50.

51.

52.

53.
54.

55.

56.

57.

58.

59.

60.

61.

62.

63.

64.

65.
66.

67.

68.

69.

70.

71.

72.

73.

74.

75.

76.

77.

78.

79.
80.

81.

82.

83.

84.

85.

86.

87.
88.

89.

90.

91.

92.

93.

94.

95.

96.

97.

98.

99.

100.

101.

102.

103.

104.

105.

106.

107.

108.

109.
110.

111.
112.
113.

114.

115.
116.
117.

118.
119.

120.
121.
122.
123.
124.

125.

126.

127.

128.

129.

130.  "On July 4, 2014 we found a group of relays that we assume were
     trying to deanonymize users. They appear to have been targeting
     people who operate or access Tor hidden services."

131.

132.
133.  "...we assume were trying to deanonymize users. They appear to
     have been targeting people who operate or access Tor hidden
     services... users who operated or accessed hidden services from
     early February through July 4 should assume they were affected...
     We know the attack looked for users who fetched hidden service
     descriptors... The attack probably also tried to learn who
     published hidden service descriptors, which would allow the
     attackers to learn the location of that hidden service... Hidden
     service operators should consider changing the location of their
     hidden service."

134.  "Relays should upgrade to a recent Tor release (0.2.4.23 or
     0.2.5.6-alpha), to close the particular protocol vulnerability the
     attackers used..."

135.  "For expert users, the new Tor version warns you in your logs if a
     relay on your path injects any relay-early cells: look for the
     phrase 'Received an inbound RELAY_EARLY cell'"

136.  "Clients that upgrade (once new Tor Browser releases are ready)
     will take another step towards limiting the number of entry guards
     that are in a position to see their traffic, thus reducing the
     damage from future attacks like this one... 3) Put out a software
     update that will (once enough clients have upgraded) let us tell
     clients to move to using one entry guard rather than three, to
     reduce exposure to relays over time."

137.  "Hidden service operators should consider changing the location of
     their hidden service."

138.  "...but remember that preventing traffic confirmation in general
     remains an open research problem."

139.
140.
141.

142.

143.
144.
145.
146.
147.
148.
149.

150.
151.

152.

153.

154.

155.
156.

157.

158.

159.

160.

161.

162.
163.

164.

165.

166.

167.

168.

169.

170.

171.

172.

173.
174.

175.

176.

177.

178.

179.

180.

181.

182.

183.

184.

185.

186.

187.

188.

189.

190.

191.

192.

193.

194.

195.

196.
197.

198.

199.

200.
201.

202.
203.

204.
205.
206.

207. Moore, Daniel; Rid, Thomas. "Cryptopolitik and the Darknet".
     Survival. Feb2016, Vol. 58 Issue 1, p7-38. 32p.

208. Inc., The Tor Project,. "Tor: Sponsors". www.torproject.org.
     Retrieved 2016-10-28.

209.

210.

211.
212.
213.

214.

215.

216.

217.

218.

219.

220.

221.

222.

223.

224.

225.

226.