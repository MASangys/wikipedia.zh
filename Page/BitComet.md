**比特彗星**（****，缩写：）是一個用C++語言為[Microsoft Windows平台編寫的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[BitTorrent客戶端軟件](https://zh.wikipedia.org/wiki/BitTorrent "wikilink")，也可用于HTTP/FTP下载，并可选装“[eMule插件](https://zh.wikipedia.org/wiki/eMule "wikilink")”通过[电驴网络进行BitTorrent](https://zh.wikipedia.org/wiki/电驴网络 "wikilink")/电驴同时下载。

## 功能

它的特性包括同時下載，下載隊列，從多文件[种子中選擇下載單個文件](../Page/种子文件.md "wikilink")，快速恢復下載，-{zh-hant:磁碟快取;zh-hans:磁盘缓存}-，速度限制，-{zh-hant:連接埠映射;zh-hans:端口映射}-，代理伺服器和IP地址過濾，[种子市场等](https://zh.wikipedia.org/wiki/种子市场 "wikilink")。版本0.59中加入了公用[DHT網絡的支持](https://zh.wikipedia.org/wiki/DHT "wikilink")，版本1.01中加入反吸血（针对[迅雷](../Page/迅雷.md "wikilink")）功能。

## 爭議與批評

### 回傳雜湊值

BitComet 0.86之後的版本會將下載中種子的[雜湊值回傳給bitcomet](../Page/分散式雜湊表.md "wikilink").com伺服器，以用於將來的狀態追踨與討論功能。目前並沒有辦法關閉此功能，因此有些使用者擔心他們所有的BT活動被紀錄下來所牽涉到的隱私問題。

### 廣告軟體

BitComet官方網頁上宣稱"BitComet does not contain any adware or spyware"（BitComet不含有任何[廣告軟體或](https://zh.wikipedia.org/wiki/廣告軟體 "wikilink")[間諜軟體](https://zh.wikipedia.org/wiki/間諜軟體 "wikilink")）。

然而，目前的版本預設是會顯示廣告的，但是可以手動屏蔽廣告。

### DHT濫用

BitComet的0.60版植入當時還很新的DHT功能，使其可利用tracker的私有旗標，因而不受歡迎。這個功能允許使用者避開私人tracker常見的上下載比限制，許多私人tracker則以阻擋BitComet 0.60版來回應。\[1\]BitComet作者在此事件後，將用戶端軟體改回了0.59版。\[2\]0.61版則修正了DHT濫用的問題。\[3\]\[4\]

### 超級種子

在2007年初，[BitTornado的作者John](https://zh.wikipedia.org/wiki/BitTornado "wikilink") Hoffman嚴詞批評BitComet使用卑劣的手段欺騙超級種子，犧牲其他下載者的權益。"BitComet已經證明了自己是個有害的軟體，它也逼的我不得不採取我不想使用的措施。我將在我的客戶端軟體（BitTornado）以及tracker中擋掉所有來自BitComet的連線。"

BitComet在1.16（2009）版本加入了超級種子功能（v1.16界面改進：BT任務內容對話框進階設定頁面增加"超級種子"選項）。

### 文件分塊對齊

從0.85版開始，BitComet在種子製作介面新增了一個預設開啟的選項，使得種子檔內的兩個檔案不會佔用同一個區塊。此功能使得BitComet能夠從非BT的來源（如http/ftp伺服器或是ed2k網路）下載檔案。為了達成此目的，BitComet會在每個檔案的最後一個區塊加入一個填充檔（padding file文件）。這些檔案在BitComet中是看不到也不會造成任何影響的，但是對於其他BT軟體的使用者來說，處理這些檔案會造成許多額外的麻煩。

### 长效种子

从0.93版开始，BitComet加入了“长效种子”的新功能，当开启BitComet并开启长效种子功能后，无论该任务是否被手动开启，所有BitComet中的完成的任务都会当作是“长效种子”，给其他BitComet客户端上传数据（但其他的BT客户端无法接受到该数据）。此功能大大增加了种子的有效时间，但某些人认为该功能具有[吸血特性](https://zh.wikipedia.org/wiki/吸血 "wikilink")--长效种子的上传占据了客户端较多的带宽，在下载时无疑他让BitComet能连接到更多的资源，但是上传给其他BT软件用户的数据却相对变少，这样会渐渐形成一个变相[吸血的](https://zh.wikipedia.org/wiki/吸血软件 "wikilink")[私有网络](https://zh.wikipedia.org/wiki/私有网络 "wikilink")。

長效種子功能與[迅雷](../Page/迅雷.md "wikilink")的[P2SP](https://zh.wikipedia.org/wiki/P2SP "wikilink")、[快車的](https://zh.wikipedia.org/wiki/快車 "wikilink")[P4S相似](https://zh.wikipedia.org/wiki/P4S "wikilink")。

### “eMule插件”

BitComet官方提供了“eMule插件”和“eMule插件（Xtreme版）”，可以通过[eDonkey网络](https://zh.wikipedia.org/wiki/eDonkey网络 "wikilink")（即eD2k或电驴网络）下载来源。\[5\]

BitComet官方声明插件在[eMule基础上修改而成](https://zh.wikipedia.org/wiki/eMule "wikilink")\[6\]，但其不开源软件，因而违反eMule的[GPL开源协议](https://zh.wikipedia.org/wiki/GPL "wikilink")；同时，官方声明的“遵循P2P共享精神”\[7\]也有一定争议。所以BitComet的“eMule插件”在连接到eDonkey网络时，被[eMule Xtreme Mod等](https://zh.wikipedia.org/wiki/eMule_Xtreme_Mod "wikilink")[eMule Mod的](https://zh.wikipedia.org/wiki/eMule_Mod "wikilink")[动态反吸血驴保护](../Page/动态反吸血驴保护.md "wikilink")功能所屏蔽。\[8\]

### 綑綁安裝

## 参考

## 参见

[BitTorrent客户端](https://zh.wikipedia.org/wiki/BitTorrent客户端 "wikilink")

## 外部链接

  - [BitComet官方網頁](http://www.bitcomet.com/)
  - [BitComet 官方Wiki](http://wiki.bitcomet.com/)
  - [BitComet 官方論壇](http://www.cometforums.com/)
  - [BitComet・改－改良版本](http://hideyoshi.2ch.net/test/read.cgi/download/1258598610/)

[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink") [Category:BitTorrent客戶端](https://zh.wikipedia.org/wiki/Category:BitTorrent客戶端 "wikilink") [Category:廣告軟體](https://zh.wikipedia.org/wiki/Category:廣告軟體 "wikilink")

1.
2.
3.
4.
5.  [BitComet官方网站 - BitComet电驴插件（eMule Plugin）](http://www.bitcomet.com/doc/plugin-emule-zh.htm)（[存档](http://www.webcitation.org/5te7kl6W2)）
6.
7.
8.  参见[eMule Xtreme Mod源码](https://zh.wikipedia.org/wiki/eMule_Xtreme_Mod "wikilink")。