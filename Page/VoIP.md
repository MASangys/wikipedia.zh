[Voip-typical.gif](https://zh.wikipedia.org/wiki/File:Voip-typical.gif "fig:Voip-typical.gif")\]\]
**基于IP的语音传输**（，縮寫：）是一種語音通話技術，經由[网际协议](../Page/网际协议.md "wikilink")（）來達成語音通話與[多媒体會議](../Page/多媒体.md "wikilink")，也就是經由[互联网來進行通訊](../Page/互联网.md "wikilink")。其他非正式的名稱有IP電話（）、互联网電話（）、寬頻電話（）以及寬頻電話服務（）。

VoIP可用于包括、[智能手机](../Page/智能手机.md "wikilink")、个人计算机在内的诸多互联网接入设备，通过[蜂窝网络](../Page/蜂窝网络.md "wikilink")、[Wi-Fi进行通话及发送](../Page/Wi-Fi.md "wikilink")[簡訊](../Page/簡訊.md "wikilink")\[1\]。

## 互聯網電話

[1140E.jpg](https://zh.wikipedia.org/wiki/File:1140E.jpg "fig:1140E.jpg")1140E\]\]

**IP電話**通過把語音信號經過數-{zh-hant:位;zh-hans:字化;}-處理、壓縮編碼打包、透過網路傳輸、然後解壓、把数-{zh-hant:碼;zh-hans:字;}-信號還原成聲音，讓通話對方聽到。話音從源端到達目的端的基本過程是：

1.  聲電轉換：通過[壓電陶瓷等類似裝置將聲波變換為電信號](../Page/壓電陶瓷.md "wikilink")
2.  量化採樣：將模擬電信號按照某種採樣方法（比如[脈衝編碼調制](../Page/脈衝編碼調制.md "wikilink")，即）轉換成[數字信號](../Page/數字信號.md "wikilink")
3.  封包：將一定時長的數字化之後的語音信號組合為一幀，隨後，按照[國際電聯](../Page/國際電聯.md "wikilink")（[國際電信聯盟電信標準化部門](../Page/國際電信聯盟電信標準化部門.md "wikilink")）的標準，這些話音幀被封裝到一個（即[實時傳輸協議](../Page/實時傳輸協議.md "wikilink")，Realtime
    Transport
    Protocol）報文中，並被進一步封裝到[UDP報文和IP報文中](../Page/UDP.md "wikilink")。
4.  傳輸：IP報文在IP網絡由源端傳遞到目的端
5.  去抖動：去除因封包在網路中傳輸速度不均勻所造成的抖動音
6.  拆包
7.  電聲轉換

一個完整的、可以大規模商用運營的IP電話系統包括如下一些技術（暫不完全）：

1.  尋址
2.  話音編解碼
3.  [回聲消除和](../Page/回聲消除.md "wikilink")[回聲抑制](../Page/回聲抑制.md "wikilink")
4.  傳輸
    1.  IP報文時延控制功能
5.  去抖動
    1.  IP報文的去抖動（de-jitter）功能

### 編碼

目前世界多個標準組織和工業實體提出了很多話音編碼方案。其中包括[國際電信聯盟的](../Page/國際電信聯盟.md "wikilink")[G.711](../Page/G.711.md "wikilink")（速率64kbps），G.723.1（速率5.3kbps或者6.3kbps），[G.729A](../Page/G.729.md "wikilink")（速率8kbps）編碼方案。

[微軟](../Page/微軟.md "wikilink")、[Intel等業界巨頭也有自己的編碼方案](../Page/Intel.md "wikilink")。

### 網際協議

目前常用的協定如[H.323](../Page/H.323.md "wikilink")、[SIP](../Page/SIP.md "wikilink")、[MEGACO和](../Page/MEGACO.md "wikilink")[MGCP](../Page/MGCP.md "wikilink")。

#### H.323

[H.323是常見的VoIP標準](../Page/H.323.md "wikilink")，由[ITU-T於](../Page/ITU-T.md "wikilink")1996年提出，原本是用於區域網路（）上的視訊會議，後來被應用於VoIP網路電話上。H.323定義了一個綜合性的規範，使網路上的終端設備遵循這些規範，得以順利進行溝通，包括語音壓縮格式（G.711、G.729、G.723.1）、影像壓縮格式（H.261、H.263）、呼叫信令（H.225）、控制信令（H.245）、註冊與認證等（RAS：Registeration
Admission
Status）。H.323架構由4個元件所組成，包括終端設備（Terminal）、閘道器（Gateway）、閘道管理員（Gatekeeper）、多點控制單元（MCU：Multipoint
Control Unit），可進行單點對單點或單點對多點的通訊。

對於VoIP的應用而言，H.323的子協定多且複雜性高，在許多技術上的問題受限，不容易針對新的應用作擴展。因此，IETF (Internet
Engineering Task Force)分別在1999年8月提出MGCP（Media Gateway Control
Protocol）協定與1999年3月的SIP（Session Initiation
Protocol）新架構，試圖簡化H.323的複雜性，且在語音傳遞功能提供較高的延展性。

#### 其他

**會話發起協議**（SIP）是IETF創建VoIP通話連接的協議標準。SIP是一種應用層控制協議，用於和一個或多個參與者創建、修改和終止會話。SIP的結構與HTTP（客戶－伺服器協議）相似。客戶機發出請求，並發送給伺服器，伺服器處理這些請求後給客戶機回送一個響應。請求與響應形成一次交換（transaction）。

**媒體閘道器控制協議**（MGCP）是由[思科和Telcordia提議的VoIP協議](../Page/思科.md "wikilink")，它定義了呼叫控制單元（呼叫代理或媒體閘道器）與電話閘道器之間的通信服務。MGCP屬於控制協議，允許中心控制台監測IP電話和閘道器事件，並通知它們發送內容至指定地址。在MGCP結構中，智能呼叫控制置於閘道器外部並由呼叫控制單元（呼叫代理）來處理。同時呼叫控制單元互相保持同步，發送一致的命令給閘道器。

**媒體閘道器控制協議**（Megaco）是[IETF和](../Page/IETF.md "wikilink")[ITU-T](../Page/ITU-T.md "wikilink")（ITU-T
[H.248建議](../Page/H.248.md "wikilink")）共同努力的結果。Megaco/H.248是一種用於控制物理上分開的多媒體閘道器的協議單元的協議，從而可以從媒體轉化中分離呼叫控制。Megaco/H.248說明瞭用於轉換電路交換語音到基於包的通信流量的媒體閘道器（MG）和用於規定這種流量的服務邏輯的媒介閘道器控制器之間的聯繫。Megaco/H.248通知媒體閘道器將來自於數據包或單元數據網絡之外的數據流連接到數據包或單元數據流上，如實時傳輸協議（RTP）。從VoIP結構和閘道器控制的關係來看，Megaco/H.248與MGCP在本質上相當相似，但是Megaco/H.248支持更廣泛的網絡，如[ATM](../Page/異步傳輸模式.md "wikilink")。

## 無線通話

目前主要運用[Wi-Fi技術](../Page/Wi-Fi.md "wikilink")。由於目前鋪設Wi-Fi[熱點](../Page/熱點.md "wikilink")（Access
Point）尚未普及，只有核心[都市有較高的人口覆蓋率](../Page/都市.md "wikilink")，又此技術所涵蓋的區域屬於小範圍，只要一遠離熱點，訊號就逐漸衰弱甚至斷線，必須重新連線。對經常移動的使用者來說是很大的麻煩。較適合於固定地點，如家中，企業，[咖啡店等長時間停留處運用](../Page/咖啡店.md "wikilink")。

無線[網路卡或無線裝置約](../Page/網路卡.md "wikilink")12[mW](../Page/mW.md "wikilink")（10.8[dbm](../Page/dbm.md "wikilink")）到100mW（20dbm）。一般來說，配備Wi-Fi功能的[筆記型電腦](../Page/筆記型電腦.md "wikilink")，在使用[802.11的標準下](../Page/802.11.md "wikilink")，其發射功率均低於一百毫瓦（100mW），這是一般[行動電話發射功率兩瓦的二十分之一](../Page/行動電話.md "wikilink")。

近來有一新技術[WiMax](../Page/WiMax.md "wikilink")，它是一種廣域的無線技術，採用與Wi-Fi相近的技術，並將之優化，具有高[頻寬](../Page/頻寬.md "wikilink")、大範圍和低成本等特性，未來可望會應用到無線網路電話上。

## 發展与政治

目前[大中華地區當中](../Page/大中華地區.md "wikilink")，以[香港的應用層面較大](../Page/香港.md "wikilink")。早在1990年代中期，不少大型公司（如[軒尼詩](../Page/軒尼詩.md "wikilink")、[LVMH及](../Page/LVMH.md "wikilink")[帝亞吉歐](../Page/帝亞吉歐.md "wikilink")）就透過IP電話技術，為海外分公司提供直線電話接往公司的總部。其後，在[長途電話割喉戰中](../Page/長途電話.md "wikilink")，IP電話亦開始應用，以保證當[衛星訊號受到干擾時](../Page/人造衛星.md "wikilink")，仍然可以提供可靠的通訊。早期的IP電話由於頻寬問題，會使通訊出現很嚴重的機械聲音，但現在已經不再出現。而當通訊割喉戰蔓延至[固網通訊時](../Page/固網.md "wikilink")，IP電話亦使擁有寬頻網絡的供應商取得優勢。現時在香港提供IP電話服務的，長途電話方面，以[香港寬頻網絡有限公司最早](../Page/香港寬頻網絡有限公司.md "wikilink")，期後有提供IDD009服務的[新世界電訊](../Page/新世界電訊.md "wikilink")。而本地固網通訊方面，最先推出這種服務的[香港寬頻](../Page/香港寬頻.md "wikilink")、透過視像電話提供服務的[和記環球電訊](../Page/和記環球電訊.md "wikilink")、租借同屬[九龍倉集團的](../Page/九龍倉集團.md "wikilink")[i-CABLE有線寬頻網絡提供服務的](../Page/有線寬頻.md "wikilink")[九倉電訊](../Page/九倉電訊.md "wikilink")，以及利用軟件技術提供服務的[新世界電訊](../Page/新世界電訊.md "wikilink")，在2009年1月[電訊盈科也推出](../Page/電訊盈科.md "wikilink")「0060
Everywhere」來迎接VOIP的市場。

2005年，隨着[Skype開始在大中華地區發展](../Page/Skype.md "wikilink")，它亦與當地的固網商合作，希望開拓更大的市場。當中在香港，它與[和記黃埔合作](../Page/和記黃埔.md "wikilink")，並為Skype的用戶提供固網電話號碼；而在[中國大陸則與](../Page/中國大陸.md "wikilink")[光明方正公司合作](../Page/光明方正.md "wikilink")，在[台灣則與](../Page/台灣.md "wikilink")[PChome
Online](../Page/PChome_Online.md "wikilink")（網路家庭國際資訊股份有限公司）合作。

目前，[台灣的檢警人員仍然對IP電話存有高度疑慮](../Page/台灣.md "wikilink")，理由是：第一，IP電話難以監聽的特性，很可能使IP電話成為[犯罪集團](../Page/犯罪.md "wikilink")（尤其是[詐騙集團](../Page/詐騙.md "wikilink")）的犯罪工具，而增加檢警人員偵辦犯罪的難度；雖然可以追查發話者的IP位址，但是很多[代理伺服器設置在境外](../Page/代理伺服器.md "wikilink")，因此很難防範IP電話犯罪。第二，國外某些電信業者直接提供改變發話號碼的服務，其用途是提供發話者必須保密電話號碼時使用，但也可能成為犯罪集團的工具；某些非法的IP電話軟體或國際電話節費器，也能改變發話號碼。

## 商業服务

谷歌在Gmail增加了网络电话功能，电话功能键位于[Gmail页面左下方](../Page/Gmail.md "wikilink")，其界面非常类似GoogleVoice。功能有转录声音邮件、用一个电话号码同时拨打多个电话等，每個用户可直接从电子邮件中打电话，在不久还可能实现免费打电话。电话服务首日呼叫次数突破百万。

## 相關條目

  - [Skype](../Page/Skype.md "wikilink")

  - [TeamSpeak](../Page/TeamSpeak.md "wikilink")

  - [UUCall](../Page/UUCall.md "wikilink")

  - [Vbuzzer](../Page/Vbuzzer.md "wikilink")

  -
  - [Viber](../Page/Viber.md "wikilink")

  - [Vonage](../Page/Vonage.md "wikilink")

  - [TeamViewer](../Page/TeamViewer.md "wikilink")

## 注釋

## 外部链接

  - [VoIP讲解](http://www.tutorial-reports.com/internet/telephony/voip/)全面描述如何使用VoIP電話，包括技术、要求、设定VoIP、使用[公用电话交换网线和](../Page/公共交换电话网.md "wikilink")[带宽问题](../Page/带宽.md "wikilink")。
  - [關於VoIP協議的資訊](http://www.en.voipforo.com)
  - [T stone - p2p serverless VOIP Instant Messenger Pone Calls for
    H.323. & SIP](http://tstone.sf.net)
  - [Zfone是一種新的VoIP電話安全軟體](http://zfoneproject.com/)
  - [中港VoIP電話系統技術討論](http://www.hk-matrix.com/com/index.php/blog-2/)
  - [uucall网络电话](http://www.uucall.com)
  - [Rebtel网络电话](http://www.renrencall.com)

[Category:VoIP](https://zh.wikipedia.org/wiki/Category:VoIP "wikilink")
[Category:寬頻](https://zh.wikipedia.org/wiki/Category:寬頻 "wikilink")
[Category:视频通讯](https://zh.wikipedia.org/wiki/Category:视频通讯 "wikilink")

1.