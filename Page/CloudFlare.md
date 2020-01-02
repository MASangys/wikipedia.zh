> 本文内容由[CloudFlare](https://zh.wikipedia.org/wiki/CloudFlare)转换而来。


**Cloudflare**（）是一間總部位於[舊金山的](https://zh.wikipedia.org/wiki/舊金山 "wikilink")[美國跨國IT企業](https://zh.wikipedia.org/wiki/美國 "wikilink")，以向客戶提供基於[反向代理](../Page/反向代理.md "wikilink")的[內容傳遞網路](../Page/內容傳遞網路.md "wikilink")（）及[分佈式域名解析服務](../Page/域名系统.md "wikilink")（）為主要業務。Cloudflare可以幫助受保護站點抵禦包[拒絕服務攻擊等網絡攻擊](../Page/阻斷服務攻擊.md "wikilink")，確保該網站長期在線，同時提升網站的性能、載入速度以改善訪客體驗。

截至2019年3月，Cloudflare擁有151個位於全球各地的[數據中心](../Page/数据中心.md "wikilink")。\[1\]

## 歷史

Cloudflare由三個曾為工作的工程師Matthew Prince, Lee Holloway, and Michelle Zatlyn於2009年創立，最終在\[2\]\[3\]2010年9月舉行的[TechCrunch Disrupt大赛上首度公開出現](https://zh.wikipedia.org/wiki/TechCrunch_Disrupt "wikilink")。

2011年，駭客組織[LulzSec使用Cloudflare的產品保护一个被它攻击的网站](https://zh.wikipedia.org/wiki/LulzSec "wikilink")，在Cloudflare的服务成功抵禦了LulzSec设计的攻击后赞扬此公司。Cloudflare因此於當年6月受到傳媒留意。\[4\]\[5\]

2011年7月，Cloudflare宣布來自、及的新一輪[風險融資已經完成](https://zh.wikipedia.org/wiki/風險投資 "wikilink")，金額為2000萬[美元](../Page/美元.md "wikilink")。\[6\]\[7\]

2012 年 6 月，Cloudflare與數家虛擬主機提供者（包括HostPapa）建立合作夥伴關係，以實作其Railgun技術。

2012年6月，駭客組織利用[Google](../Page/Google.md "wikilink")帳號驗證程序的缺陷入侵Cloudflare CEO的企業信箱，以此篡改著名社區網站[4chan](../Page/4chan.md "wikilink")的Cloudflare帳號密碼並將它的DNS指向該組織的[Twitter](../Page/Twitter.md "wikilink")主頁。\[8\]\[9\]

2012年12月，Cloudflare得到來自及其他現有投資方的C輪融資，其金額為5000萬[美元](../Page/美元.md "wikilink")。\[10\]

2014 年 2 月，Cloudflare減緩了當時有記錄以來規模最大的 DDoS 攻擊，針對未揭露之客戶的攻擊流量最高達每秒400 Gbit。在 2014 年 11 月，Cloudflare 報告了另一個大規模 DDoS 攻擊，該次攻擊對獨立媒體網站的流量為每秒500Gbit\[11\]。

2014年2月，Cloudflare宣布收購反病毒企業。\[12\]

2014年6月，Cloudflare宣布收購公司。\[13\]

2014年6月下旬，香港[佔領中環全民投票網站](../Page/讓愛與和平佔領中環.md "wikilink")****于2014年6月14日晚9点至11点及6月15日8点至11点半先后遭受骇客发动分散式阻断服务攻击，Cloudflare作為其服務提供者直接受到波及。攻擊者利用[NTP和](../Page/網路時間協定.md "wikilink")[DNS協議的漏洞讓垃圾流量加以放大](https://zh.wikipedia.org/wiki/DNS "wikilink")，攻擊流量峰值達到400 Gbit/s。\[14\]

2014年9月，Cloudflare發布了一种新型加密传输技術——**无密钥SSL**（英文：Keyless SSL）。在該技術的支持下，Cloudflare可以於不持有客戶[私鑰的情況下與訪客建立](https://zh.wikipedia.org/wiki/私钥 "wikilink")[SSL連接](https://zh.wikipedia.org/wiki/SSL "wikilink")，從而令銀行等因故無法交予私鑰的用戶得以享受最大限度的安全服務。\[15\]

2016年4月，台北數據中心正式開放使用。\[16\]

### 併購

在 2014 年 6 月，Cloudflare 併購了由Ryan Lackey所創立的CryptoSeal，意欲藉此交易延伸其 Web 使用者安全性服務。在 2014 年 2 月，它併購了 StopTheHacker，這家公司提供惡意程式碼偵測、自動惡意程式碼移除，以及信譽與黑名單監視服務。在2016年12月，Cloudflare併購了Eager，並透過此次併購升級了Cloudflare的应用程序平台，以支援使用拖放方式將第三方应用程序安裝到使用Cloudflare服務的網站\[17\]。在2017年底，Cloudflare收購了Neumob，一間手機VPN初創企業。\[18\]

## 服務

### DDoS保護

Cloudflare 為所有客戶提供「我正遭受攻擊模式（I'm Under Attack）」設定。Cloudflare 宣稱這樣可要求使用者必須先通過 JavaScript 計算式查問的驗證才能存取網站，進而減輕進階第 7 層攻擊的影響。 Cloudflare 所提供的保護使得 SpamHaus 免於流量超過每秒 300 Gbit 的 DDoS 攻擊。Akamai 的首席結構設計師將它稱為「有史以來網際網路上規模最大的公開 DDoS 攻擊」。據說 Cloudflare 當時吸收了峰值超過每秒 400 Gbit 的 NTP 校時服務放大攻擊 (NTP Reflection Attack) \[19\]。

### 网页應用程式防火牆

Cloudflare 預設可讓付費方案客戶使用 Web 應用程式防火牆；此防火牆具有 OWASP ModSecurity 核心規則集與 Cloudflare 自有規則集，以及常見 Web 應用程式規則集。\[20\]

### 網域名稱伺服器

Cloudflare 為具有[任一傳播網路的所有客戶提供免費](../Page/任播.md "wikilink")[網域名稱伺服器](../Page/域名系统.md "wikilink") (DNS)。根據 W3Cook，Cloudflare 的 DNS 服務目前所服務的對象超過受管理 DNS 網域的 35%。SolveDNS 發現 Cloudflare 能持續提供全球數一數二的 DNS 查閱速度，在 2016 年 4 月回報的查閱速度為 8.66 毫秒。\[21\]

### 公共DNS解析器

2018年4月1日，Cloudflare推出了面向使用者，聲稱「私隱第一」的域名系統解析服務。

IP位置爲 [1.1.1.1](https://1.1.1.1) 和 [1.0.0.1](https://1.0.0.1)。IPv6 位置爲 \[<https://2606:4700:4700>::1111 2606:4700:4700::1111\] 和 \[<https://2606:4700:4700>::1001 2606:4700:4700::1001\]

由于其所使用的地址块原来属于未分配的地址块，部分网络会使用该地址作为内部认证系统或测试系统地址，所以可能会导致用户无法正常访问该地址或导致被恶意流量攻击。\[22\]

2018年11月11日，Cloudflare推出了 1.1.1.1 解析器的手機應用程式，可在iOS和Android設備下載。

### [反向代理](../Page/反向代理.md "wikilink")

Cloudflare的其中一個主要功能是他們扮演网页流量的反向代理角色。 Cloudflare支援新的网页通訊協定，包括[SPDY](../Page/SPDY.md "wikilink")與[HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")。此外，Cloudflare 還提供針對HTTP/2 Server Push的支援。Cloudflare也支援 [Websocket的代理處理](../Page/WebSocket.md "wikilink")。\[23\]

### 内容分发網路

Cloudflare 的網路在全球擁有許多連線到網際網路交換點的連線。Cloudflare 會將內容快取到其邊緣位置，以扮演內容提供網路 (CDN) 的角色，所有要求接著會透過 Cloudflare 進行反向 Proxy 處理，並直接從 Cloudflare 提供快取的內容。\[24\]

### 中国大陆服务

Cloudflare 与[百度](../Page/百度.md "wikilink")建-{}-立了合作伙伴关系。Cloudflare 现已推出了中国大陆地区的服务，帮助所有企业改善他们的互联网应用的性能及安全， 扩展其全球业务。Cloudflare 和百度的合作将百度大陆的22个中心地区节点与 Cloudflare 全球的86个节点结合起来。\[25\]

### Project Galileo

爲回應對藝術組織、人道救援機構和反政府組織等目標的攻擊，在2014年，Cloudflare推出了 Project Galileo，希望可以透過其服務爲這些組織的網站提供網絡攻擊保護和性能提升，確保網站長期在線。

### 域名註冊商

在2019年，Cloudflare宣佈提供域名註冊服務，以不抽利潤的最低價提供域名註冊服務，聲稱只會收取它們需付的費用。\[26\]

## 價值

Cloudflare 對言論自由價值的支持一直為人所傳頌，執行長 Matthew Prince 表示：「美國之所以強大的其中一個原因是言論 (特別是政治言論) 的神聖性。當然，網站不就是一個言論集散地嗎...網站本身就是言論。它不是炸彈。它不會造成立即危險，而且沒有任何提供者有義務監視網站上所可能包含的言論，並裁定某些言論理論上有害。」Cloudflare 每半年都會發佈「透明度報告」，說明執法機構要求其客戶資料的頻率。\[27\]

## 客戶

直至2017年，Cloudflare提供DNS服務給一千二百萬個網站，\[28\]每日增加兩萬使用者。\[29\]其中著名的網站包括[Uber](../Page/優步.md "wikilink")、OKCupid與[Fitbit](../Page/Fitbit.md "wikilink")。\[30\]

## 獎項與殊榮

  - 在2015年2月的8th Annual Crunchies Awards(第 8 屆年度 Crunchies 獎)獲得[TechCrunch](../Page/TechCrunch.md "wikilink")的""Best Enterprise Startup""(最佳新創企業)獎。
  - 有兩年被《[华尔街日报](../Page/华尔街日报.md "wikilink")》譽為 ""Most Innovative Network & Internet Technology Company""(最佳創新網路與網際網路技術公司)。
  - 在2012年，Cloudflare被World Economic Forum (世界經濟論壇)譽為Technology Pioneer(技術先鋒)。
  - 獲《Fast Company》選為全球十大創新公司。
  - 2016和2017年，Cloudflare名列Forbes Cloud 100 (富比士雲端 100)清單第 11 名。\[31\]

## 参考文献

[Category:内容分发网络](https://zh.wikipedia.org/wiki/Category:内容分发网络 "wikilink") [Category:旧金山公司](https://zh.wikipedia.org/wiki/Category:旧金山公司 "wikilink") [Category:美国互联网公司](https://zh.wikipedia.org/wiki/Category:美国互联网公司 "wikilink") [Category:2009年成立的公司](https://zh.wikipedia.org/wiki/Category:2009年成立的公司 "wikilink") [Category:计算机安全公司](https://zh.wikipedia.org/wiki/Category:计算机安全公司 "wikilink") [Category:2009年加利福尼亞州建立](https://zh.wikipedia.org/wiki/Category:2009年加利福尼亞州建立 "wikilink") [Category:2019年IPO](https://zh.wikipedia.org/wiki/Category:2019年IPO "wikilink")

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
11. [The Largest Cyber Attack In History Has Been Hitting Hong Kong Sites](https://www.forbes.com/sites/parmyolson/2014/11/20/the-largest-cyber-attack-in-history-has-been-hitting-hong-kong-sites/). Forbes.
12.
13.
14.
15.
16.
17. [Cloudflare acquires app platform Eager, will sunset service in Q1 2017](http://venturebeat.com/2016/12/13/cloudflare-acquires-app-platform-eager-will-sunset-service-in-q1-2017/). VentureBeat.
18.
19. [Biggest DDoS ever aimed at Cloudflare’s content delivery network](https://arstechnica.com/security/2014/02/biggest-ddos-ever-aimed-at-cloudflares-content-delivery-network/). Ars Technica.
20. ["Cloudflare Web Application Firewall Review"](https://fanaticentrepreneur.com/cloudflare-web-application-firewall-review/). "Fanatic Entrepreneur."
21. ["April 2016 DNS Speed Comparison Report"](http://www.solvedns.com/dns-comparison/2016/04/). "www.solvedns.com."
22.
23. ["CloudFlare figured out how to make the Web one second faster"](http://www.zdnet.com/article/cloudflare-offers-http2-server-push-to-boost-internet-speeds/). "ZDNet."
24. ["Internet Exchange Report"](http://bgp.he.net/report/exchanges#_participants/). Hurricane Electric.
25. ["中国网络|cloudflare"](https://www.cloudflare.com/zh/network/china/) "www.cloudflare.com"
26.
27. ["CloudFlare Releases Transparency Report for First Half of 2015"](http://www.securityweek.com/cloudflare-releases-transparency-report-first-half-2015/). "Wired Business Media."
28.
29.
30. ["Cloudbleed: Big web brands leaked crypto keys, personal secrets thanks to Cloudflare bug"](https://www.theregister.co.uk/2017/02/24/cloudbleed_buffer_overflow_bug_spaffs_personal_data/). "The Register."
31. ["Forbes Cloud 100"](http://www.forbes.com/cloud100/). "Forbes."