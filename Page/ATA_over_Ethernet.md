> 本文内容由[ATA over Ethernet](https://zh.wikipedia.org/wiki/ATA_over_Ethernet)转换而来。


[Cc25-20060903-AoE-1.png](https://zh.wikipedia.org/wiki/File:Cc25-20060903-AoE-1.png "fig:Cc25-20060903-AoE-1.png")協定（右半）的比較圖，圖中可明顯看出AoE協定的堆疊層數少於iSCSI，因此在傳輸效益表現上AoE能夠比iSCSI更具效率。\]\]

**ATA over Ethernet**（簡稱：**AoE**）是由[Brantley Coile](https://zh.wikipedia.org/wiki/Brantley_Coile "wikilink")\[1\]所提創的一種[網路通訊协议](../Page/网络传输协议.md "wikilink")，此協定可以在[乙太網路上访问](../Page/以太网.md "wikilink")[ATA](../Page/ATA.md "wikilink")標準的存储裝置（多指[硬碟](../Page/硬盘.md "wikilink")\[2\]），運用此協定的好處在於能以平價且標準的技術來實現一個[儲存區域網路環境](../Page/存储区域网络.md "wikilink")。

AoE不倚賴乙太網路中網路層以上的協定，包括[IP](../Page/网际协议.md "wikilink")、[UDP](../Page/用户数据报协议.md "wikilink")、[TCP等都棄捨不用](../Page/传输控制协议.md "wikilink")，這表示AoE不能通过在[區域網路上進行路由](../Page/局域网.md "wikilink")、繞徑，很明顯AoE僅打算做為[儲存區域網路之用](../Page/存储区域网络.md "wikilink")。

需要注意的是，AoE與[iSCSI相同](https://zh.wikipedia.org/wiki/iSCSI "wikilink")，皆強調自身是遠比[光纤渠道](https://zh.wikipedia.org/wiki/光纖通道 "wikilink")（[Fibre Channel](https://zh.wikipedia.org/wiki/光纤通道 "wikilink")）低廉的[儲存區域網路佈建方案](../Page/存储区域网络.md "wikilink")，不過AoE標榜比iSCSI更簡單、更低廉。單就標準規範的技術文件而言，AoE規格僅有8頁，而iSCSI卻為257頁。

## 作業系統支持

以下是各式[作業系統對AoE的支援程度](https://zh.wikipedia.org/wiki/作業系統 "wikilink")：

  - [Linux](../Page/Linux.md "wikilink")
      - Linux自2.6.11版（2005年3月1日發佈）之後的核心程式即具備AoE的功效機制。

<!-- end list -->

  - [FreeBSD](../Page/FreeBSD.md "wikilink")
      - FreeBSD自身並不支援AoE，但[Coraid公司](../Page/Coraid公司.md "wikilink")有提供FreeBSD之用的AoE[驅動程式](../Page/驱动程序.md "wikilink")[（下載網址）](http://www.coraid.com/support/freebsd/)

<!-- end list -->

  - [Solaris](../Page/Solaris.md "wikilink")
      - 無論是[SPARC](../Page/SPARC.md "wikilink")版的Solaris或[x86版的Solaris](https://zh.wikipedia.org/wiki/x86 "wikilink")，都已有外部測試（beta test）性的AoE驅動程式。

<!-- end list -->

  - [OpenBSD](../Page/OpenBSD.md "wikilink")
      - 自4.5-Current版開始原生支援

其他作業系統如[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac OS X等並未內建支援](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，需要第三方的驅動程式方可使用。

## 支援AoE的軟、硬體

在支援的硬體方面，有[Coraid公司](../Page/Coraid公司.md "wikilink")推出AoE用的[硬碟櫃](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，稱為[EtherDrive](https://zh.wikipedia.org/wiki/EtherDrive "wikilink")。

另外，[LayerWalker](https://web.archive.org/web/20120702000000/http://www.layerwalker.com/)（中文名：[聯克科技](https://web.archive.org/web/20120702000000/http://www.layerwalker.com/)）也推出了[AoE的](https://zh.wikipedia.org/wiki/AoE "wikilink")[SoC晶片](https://zh.wikipedia.org/wiki/系統單晶片 "wikilink")。 實際測試的效能，在10/100Mbps乙太網路上可以達到最高11.5MB/s（約92Mbps）的速度。在Gigabit網路上，則可以達到最高65MB/s（約530Mbps）讀取速度與55MB/s（約440 Mbps寫入速度）。稱為miniSAN的這個Soc解決方案，展現了[AoE有足夠的能力與穩定性以取代價格高昂的](https://zh.wikipedia.org/wiki/AoE "wikilink")[iSCSI與速度較慢的](https://zh.wikipedia.org/wiki/iSCSI "wikilink")[SAMBA](https://zh.wikipedia.org/wiki/SAMBA "wikilink")，[FTP等以TCP為基礎的資料傳輸協定](https://zh.wikipedia.org/wiki/FTP "wikilink")。

在軟體方面，自由軟體的專案網站：[SourceForge.net](http://sf.net)有提供vblade軟體的[下載](http://sourceforge.net/projects/aoetools/)，將vblade軟體安裝到Linux伺服器上，Linux伺服器就會透過網路去尋找AoE硬碟櫃，找尋到後便可向硬碟櫃提出儲存服務的請求，進而使用硬碟櫃內的儲存空間、資源。vblade軟體有兩種型態與執行法，一種是以使用者空間（userspace）的執行程式（屬aoetools工具程式包的一部份）來運作，另一種是以Linux的核心模組程式（kernel module）來運作。

## 相關概念

雖然AoE是簡單的網路協定，但在儲存的功效機制運作上卻也增高了複雜性，因此有必要對AoE的進一步細節進行瞭解，如此才能切實依據場合、情境的需求來決定是否該採行AoE，同時此也有助於將一些新儲存概念的普及推行。

### 區塊性的儲存傳輸

首先，[ATA](../Page/ATA.md "wikilink")在AoE中被當成一種[硬碟用的線路協定](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，資料寫入硬碟後若要進行讀出，則會以一個或一個以上的塊狀型態進行回傳，且[每塊的容量尺寸大小](https://zh.wikipedia.org/wiki/區塊尺寸 "wikilink")（[Block size](../Page/块_\(数据存储\).md "wikilink")）固定一致，此可稱為[傳輸區塊](https://zh.wikipedia.org/wiki/傳輸區塊 "wikilink")（[Block](../Page/块_\(数据存储\).md "wikilink")），AoE的技術基礎即是此種「區塊性傳輸」。

接著，AoE協定直接、簡單地將ATA指令（ATA command）送入低階網路[封包內](https://zh.wikipedia.org/wiki/封包 "wikilink")，此種方式使[乙太網路線](https://zh.wikipedia.org/wiki/乙太網路線 "wikilink")（[ethernet cable](../Page/CAT-6.md "wikilink")）能有效取代ATA介面的接線（或稱：[排線](https://zh.wikipedia.org/wiki/排線 "wikilink")，[ribbon cable](https://zh.wikipedia.org/wiki/柔性扁平排线 "wikilink")），AoE可以在乙太網路所及的各處進行資料區塊的搬運與傳輸，而乙太網路上的各端點可以是硬碟（硬碟櫃）或電腦。

對ATA標準中的ATA排線而言，它不用去理會自身所傳輸的是何種資料區塊，這對AoE標準而言也是相同，AoE標準所用的乙太網路線不用去瞭解它所傳輸的是何種資料區塊，用戶可以讀出、寫入任何想要的區塊資料，只不過在多數情況下，[文件系统](../Page/文件系统.md "wikilink")將比傳輸區塊更適合用來進行資料的組織與結構化運用。

#### 區塊傳輸上的檔案系統

就傳統而言，使用者是以檔案系統的方式來使用電腦中的硬碟，如[ext3](https://zh.wikipedia.org/wiki/ext3 "wikilink")、[XFS](../Page/XFS.md "wikilink")、以及[NTFS](../Page/NTFS.md "wikilink")等檔案系統皆是以此種想定所設計、運用。

然而在使用AoE時，由於AoE運用乙太網路來取代ATA排線，這就有可能破壞此種想定用法，改以AoE方式運作對傳統檔案系統而言是一件危險的事，有可能導致檔案系統的錯亂，或造成作業系統的[核心錯愕](https://zh.wikipedia.org/wiki/核心錯愕 "wikilink")（[kernel panic](../Page/内核错误.md "wikilink")）。

對此，AoE是用[集群式的檔案系統來避免這些問題](../Page/计算机集群.md "wikilink")，使AoE硬碟、硬碟櫃的區塊性儲存、傳輸的裝置設備，能夠同時供多部電腦存取使用，跳脫過往ATA技術只能讓硬碟、硬碟群專供單一部電腦存取使用的限制。若就實際的功效運作來說，能夠存取AoE硬碟櫃的伺服器自身就如同是加入叢集系統的一部叢集電腦，是以叢集的共享機制來共同取用儲存資源，而AoE硬碟櫃即是一個可供共享的區塊性儲存設備。

至於具叢集功效的檔案系統有哪些，常見的有[GFS](https://zh.wikipedia.org/wiki/GFS "wikilink")、[OCFS2等](https://zh.wikipedia.org/wiki/OCFS2 "wikilink")。

#### 硬碟

AoE的目標端是個[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")（集中放於AoE硬碟櫃內），或者必須被視為一顆硬碟（用其他非硬碟的儲存媒體來喬裝頂替），對此有幾項與與硬碟關連的要項必須關心留意：

  - 存取速度主要取決於碟片的轉速，轉速單位為[RPM](https://zh.wikipedia.org/wiki/RPM_\(單位\) "wikilink")，RPM值愈高，硬碟讀寫頭（head，俗稱：磁頭）的旋轉等待時間（rotational latency）就愈短，硬碟性能就愈高。其次讀寫頭的移動速度愈快，搜軌時間（seek time）就愈短，此也會影響硬碟的傳輸快慢，其他還有磁錄密度（magnetic density）、磁頭入軌的精準度、碟片上的資料配置分佈情形、以及碟機上的數位信號處理器、介面控制電路等也都會影響硬碟的效能表現。
  - 硬碟的隨機存取速度完全主導了搜尋時間
      - 完整隨機存取的時間比連續存取慢上1,000倍
      - 就一般而言，單顆硬碟的連續存取速度為50MB/Sec—80MB/Sec。
      - 運用[磁碟陣列](../Page/RAID.md "wikilink")（RAID）技術多半可提高隨機存取及連續存取的傳輸效能。
      - 主控端作業系統及其檔案系統必須儘可能將資料以連續存取的方式寫入硬碟，如此有助於整體存取效能的提升。

### 乙太網路

  - AoE封包是用乙太網路中的[MAC位址來決定封包從何處發出以及要傳往何處](../Page/MAC地址.md "wikilink")。不過MAC位址只能在單一的乙太網路中使用，因為MAC位址是以網域為範疇進行廣播式發送。
  - 現有的乙太網路硬體多具有[流量控制](https://zh.wikipedia.org/wiki/流量控制 "wikilink")（flow control）的功效機制，能夠使[封包重新發送](https://zh.wikipedia.org/wiki/封包重發 "wikilink")（packet retransmission）的頻寬需求降至最低。
  - 乙太網路使用[循環冗餘校驗](../Page/循環冗餘校驗.md "wikilink")（CRC）演算法來確保封包完整送達。

### 網路式儲存

當使用[乙太網路來進行區塊性傳輸時](https://zh.wikipedia.org/wiki/乙太網路 "wikilink")，將能夠獲得以下的幾項潛在益處：

  - 儲存的空間、容量等資源可以很容易地擴展延伸。
  - 容量擴展的上限幾乎是無限。
  - 可以將乙太網路建立成[ad hoc的型態](https://zh.wikipedia.org/wiki/Ad_Hoc网络 "wikilink")，藉此來對存取傳輸進行控制。
  - 儲存設備的硬體及其資源可以從專屬個用、單用轉變成公用、共享型態。
  - 資料[備份更加容易](https://zh.wikipedia.org/wiki/備份 "wikilink")。
  - 與儲存設備、儲存資源相同的，儲存的資料也可以從專用改成共享。

### 組態字串

當同時間有一部以上的伺服器對AoE硬碟櫃進行存取，此時傳輸運作就會發生衝突，因為AoE硬碟櫃不能確認哪一部伺服器擁有真正的存取主控權，為了解決這個問題，AoE協定中具備一種協調機制，透過此種機制來排解衝突，使同時性的存取糾紛可以化解，此外該機制也能維持與保護共享資料的一致性，避免資料發生矛盾，舉例來說，當一部伺服器取得AoE硬碟櫃的存取主控權時，特別是伺服器正將新的資料寫入硬碟時，機制上會自動對正在寫入的儲存區塊進行保護，防止其他的伺服器也對該區塊進行寫入，待原有的伺服器完成寫入後才將保護解除，並允許下一個獲得主控權的伺服器對該區塊進行讀出或寫入。

若進一步探究，AoE允許用兩種方式來實現此種排解機制，一種是由已經獲得存取主控權的伺服器，由該伺服器以[TCP/IP協定的方式對其他伺服器發送訊息](../Page/传输控制协议.md "wikilink")，告知哪個區塊正在存取使用中，請勿對該區塊進行重複性存取，以免造成存取衝突與資料矛盾等問題，等於讓多部伺服器間自行進行存取上的討論與知會。

另一種作法是由AoE硬碟櫃自己來決定哪個伺服器可以進行存取，AoE協定也支援此種作法，在AoE協定中具有一種**組態字串**（**Config String**\[3\]）的功效機制，即是在AoE硬碟櫃上設置一個組態字串，由各部伺服器來對此字串進行設定（對字串的儲存區進行寫入），設定成功的伺服器即擁有存取傳輸的主控權，反之失敗的伺服器只能等候與再次嘗試設定，而同時間只會有一個伺服器能成功設定。

## 附註說明

<references/>

## 參考引據

1.  Coraid公司對[AoE技術的相關說明](https://web.archive.org/web/20060419024041/http://www.coraid.com/technology.html)
2.  LinuxDevices.com網站：[ATA-over-Ethernet造就平價、Linux型的儲存區域網路](https://archive.is/20121208143922/http://linuxdevices.com/news/NS3189760067.html)（2004年6月23日）

## 相關參見

  - [HyperSCSI](https://zh.wikipedia.org/wiki/HyperSCSI "wikilink")
      - **說明：**技術性質、特性與AoE相似的技術，但比AoE更早出現，事實上AoE技術的多數特性設計也取自於HyperSCSI。
  - [iSCSI](https://zh.wikipedia.org/wiki/iSCSI "wikilink")
      - **說明：**與AoE相同，皆是以「能低廉、平價地建立出[儲存區域網路](../Page/存储区域网络.md "wikilink")（SAN）」為訴求的技術，1990年代後期開始提出與研究，於2003年正式成為[IETF制訂機構所頒佈的網路標準](https://zh.wikipedia.org/wiki/互联网工程工作小组 "wikilink")。

## 外部連結

  - **教學**
      - [在FreeBSD作業系統上使用AoE](http://www.coraid.com/support/freebsd/usingaoe.html)
      - [各種不同發行版本的Linux在設定AoE時的小技巧](http://www.coraid.com/support/linux/)

<!-- end list -->

  - **報導**
      - [ATA Over Ethernet：將硬碟放在區域網路上](http://www.linuxjournal.com/article/8149) - [Linux Journal](https://zh.wikipedia.org/wiki/Linux_Journal "wikilink")（2005年4月28日）
      - \[ 透過乙太網路連接ATA硬碟\] - [電子時報](../Page/電子時報.md "wikilink")（2006年8月14日）

<!-- end list -->

  - **協定**
      - [AoE通訊協定的敘述說明](http://www.coraid.com/documents/AoEDescription.pdf)（[PDF檔](https://zh.wikipedia.org/wiki/PDF "wikilink")）
      - [AoE通訊協定的規範標準](https://web.archive.org/web/20050204192507/http://www.coraid.com/documents/AoEr8.txt)

<!-- end list -->

  - **下載**
      - [ATA Over Ethernet Tools（也稱aoetools）及vblade](http://sourceforge.net/projects/aoetools/)
          - **說明：**vblade是安裝、運作於AoE伺服器端的程式，負責AoE的使用者空間（userspace）工作執行。
      - [以Linux核心模組方式實現的vblade](https://web.archive.org/web/20060613195514/http://lpk.com.price.ru/~lelik/AoE/)
          - **說明：**執行運作速度快過以使用者空間型態運作的vblade。

[Category:電腦儲存技術](https://zh.wikipedia.org/wiki/Category:電腦儲存技術 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:乙太網路](https://zh.wikipedia.org/wiki/Category:乙太網路 "wikilink") [Category:ATA](https://zh.wikipedia.org/wiki/Category:ATA "wikilink")

1.  [Brantley Coile為](https://zh.wikipedia.org/wiki/Brantley_Coile "wikilink")[Coraid公司](../Page/Coraid公司.md "wikilink")的[首席信息官](https://zh.wikipedia.org/wiki/首席信息官 "wikilink")。
2.  ATA標準原僅是為硬碟存取而制訂，但之後個人電腦配備光碟機的情形日益普遍，因此ATA標準被擴展、增訂成ATAPI標準，將可抽取式的儲存裝置也列入支援，包含光碟機、磁帶機也可視為ATA介面型態的儲存裝置。
3.  Config是個縮寫，全寫是Configuration，然而資訊界經常使用此一縮寫，最知名的例子是[MS-DOS](../Page/MS-DOS.md "wikilink")作業系統的組態檔稱為config.sys