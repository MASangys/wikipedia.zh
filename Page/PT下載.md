**PT**（Private Tracker）是一種改良自[BitTorrent協定的](../Page/BitTorrent_\(协议\).md "wikilink")[P2P下載方式](https://zh.wikipedia.org/wiki/P2P "wikilink")，「Private Tracker」指私有種子伺服器。與[BT最大的不同點分別為可進行私密範圍下載](https://zh.wikipedia.org/wiki/BT "wikilink")，并且记录每一个用户的详细数据。

## 特點

PT可進行私密範圍下載，因此提供PT的[討論區大多非公開的](https://zh.wikipedia.org/wiki/討論區 "wikilink")，採用邀請制或是不定時開放註冊。用戶註冊後會得到一個passkey，因此可藉由passkey辨識每個用戶，用戶從某PT站下載種子後，該種子即帶有用戶的passkey。因此PT的種子不可外流到其他地方，且不允許一個用戶有過多IP（通常上限為3個IP）同時上下傳。

为了控制用户数量，关闭自由注册的PT网站一般采用[邀请码制度](https://zh.wikipedia.org/wiki/邀请码 "wikilink")，由已注册的用户向自己所信任的人发送邀请，以确保用户质量。\[1\]有一些站点还会允许用户通过官方渠道捐助或购买邀请码以获得邀请。

由於有passkey，用戶上傳及下載即可統計，在大多數的PT站會以上下載比例（分享率）規定用戶需上傳多少後才可下載多少，有些站甚至會以用戶上傳及下載的內容等做積分值，分享率過低者會被系統取消使用PT的資格。由於需有足夠的上傳方可下載，因此有些使用者會租用網路上有大頻寬的以衝高自己的上傳率。

PT网站禁止一人多个[账号](https://zh.wikipedia.org/wiki/账号 "wikilink")、多人共用一个账号、私自贩卖账号。即便是使用自建的服务器冲高上传，PT网站也不接受公众服务器提供商免费提供且没有独立IP的服务器，更不能将PT网站的种子直接用于商业网站提供的代下载、离线下载、网盘云服务等功能。

藉由這些機制，傳統P2P下載常發生一些用户端只下載而不分享上傳的「吸血」行為將可杜絕。而BT種子在一兩周後做種者大幅減少，以致後來下載者無法順利完檔的缺點在PT獲得改善。

## 技術原理

BT下載時，軟件會分析.torrent種子文件得到Tracker地址，然后連接[Tracker服務器](https://zh.wikipedia.org/wiki/Tracker服務器 "wikilink")，服務器返回其他下載者的IP，下載者再與這些IP聯系進行下載，從而減輕了服務器的負擔，BT下載的Tracker是公開的，而Private Tracker 下載(PT下載)的Tracker則是私有的，Private Tracker 下載(PT下載)是一種小范圍的BT下載，通過禁用DHT有要求地選擇并控制用戶數量，這樣，在有限的范圍內，下載的用戶基本上都可以達到自己的寬帶上限，Private Tracker 下載(PT下載)下載還通過論壇等方式的約束機制將BT下載的理念現實化，真正讓用戶做到下載的過程中努力上傳。因此，Private Tracker 下載(PT下載)的速度很快，能夠讓用戶帶寬得到最大程度的使用。

BT下載和傳統的依靠網站服務器作為下載源的HTTP/FTP下載不同，采用的是P2P點對點下載方式。BT下載的理念是人人都是服務器，下載的同時也進行上傳，這樣參與進來的人越多，下載的速度也越快。如果下載的人數足夠多，往往可以達到網絡帶寬的峰值。

遺憾的是，雖然BT的設計理念是好的，但實際執行過程中不能按照設想的那樣完美。由於網絡限制，大多時候，BT下載并不能達到理想的帶寬滿速狀態。BT下載的約束機制不夠，部分用戶高速下載的同時卻不愿意上傳。尤其是種子的內容超過了流行期，很容易出現斷種，下載速度不夠理想。而高清種子的流行時限一般更短，而文件容量卻很大，若沒趕上大部隊，之后下載無疑是十分痛苦的事情。而PT下載實際上就是改良的BT下載，它的出現解決了BT下載中下載速度變慢和缺乏種子的問題。

## 軟體

### 伺服器端

支援PT的伺服器端架構有[Gazelle](https://zh.wikipedia.org/wiki/Gazelle "wikilink")、[XBT Tracker](https://zh.wikipedia.org/wiki/XBT_Tracker "wikilink")（XBTT）、NexusPHP等；

### 客戶端

#### Windows

  - Azureus (Vuze)
  - uTorrent 3.5.3 以上
  - BitTorrent
  - Deluge
  - BitTornado

#### Linux

  - Azureus (Vuze)
  - Deluge
  - Transmission
  - rTorrent
  - uTorrent Server

#### MacOS X

  - Azureus (Vuze)
  - Transmission
  - uTorrent Mac

#### Android

  - tTorrent

#### 跨平台

  - qBittorrent

#### 以上Cliet的https支持

  - rtorrent: 需要手工设置SSL证书, 详细信息请自行查阅其官方网站说明

有些PT站只允許使用特定的PT軟體。

由於[μTorrent在](https://zh.wikipedia.org/wiki/μTorrent "wikilink")2018年2月28日被爆存在遠程連接安全漏洞\[2\]，絕大多數PT站點已禁用版本號3.5.5以下的所有Ut客戶端。

## 優劣

  - 擁有約束機制，下載速度有保證

用戶在論壇上進行PT下載時，都有相應的約束機制。PT網站的約束機制是建立在分享率（ratio）的基礎上的。當上傳量與下載量的比值達不到要求時，甚至會被封掉帳號。也就是說，上傳越多才能下載越多。因此，不少用戶登陸PT軟件不是為了下載，而是為了上傳。不僅僅是速度上，種子的時效性也非常好，很多用戶會主動保種。和公開的BT站點相比，靠制度遠比靠自覺好。

### 劣勢

#### 難度更大

除非你是大水管（高帶寬用戶），否則玩PT要生存就得多動腦，計算分享率，計算做種積分（可購買上傳量，邀請碼和各網站自行開發的道具）沒有點頭腦還真是不行。一般來說PT網站（論壇）都會有免費、限時免費、75%、50%、30%、2X、3X等針對下載和上傳的優惠時段和優惠策略，新手進站后一定要先把規則弄清楚。

#### 加入困難

很多PT論壇是需要邀請才能加入的，對于新手來說，如何獲得邀請注冊是個難題。沒有好的辦法，只能多去國內著名的高清網站轉轉，多交一些朋友。PT站的規矩多多，要注意分享率，要注意時不時得登錄一下露個臉。還一定要注意不要去試圖作弊，否則后果很严重，當然也千萬不要去試圖挑戰一下管理員的權威，顯得你與眾不同。

#### Tracker的脆弱性

PT站往往只用自己的Tracker，和Public Tracker不同，PT的Tracker是要不停追蹤客戶端的下載上傳流量的，所以對服務器的性能要求很高。Tracker服務器容易被攻破，導致用戶數據passkey泄露引起Tracker失效，就會無法統計上傳下載流量，也就是常說的“紅種”（種子文件顯示為紅色）問題。

## 存在问题

### 断种

由于PT下载方式的私密性和小众性，导致下载资源，尤其是偏僻冷门的资源，经常会由于上传人数的不足而产生断种现象，这种现象在一些规模较小的PT下载站尤其明显。

### 作弊

由于PT下载所使用协议的漏洞，导致一些用户利用其漏洞模拟上传流量而进行作弊，这种作弊很难完全禁止。

### 地下交易

由于PT网站大多数不能自由注册，催生出一批依附于该规则的商人，他们通过第三方平台明码标价贩卖账号或者邀请，帮忙以正当或者作弊的方式，为客户增加上传流量、做种积分等，而上述私自贩卖账号、邀请、流量、积分的行为，极大破坏了PT网站的运作机制，通常都被PT网站明令禁止并长期大力打击，甚至因为该问题导致一些PT网站把一些国家或地区列入黑名单。

### 网游化倾向

由于PT网站详细记录每一个用户的流量数据，所以有部分用户以各种合法或者非法的手段，借此提高个人数据并以此为乐，而实际上这些用户平时很少甚至根本没有兴趣了解自己下载过的数据资料。

### 版权风险

PT网站分发的内容，大多以影视出版物、音像制品、软件或应用、图书的扫描或电子档等为主，当中绝大部分均未获版权所有者正式授权，只是基于PT网站本身的小众及私密性，才能长期行走于法律的灰色地带，每一位用户都需要承担被控告侵犯版权的风险。

### 突然关站

出于种种原因，每一年全球都会有几个PT网站毫无征兆突然宣布永久关闭网站，站点的大小与突然关站的概率并无明显关系。

## 参考资料

[en:BitTorrent tracker\#Private trackers](https://zh.wikipedia.org/wiki/en:BitTorrent_tracker#Private_trackers "wikilink")

[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink")

1.  [Trading BitTorrent Tracker Invites , Commodity or Curse?](http://torrentfreak.com/trading-bittorrent-tracker-invites-080115/)
2.