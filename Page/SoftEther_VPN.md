> 本文内容由[SoftEther VPN](https://zh.wikipedia.org/wiki/SoftEther_VPN)转换而来。


**SoftEther VPN**是一個由[筑波大學研究生Daiyuu](https://zh.wikipedia.org/wiki/筑波大學 "wikilink") Nobori（[登大遊](../Page/登大遊.md "wikilink")）因碩士論文而開發的開源、跨平台、多重協定的[虛擬私人網路](../Page/虛擬私人網路.md "wikilink")方案，此方案讓一些[虛擬私人網路](../Page/虛擬私人網路.md "wikilink")協定像是SSL VPN 、[L2TP](https://zh.wikipedia.org/wiki/L2TP "wikilink")、[IPsec](../Page/IPsec.md "wikilink")、[OpenVPN](../Page/OpenVPN.md "wikilink")以及微軟[SSTP都由同一個單一](https://zh.wikipedia.org/wiki/SSTP "wikilink")[VPN伺服器提供](https://zh.wikipedia.org/wiki/VPN "wikilink")。在2014年1月4日以[GNU通用公共授權條款的方式转变为](https://zh.wikipedia.org/wiki/GNU通用公共授權條款 "wikilink")[开源软件](../Page/开源软件.md "wikilink")。

SoftEther VPN是專門被設計為穿過防火牆的，支援[NAT穿透](../Page/NAT穿透.md "wikilink")，使其能越過政府或組織的防火牆，建立VPN通道。2013年3月，官方开始提供VPN Gate公共VPN中继服务器列表插件，以简化高强度[网络审查地区有](https://zh.wikipedia.org/wiki/网络审查 "wikilink")[突破网络封锁](https://zh.wikipedia.org/wiki/突破网络封锁 "wikilink")（翻墙）需求的用户的操作复杂程度。因為用了HTTPS來偽裝連接，防火牆的[深度封包檢測無法偵測到SoftEther的VPN傳送封包構成的VPN通道](https://zh.wikipedia.org/wiki/深度封包檢測 "wikilink")。但SoftEther的[SSL VPN協定在中國大陸的部分地區仍然被封鎖](https://zh.wikipedia.org/wiki/SSL_VPN "wikilink")。

性能優化也是SoftEther VPN的一個目標。它使用像是利用全部乙太網幀的策略，減少了記憶體複製的操作、平行傳輸和群集，這減少了通常VPN連接會有的延遲並增加了運輸吞吐量。

## 互用性

VPN伺服器和VPN橋接器支援[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")(除了10.9.x)、[FreeBSD](../Page/FreeBSD.md "wikilink")還有[Solaris](../Page/Solaris.md "wikilink")這些作業系統。SoftEther VPN支援自己的VPN協定但可以和[OpenVPN](../Page/OpenVPN.md "wikilink")、微軟Secure Socket Tunneling Protocol([SSTP](https://zh.wikipedia.org/wiki/SSTP "wikilink"))、SSL VPN、EtherIP、[L2TPv3](https://zh.wikipedia.org/wiki/L2TPv3 "wikilink")、[IPsec](../Page/IPsec.md "wikilink")相容。藉由[L2TP](https://zh.wikipedia.org/wiki/L2TP "wikilink")/[IPsec](../Page/IPsec.md "wikilink")/[OpenVPN](../Page/OpenVPN.md "wikilink")，可以支援行動裝置系統如[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[安卓](https://zh.wikipedia.org/wiki/安卓 "wikilink")、微軟[Windows手機](https://zh.wikipedia.org/wiki/Windows "wikilink")。SoftEther自身的VPN客戶端支援[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac](https://zh.wikipedia.org/wiki/Mac "wikilink")。支援其他VPN協定的VPN客戶端和終端也可能會被使用；這包括了來自諸如[思科](https://zh.wikipedia.org/wiki/思科 "wikilink")、Juniper、Linksys(有[DD-WRT](../Page/DD-WRT.md "wikilink"))、Asus等等公司生產的各式各樣的路由器。

## 软件组成

### VPN伺服器

SoftEther VPN伺服器和其他VPN伺服器一樣，功能是接聽來自客戶端或橋接器使用各式協定的連接。

一個VPN伺服器可以有好幾個虛擬的集線器和交換器。虛擬集線器和實體的交換器一樣，有完整的第二層網路封包交換功能。此外，虛擬集線器能被配置來定義IP封包過濾項目，過濾經過集線器的封包。虛擬的[Network layer層交換器則像實體的路由器一樣](https://zh.wikipedia.org/wiki/Network_layer "wikilink")，有第三層IP靜態路由功能。

一個VPN伺服器可以有自帶的橋接器。這個橋接器是一個在實體網路轉接器和虛擬集線器之間的封包交換結構。系統管理員定義連接虛擬集線器和現有的企業網路之間的橋接器，去建立一個遠端存取的或站對站的VPN伺服器。

### VPN客戶端

SoftEther VPN客戶端是個虛擬化的網路適配器。一個有安裝客戶端程式的電腦能建立與伺服器的連接。因為VPN伺服器支援多種VPN協定的關係，VPN使用者並不需要在電腦上安裝SofthEther VPN客戶端，而是用內建在作業系統內的VPN客戶端程式建立連接。然而，SoftEther VPN客戶端比系統內建程式還多了些進階功能。想要充分利用SothEther VPN伺服器的全部效能的話，建議還是安裝客戶端程式。

### VPN橋接器

SoftEther VPN橋接器是個建立站對站VPN的程式。要建立這樣的VPN，系統管理員必須安裝SoftEther VPN伺服器程式在中央電腦，然後要一個以上的遠端電腦安裝VPN橋接器。VPN橋接器會以級聯連接連接中央VPN伺服器。級連連接類似在兩個實體網路交換機之間，一個虛擬化的上行連接。

### VPN伺服器微軟版管理程式

這是個SoftEther VPN伺服器和橋接器會用到的圖型化介面管理工具。系統管理員可用來連接遠端的伺服器或橋接器並管理。連接使用了SSL，管理指令則用RPC在SSL上傳輸。

### VPN命令行管理實用工具

vpncmd是個自訂介面管理工具，用在伺服器、各戶端和橋接器上。它可以在所有支援的作業系統上執行。當有使用者無法用[Wine](../Page/Wine.md "wikilink")執行微軟或Linux時，它可以轉換到vpncmd來管理VPN。vpncmd也很適合用來執行批量操作，例如在虛擬集線器上創建好幾個使用者，或在伺服器上創建好幾個虛擬集線器。

## 架構

SoftEther VPN某些部分的架構有別一般傳統使用IPsec的VPN系統。

### 虛擬集線器

虛擬集線器就是以軟體方式模擬網路交換機。它會更新和維持自身擁有的轉發資料對照表（MAC 位址表）。雖然傳統的網路交換機將這功能做在硬體上，SoftEther VPN以軟體實現了同樣功能。一個VPN伺服器可以有好幾個虛擬集線器，各自獨立。VPN客戶端和橋接端的連接就是以集線器用封包交換來處理。

當一個伺服器上有數個虛擬的集線器時，為了安全，這些集線器都會獨立分開。各個不同的管理員可以對相應的虛擬集線器授予權限。每個虛擬極限的管理員可以限定使用者物件和ACLs，而這僅限於被授權的集線器上。

### 虛擬網絡轉接器

一個VPN客戶端可以在自己的電腦上創立數個網路轉接器。VPN使用者能在虛擬網路轉接器和遠端目標的虛擬集線器間建立可用連接。當建立了可用連接，使用者就能藉此和遠端的VPN網路溝通。它可以讓任何程式或作業系統不用特定設定就能使用，就和硬體版的使用方式一樣。

### 虛擬交換機

它以軟體方式模擬了IP路由器。一個伺服器上可以同時間創立好幾個虛擬交換機。虛擬交換機有虛擬的IP介面連接虛擬集線器。它也有幾個固定的對照表上的分配項目。

虛擬交換機也適合用來做大型的站對站VPN網路。雖然有個簡單的方式可以達成，就是用橋接建立VPN，但如果有很多台電腦，輸入站點間的連接的廣播封包數量就會大增。為了預防這樣規模擴張的問題，VPN管理者用虛擬交換機來隔絕IP網路。

### 虛擬集線器之間的級聯連接

管理員可以在地區或遠端的虛擬集線器間定義一個級聯連接。當級聯連接被設立，原先獨立的兩個網段就被整合成一個了。所以這個級聯連接功能被用來建立站對站的橋接。

### 虛擬集線器和網路間的地區橋接器

因為虛擬集線器和虛擬網路轉接器都只是軟體模擬的裝置，藉此傳送的封包是無法和硬體設備溝通的。因此，需要一個模擬和實體裝置之間的橋接，才能建立遠端存取VPN或站對站VPN。要做出橋接，地區橋接器功能轉會轉換虛擬集線器和實體網路轉接器間的封包，結合兩個獨立網段成為一個單一的網段。

在VPN伺服器上定義過地區橋接器後，各VPN客戶端就可以藉由地區橋接器，連到VPN伺服器並和其他網路上的裝置溝通。這就是遠端存取VPN。

如果網路管理者設立了遠端站點VPN橋接器，並在VPN伺服器和VPN橋接器上分別定義了兩個地區橋接，然後定義伺服器和橋接器間的級聯連接，遠端的兩個網段在第二層級上就會直接連在一起。這就是站對站VPN。

### 防火牆，代理服務器和NAT通透

SoftEther VPN一個很重要的特色就對防火牆的穿透性、代理服務器和NATs。為此，SoftEther VPN支援SSL-VPN和NAT通透。它使用HTTPS協定來建立VPN通道。HTTPS用TCP/IP port 443 當作目的地。

### 多個SSL-VPN通道的平行傳輸機制

當使用者選擇SSL-VPN協定時，SoftEther VPN伺服器和客戶端會用一套平行傳輸機制來改善SSL-VPN通道的吞吐量。使用者可以從1到32設定一個數字為同時並行傳輸通道的數量。當處在一個網速非常慢的地方時，這項性能調整會導致更快的吞吐量。一旦這功能被啟用，邏輯VPN連接將包含多個TCP(HTTPS)連接。所有的封包將會在適當的TCP連接中，被加進最佳化模組的運算。如果邏輯VPN連接的TCP連接偵測到封包的遺失，新的封包就使用其他正常的VPN連接。這項快速切換最佳化的功能造就高吞吐量。

### NAT通透

傳統的VPN系統需要使用者去請求公司的防火牆管理者，在防火牆或公司與網路間的NAT開放一個終端點(TCP或UDP端口)。為了減少需要開放終端點的情形，SoftEther VPN伺服器有NAT通透功能。NAT通透會預設是啟動狀態。只要它啟動，VPN客戶端的電腦就能連接到被防火牆或NAT阻隔的VPN伺服器，不需要在防火牆或NAT上特別設定。

### 通過ICMP和DNS上的VPN

有少數限制很多的網路只允許通過ICMP或DNS的封包。在這種情形，TCP或UDP會被濾掉。為了讓SoftEther VPN也能在這種網路建立連接，SoftEther VPN有特別為此設計的VPN功能。

這功能對穿過這樣嚴格的防火牆非常有用。所有的VPN封包都再度包成ICMP或DNS封包來傳輸。接收端會從外層提出內層的封包。因為有些公共Wi-Fi只能通過ICMP或DNS封包，這讓在公共Wi-Fi也能使用VPN。如果你為了出門，安裝一個伺服器在家中或辦公室，你可以在限制網路中享受這自由協定的網路通訊。

## VPN Gate

VPN Gate是個SoftEther VPN的插件，它讓使用者能連接由志愿者提供，在自家电脑安裝SoftEther的免費公共VPN伺服器，此功能可用于帮助用户绕过政府的防火墙（翻墙）。VPN Gate由[筑波大學贊助](../Page/筑波大学.md "wikilink")。（[防火长城](../Page/防火长城.md "wikilink")已屏蔽此应用使用的链接方式）

## 參考資料

## 外部链接

  - [SoftEther VPN项目](https://www.softether.org/)
  - [在GitHub上面建立的SoftEther VPN项目页面](https://github.com/SoftEtherVPN/SoftEtherVPN)
  - [VPN Gate](https://www.vpngate.net/)

[Category:虛擬私人網路](https://zh.wikipedia.org/wiki/Category:虛擬私人網路 "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink") [Category:網路隱私](https://zh.wikipedia.org/wiki/Category:網路隱私 "wikilink") [Category:代理軟體](https://zh.wikipedia.org/wiki/Category:代理軟體 "wikilink") [Category:翻墙软件](https://zh.wikipedia.org/wiki/Category:翻墙软件 "wikilink")