[DVB-logo.gif](https://zh.wikipedia.org/wiki/File:DVB-logo.gif "fig:DVB-logo.gif")  **數位視訊廣播**（，縮寫：），是由[DVB Project维护的一系列為国际所承认的](https://zh.wikipedia.org/wiki/DVB_Project "wikilink")[數位電視公开标准](https://zh.wikipedia.org/wiki/數位電視 "wikilink")。[DVB Project是一个由](https://zh.wikipedia.org/wiki/DVB_Project "wikilink")300多个成员组成的工业组织，它是由[欧洲电信标准化组织](../Page/欧洲电信标准协会.md "wikilink")（European Telecommunications Standards Institute, ETSI）、[欧洲电子标准化组织](https://zh.wikipedia.org/wiki/欧洲电子标准化组织 "wikilink")（European Committee for Electrotechnical Standardization, CENELEC）和[欧洲广播联盟](https://zh.wikipedia.org/wiki/欧洲广播联盟 "wikilink")（European Broadcasting Union, EBU）联合组成的“联合专家组”（Joint Technical Committee, JTC）发起的。几项DVB子标准的关系在《DVB指南》（*DVB-Cook*）中描述之。

## 传输

DVB系统传输方式有如下几种：

  - [卫星電視](https://zh.wikipedia.org/wiki/卫星電視 "wikilink")（[DVB-S](https://zh.wikipedia.org/wiki/DVB-S "wikilink")，[DVB-S2及](https://zh.wikipedia.org/wiki/DVB-S2 "wikilink")[DVB-S2X](https://zh.wikipedia.org/wiki/DVB-S2X "wikilink")）
  - [有線電視](https://zh.wikipedia.org/wiki/有線電視 "wikilink")（[DVB-C及](https://zh.wikipedia.org/wiki/DVB-C "wikilink")[DVB-C2](https://zh.wikipedia.org/wiki/DVB-C2 "wikilink")）
  - [地面電視](../Page/地面電視.md "wikilink")（[DVB-T](../Page/DVB-T.md "wikilink")及[DVB-T2](https://zh.wikipedia.org/wiki/DVB-T2 "wikilink")）
  - [行動電視](https://zh.wikipedia.org/wiki/DVB-H "wikilink")（[DVB-H](https://zh.wikipedia.org/wiki/DVB-H "wikilink")，[DVB-NGH及](https://zh.wikipedia.org/wiki/DVB-NGH "wikilink")[DVB-SH](https://zh.wikipedia.org/wiki/DVB-SH "wikilink")）

这些标准定义了传输系统的物理层与数据链路层。设备通过同步并行接口（synchronous parallel interface, SPI），同步串行接口（synchronous serial interface, SSI），或异步串行接口（asynchronous serial interface, ASI）与物理层交互。数据以[MPEG](../Page/MPEG.md "wikilink")-2传输流的方式传输，并要求符合更严格的限制（DVB-MPEG）。对移动终端即时压缩传输数据的标准（DVB-H）目前正处于测试之中。

这些传输方式的主要区别在于使用的调制方式，因为不同它们应用的频率带宽的要求不同。利用高频载波的DVB-S使用[QPSK调制方式](https://zh.wikipedia.org/wiki/QPSK "wikilink")，利用低频载波的DVB-C使用[QAM](https://zh.wikipedia.org/wiki/QAM "wikilink")-64调制方式，而利用[VHF及](https://zh.wikipedia.org/wiki/VHF "wikilink")[UHF载波的DVB](https://zh.wikipedia.org/wiki/UHF "wikilink")-T使用[COFDM调制方式](https://zh.wikipedia.org/wiki/COFDM "wikilink")。

## 内容

除音频与视频传输外，DVB也定义了带回传通道（DVB-RC）的数据通信标准（DVB-DATA）。它-{zh-hans:支持; zh-hant:支援;}-几种媒介，包括 [DECT](https://zh.wikipedia.org/wiki/DECT "wikilink")、[GSM](../Page/GSM.md "wikilink")、[PSTN](https://zh.wikipedia.org/wiki/PSTN "wikilink")、[ISDN等](https://zh.wikipedia.org/wiki/ISDN "wikilink")。也-{zh-hans:支持; zh-hant:支援;}-一些协议，包括（DVB-IPI: [Internet Protocol](https://zh.wikipedia.org/wiki/Internet_Protocol "wikilink")，DVB-NPI: network protocol independent）.

为使升级更方便，DVB标准也-{zh-hans:支持; zh-hant:支援;}-以往的技术，例如[图文信息](https://zh.wikipedia.org/wiki/图文信息 "wikilink")（DVB-TXT）、（DVB-VBI）数据。但DVB提供了替代的技术，例如DVB-SUB。

## 加密与描述信息

[条件接收系统](https://zh.wikipedia.org/wiki/条件接收 "wikilink")（DVB-CA）定义了通用加扰算法（DVB-CSA）和获取加扰内容的通用接口（DVB-CI）。DVB系统提供商根据这些标准开发各自的条件接收系统。DVB系统传送被称为SI（DVB-SI）的描述信息，它们描述了不同的基础流（elementary streams）如何组成节目，并对[电子节目指南提供了描述](https://zh.wikipedia.org/wiki/电子节目指南 "wikilink")。

## 软件平台

DVB多媒体家庭平台（DVB-MHP）定义了一个基于[Java](../Page/Java.md "wikilink")语言的平台，用于-{zh-hans:支持; zh-hant:支援;}-視訊系统应用。它提供了对众多DVB及MPEG-2概念的抽象，另外还-{zh-hans:支持; zh-hant:支援;}-其他一些特性，如网卡控制，应用下载，分层图像显示等。

## 回传通道

DVB在DVB-S/T/C基础上标准化了一系列回传通道，用于建立双向通信。其中的[卫星回传通道](../Page/人造衛星.md "wikilink")（Return Channel Satellite, RCS）定义了在C-(3.4\~4.2Ghz),Ku(10.7\~12.75Ghz)-和Ka（18\~22Ghz）波段的回传通道，其带宽可以达到最多2 Mbit/s。

## 應用

[Digital_broadcast_standards.svg](https://zh.wikipedia.org/wiki/File:Digital_broadcast_standards.svg "fig:Digital_broadcast_standards.svg")

DVB-S和DVB-C在1994年发布。DVB-T在1997年发布。第一个商用的DVB-T广播系统是由英国的Digital Terrestrial Group（DTG）在1998年建立的。在2003年，[德国](../Page/德国.md "wikilink")[柏林](../Page/柏林.md "wikilink")成为第一个彻底停播模拟电视信号的地区。许多欧洲国家准备在2010年停播[PAL](https://zh.wikipedia.org/wiki/PAL "wikilink")／[SECAM](https://zh.wikipedia.org/wiki/SECAM "wikilink")，实现全面数字电视化。

### 全球各地区的情况

在其发源地欧洲，以及在[澳大利亚](../Page/澳大利亚.md "wikilink")、[南非和](https://zh.wikipedia.org/wiki/南非 "wikilink")[印度](../Page/印度.md "wikilink")，DVB已经或正在普及。在多数的[亚洲](../Page/亚洲.md "wikilink")、[非洲](../Page/非洲.md "wikilink")及[南美国家](https://zh.wikipedia.org/wiki/南美 "wikilink")，有线和卫星采用了DVB标准。除南美国家尚未确定地面广播标准（DTTV）外，其余国家已确定採用DVB-T标准\[1\]。

  -

采用DVB的替代标准：[ATSC](../Page/ATSC.md "wikilink")标准。

  -
除[Sky PerfecTV\!公司外](https://zh.wikipedia.org/wiki/Sky_PerfecTV! "wikilink")，其它的都采用了由[電波產業會](https://zh.wikipedia.org/wiki/電波產業會 "wikilink")（ARIB）自行研发的日本数字电视标准[ISDB](../Page/ISDB.md "wikilink")（Integrated Services Digital Broadcasting）。ISDB是DVB的改良型标准，除了日本，在[日裔人士眾多的](https://zh.wikipedia.org/wiki/日裔 "wikilink")[拉丁美洲](../Page/拉丁美洲.md "wikilink")大多數國家也採用。\[2\]。Sky PerfecTV\!是一家卫星供应商，利用卫星提供DVB业务。

  -    （北美地区）

使用DVB-S作为卫星传输的标准，有线也大规模采用DVB标准。不过地面数字电视广播采用[8VSB调制的](https://zh.wikipedia.org/wiki/8VSB "wikilink")[ATSC](../Page/ATSC.md "wikilink")标准。並於2012年7月起停播類比電視頻道。

  - （[臺灣](../Page/臺灣.md "wikilink")）

在臺湾，原本地面數位電視廣播是由[交通部指定採用](../Page/中華民國交通部.md "wikilink")[8VSB調變的](https://zh.wikipedia.org/wiki/8VSB "wikilink")[ATSC](../Page/ATSC.md "wikilink")標準，但是在進行一段時間的試播之後，由於效果未達預期，各家電視公司均要求改採歐洲的DVB標準；因此交通部決定從原本的指定採用ATSC改為不強制指定，直接交由電視公司自行決定到底要採行何種標準。由各家無線電視公司所組成的[中華民國電視學會](../Page/中華民國電視學會.md "wikilink")隨即開會決定改以[DVB-T](../Page/DVB-T.md "wikilink")為標準，並於2004年6月1日起開播15個[數位電視頻道](https://zh.wikipedia.org/wiki/數位電視 "wikilink")。目前播放有22個頻道，包含[480i標準解析度內容](https://zh.wikipedia.org/wiki/480i "wikilink")，及[1080i高畫質節目](https://zh.wikipedia.org/wiki/1080i "wikilink")。2008年2月起臺灣[公共電視台於臺北縣](https://zh.wikipedia.org/wiki/公共電視台 "wikilink")（今[新北市](https://zh.wikipedia.org/wiki/新北市 "wikilink")）萬-{里}-轉播站開始進行[HDTV的試驗播出](https://zh.wikipedia.org/wiki/HDTV "wikilink")，採用[H.264作為其影像](https://zh.wikipedia.org/wiki/H.264 "wikilink")、[HE-AAC作為其聲音壓縮格式](https://zh.wikipedia.org/wiki/HE-AAC "wikilink")；原預計於2010年全面停止類比地面電視播映\[3\]，但因臺灣的[有線電視普及率極高](https://zh.wikipedia.org/wiki/有線電視 "wikilink")（達80%），且有線電視節目內容較為豐富，導致收視戶加裝數位機上盒或更換內建數位接收功能電視機的意願低落，而延至2012年6月30日停止地上波類比電視播映。[國家通訊傳播委員會並編列預算優先提供全國](https://zh.wikipedia.org/wiki/國家通訊傳播委員會 "wikilink")12萬低收入戶免費提供每戶一個數位機上盒，以期望在停播類比電視前增加數位電視普及率\[4\]。

  -
中国大陆有线供应商一般都采用DVB-C制式。卫星电视方面，除[中星九号传输的频道使用中国的ABS](https://zh.wikipedia.org/wiki/中星九号 "wikilink")-S制式外，中国大陆的卫星电视频道均以DVB-S传输。至于地面电视，则采用中国自主研发的[DMB-T/H](https://zh.wikipedia.org/wiki/DMB-T/H "wikilink")（或称DTMB）制式。

  -
[香港](../Page/香港.md "wikilink")的多家收費電視台，如[無綫收費電視](https://zh.wikipedia.org/wiki/無綫收費電視 "wikilink")、[香港有線電視](../Page/香港有線電視.md "wikilink")已經分別採用DVB-S和DVB-C標準作廣播。而地面廣播方面，香港政府已決定於2007年開始數碼電視廣播，制式由兩家電視台：[無綫電視和](../Page/電視廣播有限公司.md "wikilink")[亞洲電視](../Page/亞洲電視.md "wikilink")自行決定。兩家電視台原定計劃，如中國大陸於2006年年中仍未決定使用何種制式，兩家電視台將以DVB-T作廣播。初時無綫電視表示對此仍未有最終決定，但表明傾向採用發展較成熟歐洲DVB制式\[5\]，只有亞洲電視表明堅決採用中國內地制式。2006年10月19日無綫電視宣佈和亞洲電視「已達成共識」，選用中國內地制式[DMB-T/H](https://zh.wikipedia.org/wiki/DMB-T/H "wikilink")，惟[電子節目指南和](https://zh.wikipedia.org/wiki/電子節目指南 "wikilink")[字幕](../Page/字幕.md "wikilink")系統仍然使用DVB技術（分別為DVB-IS和DVB-SUB），另外無綫在2007年11月28日宣佈採用歐洲制式DVB-T標準中的互動功能中間件──[MHEG-5](../Page/MHEG-5.md "wikilink")作為其互動服務（無綫稱為「TVB互動功能」（TVB Interactive）\[6\]）的技術標準\[7\]。

  -
[澳門](../Page/澳門.md "wikilink")的收費電視台，[澳門有線電視](../Page/澳門有線電視.md "wikilink")股份有限公司已經採用DVB（MPEG-2）作廣播。但地面電視廣播方面跟中国大陆一样采用[DMB-T/H标准](https://zh.wikipedia.org/wiki/DMB-T/H "wikilink")。\[8\]

  -
[泰國於](https://zh.wikipedia.org/wiki/泰國 "wikilink")2014年開播地面無線數位電視，系統規格採用DVB-T2，六個電視頻道，但DVB-T2讓觀眾可收看多達48個免費電視台節目。其中公眾商業台有24台，政府商業台有12台，以及12個地方社區電視台，其中有10個電視台節目為HD高畫質節目。

## 参考

  - [數位電視](https://zh.wikipedia.org/wiki/數位電視 "wikilink")
  - [SDTV](https://zh.wikipedia.org/wiki/SDTV "wikilink")，[EDTV](https://zh.wikipedia.org/wiki/EDTV "wikilink")，[HDTV](https://zh.wikipedia.org/wiki/HDTV "wikilink")
  - [DVB-S2](https://zh.wikipedia.org/wiki/DVB-S2 "wikilink")
  - [ATSC](../Page/ATSC.md "wikilink")，[ISDB](../Page/ISDB.md "wikilink")，[DMB-T/H](https://zh.wikipedia.org/wiki/DMB-T/H "wikilink")
  - [DAB](https://zh.wikipedia.org/wiki/DAB "wikilink")
  - [OpenCable](https://zh.wikipedia.org/wiki/OpenCable "wikilink")
  - [Authorized Domain](https://zh.wikipedia.org/wiki/Authorized_Domain "wikilink")

## 注释

<references />

## 外部链接

  - [DVB Project](http://www.dvb.org/)

  - [Mediacast Trade Fair](http://www.mediacast.net)。

  - [War of the standards](http://news.bbc.co.uk/2/hi/technology/4278567.stm)

[Category:數碼電視](https://zh.wikipedia.org/wiki/Category:數碼電視 "wikilink") [Category:高清晰度电视](https://zh.wikipedia.org/wiki/Category:高清晰度电视 "wikilink") [Category:公開標準](https://zh.wikipedia.org/wiki/Category:公開標準 "wikilink")

1.  [DVB-T Worldwide - DVB-T Status Overview](http://www.dvb.org/about_dvb/dvb_worldwide/index.xml)
2.  [社团法人台湾数位电视协会──DVB小百科](http://www.dtvc.org.tw/2-1.htm)
3.
4.
5.  數碼廣播寧取歐制式, 2006-11-16,星島日報, A10,港聞
6.  [標誌圖像](http://www.tvb.com/affairs/faq/press/images/TVB_Interactive_logo.jpg)
7.  [要享受TVB互動功能服務MHEG-5中間件為必然之選](http://www.tvb.com/affairs/faq/press/20071128.html)
8.