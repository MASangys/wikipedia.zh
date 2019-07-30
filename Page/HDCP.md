**高清數位内容保护**（**HDCP**，**High-Bandwidth Digital Content Protection**），是由[英特爾公司所發展](https://zh.wikipedia.org/wiki/英特爾 "wikilink")，用以確保[數位化的](https://zh.wikipedia.org/wiki/數位 "wikilink")[影像與](https://zh.wikipedia.org/wiki/影像 "wikilink")[聲音資料在透過](https://zh.wikipedia.org/wiki/聲音 "wikilink")[DVI](../Page/DVI.md "wikilink")或[HDMI](../Page/HDMI.md "wikilink")介面傳送時不至於遭到非法[拷貝](https://zh.wikipedia.org/wiki/拷貝 "wikilink")。HDCP的規格受到多項[專利權保護](https://zh.wikipedia.org/wiki/專利權 "wikilink")，任何人-{欲}-實作HDCP必須申請[授權](https://zh.wikipedia.org/wiki/授權 "wikilink")。

HDCP的授權管理是由[英特爾的](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[子公司](../Page/子公司.md "wikilink")「[數位內容保護公司](https://zh.wikipedia.org/wiki/數位內容保護公司 "wikilink")」（Digital Content Protection, LLC）負責。除了交付授權金之外，生產HDCP相容設備的廠商必須限制其產品功能，例如[高清畫面](https://zh.wikipedia.org/wiki/高清 "wikilink")（[解析度超過](https://zh.wikipedia.org/wiki/解析度 "wikilink")[480p者](https://zh.wikipedia.org/wiki/480p "wikilink")）在透過產品上不支援HDCP的介面播放時必須支援碟片需求將解析度降至480p，而[DVD聲訊在透過不支援HDCP的介面時必須被強制降到](https://zh.wikipedia.org/wiki/DVD "wikilink")[DAT等級的](https://zh.wikipedia.org/wiki/DAT "wikilink")[類比](../Page/類比.md "wikilink")輸出。所有支援HDCP的影音播放設備都不得支援數位資料直接拷貝功能，並且必須「將其產品設計到足以打消大多數[破解者的念頭](https://zh.wikipedia.org/wiki/破解 "wikilink")」。

基本來說，欲播放有HDCP保護的影音內容如[HD DVD](../Page/HD_DVD.md "wikilink")、[Blu-ray Disc](https://zh.wikipedia.org/wiki/Blu-ray_Disc "wikilink")、[PlayStation 3遊戲](../Page/PlayStation_3.md "wikilink")（透過[HDMI](../Page/HDMI.md "wikilink")輸出時），訊號來源（[播放機或](https://zh.wikipedia.org/wiki/播放機 "wikilink")[電腦的](https://zh.wikipedia.org/wiki/電腦 "wikilink")[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")）和显示器雙方都必须內建HDCP[密钥](../Page/密钥.md "wikilink")[晶片才能正常播放](https://zh.wikipedia.org/wiki/晶片 "wikilink")。若系统任何一者不配備此密匙晶片，影像畫素有可能降低，甚至不能播放影像。現時某些顯示卡已內建HDCP晶片，有限度支持HDMI輸出。

## 規格

HDCP的主要目標是防止未加密的高解析度影音內容被傳送出去。為此HDCP當中設計了三套系統以達成此目標：

1.  一個驗證流程以防止未經授權的裝置接收到高解析度內容。
2.  將通過DVI與HDMI介面的資料加密以防止資料被竊聽。並同時防止「中介者」破解法。
3.  一個金鑰撤銷機制，以確保任何違反HDCP協定的裝置可以相對容易的被排除。

所有支援HDCP的裝置都有一組獨特的金鑰：一個金鑰組含有40把56bits長度的金鑰，如廠商將其外流將被視為違反HDCP授權協定。此外每一個金鑰組都還會附帶一組特別的金鑰稱為KSV（Key Selection Vector）。KSV內容有40bits且其中0與1各佔20bits。

在驗證流程中播放與顯示兩側將交換其KSV，雙方將收到對方的KSV中為1的bit欄位所指向的金鑰做加總取得一個56bits的共同金鑰；金鑰組與KSV的生成過程將確保雙方驗證的結果可得到同一組56bits金鑰。

加密過程是以[串流方式進行](https://zh.wikipedia.org/wiki/串流媒體 "wikilink")。每個[像素](../Page/像素.md "wikilink")資料都會和金鑰所推導出的24bits整數作[XOR運算](https://zh.wikipedia.org/wiki/對稱差 "wikilink")，且每一個frame都會再產生不同的金鑰。

如果某些特定的機器被認為遭到破解，其KSV參數將被放入[黑名單](../Page/黑名單.md "wikilink")當中，並透過新發售的碟片或作業系統更新而散出。黑名單必須經過HDCP驗證管理中心[電子簽章](https://zh.wikipedia.org/wiki/電子簽章 "wikilink")，以確保不會有人惡意干擾其他合法機器的運作。如果接收端的KSV被傳送端發現處於黑名單中。傳送端將會拒絕傳送內容。

## 收費

廠商每年要向Digital HDCP委员会支付15000美元的年费。 除此之外，向HDCP委员会购买key，则要支付key的费用，Key的费用依据每单购买的数量不同，而不同（买的越多越便宜）：

  - 一次性购买1万个key，收费1000美元。
  - 一次性购买10万个key，收费2500美元。
  - 一次性购买100万个key，收费5000美元。

## 密碼破解

密碼破解專家們於2001年首度公開了HDCP協定中的數個嚴重漏洞（當時尚未有任何HDCP產品上市）。來自[卡內基美隆大學的Scott](https://zh.wikipedia.org/wiki/卡內基美隆大學 "wikilink") Crosby、Ian Goldberg、Robert Johnson、Dawn Song與David Wagner 等人共同在2001年11月5日ACM-CCS8大會數位內容管理小組中發表了一篇論文名為《A Cryptanalysis of the High-bandwidth Digital Content Protection System》\[1\]，該論文摘要如下：

在大約同時間，密碼學家Niels Ferguson也宣布破解了HDCP，但是他並未公開其研究結果，因為擔憂公開之後隨之而來的法律問題。最為人所知的HDCP破解方法是「conspiracy attack」，將一定數量的HDCP裝置破解並收集其資訊後，理論上可破解出HDCP授權中心的私鑰。

2010年9月13日，一組主密鑰被署名Intel Global PR之Twitter帳戶貼在網路上\[2\]\[3\]，並於數日後被[Intel官方證實](https://zh.wikipedia.org/wiki/Intel "wikilink")\[4\]，这也就意味着数百万蓝光光盘、播放器等设备的保护盾已经在瞬间土崩瓦解，所有蓝光光盘都可以自由解锁、复制。

雖然Intel方面威脅要起訴任何非法設備\[5\]，但是已經有號稱可錄製高畫質HDCP影像之擷取裝置開始銷售。

## 用途

  - [HD DVD與](../Page/HD_DVD.md "wikilink")[Blu-ray Disc播放機可接受影音光碟片上的](https://zh.wikipedia.org/wiki/Blu-ray_Disc "wikilink")「[影像限制符碼](https://zh.wikipedia.org/wiki/影像限制符碼 "wikilink")」（Image Constraint Token；ICT），並且依據其內容決定是否要將傳送內容以HDCP協定加密。如果此類播放機被連接到不支援HDCP的[電視機](https://zh.wikipedia.org/wiki/電視機 "wikilink")，且光碟片的ICT標註此內容應經HDCP加密，則播放機會強制把輸出畫面降低解析度至960x540像素（扣除[NTSC](https://zh.wikipedia.org/wiki/NTSC "wikilink") Overscan範圍之後，即為720x480像素的DVD解析度）。目前可接受[HDTV訊號的電視機並不一定支援HDCP](https://zh.wikipedia.org/wiki/HDTV "wikilink")，使得HD DVD與Blu-ray Disc對此類電視的擁有者吸引力大減。為此，電影製作公司在現階段同意暫時不在任何HDDVD或BD影片上面加上ICT，直至2011年\[6\] \[7\]。

<!-- end list -->

  - 2004年8月4日，[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[聯邦通訊委員會](https://zh.wikipedia.org/wiki/聯邦通訊委員會 "wikilink")（FCC）無視於HDCP已知缺陷，批准HDCP為一個標準的「數位輸出保護技術」\[8\]。在FCC的數位廣播[旗標規範當中規定](https://zh.wikipedia.org/wiki/旗標 "wikilink")，所有的[HDTV廣播信號解碼器必須包含數位輸出保護技術](https://zh.wikipedia.org/wiki/HDTV "wikilink")（該規範已被美國[哥倫比亞特區上訴法庭裁定為違法](https://zh.wikipedia.org/wiki/哥倫比亞特區 "wikilink")）。[美國國會仍在考慮類似於FCC數位廣播旗標規範的相關法案](https://zh.wikipedia.org/wiki/美國國會 "wikilink")。

<!-- end list -->

  - 2005年1月19日，[歐洲資訊通訊技術協會](https://zh.wikipedia.org/wiki/歐洲資訊通訊技術協會 "wikilink")（EICTA）宣告，支援HDCP為其[HD ready商標的取得要件之一](../Page/HD_ready.md "wikilink")\[9\]。

<!-- end list -->

  - [微軟已經宣告它的次世代作業系統](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows Vista將會在螢幕與顯示卡相關軟體元件中支援HDCP技術](../Page/Windows_Vista.md "wikilink")\[10\]。

## 另見

  - [數位版權管理](https://zh.wikipedia.org/wiki/數位版權管理 "wikilink")（[DRM](https://zh.wikipedia.org/wiki/DRM "wikilink")）
  - [AACS](../Page/AACS.md "wikilink")

## 參考資料

<div class="references-small">

<references />

</div>

## 外部連結

  - [數位內容保護公司](http://www.digital-cp.com/)

  - [HDCP specification](http://www.digital-cp.com/home/HDCPSpecificationRev1_1.pdf)（[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")）

  - [HDCP](http://www.theprojectorpros.com/learn.php?p=theater_hdcp) HDCP Encoding and Decoding - What Does This Mean to You? (theprojectorpros.com)

  - [DVI HDCP and DVI MAGIC](http://www.immateriblog.de/archives/000242.html) Compatibility-enhancement devices for non-HDCP monitors [1](http://www.engadget.com/entry/1234000727051424/)

  - [Windows Vista and HDCP](http://arstechnica.com/articles/paedia/hardware/hdcp-vista.ars) How Windows Vista will handle HDCP and Hi-Def output.

  - Current hardware incompatible: [HDCP: The nightmare on computer graphic cards and monitors (2006-01-06)](http://www.behardware.com/articles/603-1/hdcp-the-graphic-card-and-monitor-nightmare.html)

  - All ATI and nVidia cards announced un-supportive of HDCP: [2](http://www.firingsquad.com/hardware/ati_nvidia_hdcp_support/)

  - [Lack of Consumer Understanding about HDTV and HDCP](http://www.drmblog.com/index.php?/archives/80_DTV_+_HDTV_+_HDMI_+_HDCP_+_DVI__BAD_DRM.html)

  - [A Cryptanalysis of HDCP](http://citeseer.ist.psu.edu/cache/papers/cs/25911/http:zSzzSzwww.cs.berkeley.eduzSz~dawzSzpaperszSzhdcp-drm01.pdf/a-cryptanalysis-of-the.pdf)

  - \[<http://www.freedom-to-tinker.com/?p=1005>\! Prof. Ed Felten's description of the conspiracy attack\]

  - [An example of the HDCP conspiracy attack](http://www.grack.com/programming/misc/HDCPConspiracyAttack.html)

[Category:電視技術](https://zh.wikipedia.org/wiki/Category:電視技術 "wikilink") [Category:影片和電影技術](https://zh.wikipedia.org/wiki/Category:影片和電影技術 "wikilink")

1.
2.  <http://twitter.com/intelglobalpr>
3.  <http://pastebin.com/kqD56TmU>
4.  <http://www.foxnews.com/scitech/2010/09/16/intel-confirms-hdtv-code-cracked>
5.  <http://www.wired.com/threatlevel/2010/09/intel-threatens-consumers/>
6.
7.
8.
9.
10.