**DTMB**（[GB](https://zh.wikipedia.org/wiki/中華人民共和國國家標準 "wikilink")
20600-2006，全称 Digital Terrestrial Multimedia
Broadcast，即**地面數位多媒體廣播**），原名**DMB-T/H**（Digital
Multimedia
Broadcast-Terrestrial/Handheld，即**數位多媒體廣播-地面/手持**），是中國數碼[影像廣播標準](https://zh.wikipedia.org/wiki/影像 "wikilink")，由[中華人民共和國制定有關](https://zh.wikipedia.org/wiki/中華人民共和國 "wikilink")[數位電視和流動](https://zh.wikipedia.org/wiki/數位電視 "wikilink")[數位廣播的制式](https://zh.wikipedia.org/wiki/數位廣播 "wikilink")。該制式將會服務中國一半的電視觀眾，尤其在[郊區和](../Page/郊區.md "wikilink")[農村地區](https://zh.wikipedia.org/wiki/农村 "wikilink")。DTMB現時為中國大陸、[香港](../Page/香港.md "wikilink")、[澳門和](../Page/澳門.md "wikilink")[古巴採用](../Page/古巴.md "wikilink")。

DTMB有多重（簡稱「多載波」）與單一副載波（簡稱「單載波」）兩種模式\[1\]；香港和澳門使用多載波模式，中國大陸則兩種皆有使用。此外DTMB只制定了資料傳送標準為[MPEG-TS](https://zh.wikipedia.org/wiki/MPEG-TS "wikilink")，但沒有規定廣播串流[編碼制式](https://zh.wikipedia.org/wiki/編碼 "wikilink")。以香港為例，2012年10月28日前同步廣播頻道及新頻道曾經分別使用[MPEG-2
Part
2和](../Page/MPEG-2.md "wikilink")[H.264作為廣播的](https://zh.wikipedia.org/wiki/H.264 "wikilink")[影像編碼](https://zh.wikipedia.org/wiki/视频编码 "wikilink")，但現時所有數碼廣播頻道都已經使用[H.264廣播](https://zh.wikipedia.org/wiki/H.264 "wikilink")；聲音編碼則可從[AC3](https://zh.wikipedia.org/wiki/AC3 "wikilink")、[MP2以及](../Page/MPEG-1_Audio_Layer_II.md "wikilink")[DRA之間選擇](https://zh.wikipedia.org/wiki/DRA "wikilink")\[2\]。中國大陸则推行[AVS及其升级版本AVS](../Page/AVS.md "wikilink")+為影像編碼標準，但也有使用MPEG-2者；音频标准一般采用DRA，也有少部分地区使用AC3或者其它音频解码标准\[3\]。

2012年9月至11月，[香港電台曾聯同](../Page/香港電台.md "wikilink")[亞洲電視及](../Page/亞洲電視.md "wikilink")[電視廣播有限公司測試四項新技術](../Page/電視廣播有限公司.md "wikilink")，包括[3D電視傳送](https://zh.wikipedia.org/wiki/3D電視 "wikilink")、PN420傳送、以及[DTMB-A及](https://zh.wikipedia.org/wiki/DTMB-A "wikilink")[E-DTMB](https://zh.wikipedia.org/wiki/E-DTMB "wikilink")\[4\]。

## 歷史

由中國[上海交通大學研發的](https://zh.wikipedia.org/wiki/上海交通大學 "wikilink")[ADTB-T制式和](https://zh.wikipedia.org/wiki/ADTB-T "wikilink")[清華大學](https://zh.wikipedia.org/wiki/清华大学_\(北京\) "wikilink")／北京凌訊華業科技研發的[DMB-T都希望能成為中國所採用的全國制式](https://zh.wikipedia.org/wiki/DMB-T "wikilink")。事實上，中國不少城市在DTMB推出之前，已利用[機頂盒](https://zh.wikipedia.org/wiki/機頂盒 "wikilink")，分別採用ADTB-T、DMB-T和歐洲的[DVB-T制式來進行數位廣播](../Page/DVB-T.md "wikilink")。经过漫长的利益博弈，在没有公开第三方比较测试效果的情况下，DTMB以上兩個制式的简单融合成为最终官方认可的方案。

2001年5月16日，清華大學宣布，該校已提出具有完整自主[知識產權的地面數位多媒體](https://zh.wikipedia.org/wiki/知識產權 "wikilink")／電視廣播傳輸系統，並與[清華同方合作設計專用](https://zh.wikipedia.org/wiki/清華同方 "wikilink")[集成電路](https://zh.wikipedia.org/wiki/集成電路 "wikilink")\[5\]。

2011年12月，DTMB正式成为国际标准。

## 主要技术特点

  - 1 传输效率或频谱效率高

在欧洲[DVB-T中](../Page/DVB-T.md "wikilink")，用于同步和信道估计的导频载波数量占总载波的10%。DTMB的PN序列放在OFDM保护间隔中，既作为帧同步、又作为OFDM的保护间隔。欧洲DVB-T
C-OFDM用10%的子载波传送用于同步和信道估计等的导频信号，同时存在循环前缀的保护间隔，而TDS-OFDM将时间保护间隔同时用于传输信道估计信号，因此DVB-T系统的传输效率只能达到国标DTMB系统的90%。传输效率在多载波技术和单载波技术进行比较时，被认为是多载波技术的弱点，DTMB的核心技术正是针对解决这个问题而开发的。

  - 2 抗多径干扰能力强

多载波系统和单载波系统相比，OFDM系统具有抗多径干扰的能力，抵抗多径干扰的大小相应于其保护间隔的长度。由于国标的时间保护间隔中插入的是已知的（系统同步后）PN序列，在给定信道特性的情况下，PN序列在接收端的信号可以直接算出，并去除。去掉PN序列后的OFDM信号与时间保护间隔为零值填充的OFDM信号等价，而时间保护间隔为零值填充的OFDM与时间保护间隔为周期延拓的OFDM在同样信道下的性能是等价的。而且，在多径延迟超过时间保护间隔的情况下，DTMB仍能工作。TDS-OFDM可以把几个OFDM帧的PN序列联合处理，使抵抗多径干扰的延时长度不受保护间隔长度的限制，而传统的OFDM保护间隔长度设计要求必须大于多径干扰的延时长度。

  - 3 信道估计性能良好

在AWGN信道下，TDS-OFDM的信道估计性能优于C-OFDM。这是由于TDS-OFDM用于信道估计的PN序列具有20dB左右的扩频增益，同时又没有C-OFDM做信道估计时特有的插值误差。尽管DTMB的样机功能还有待改善，但其AWGN信道的测试结果仍优于基于C-OFDM的国内外系统。
对于多径信道，TDS-OFDM的PN序列与多径信道造成的干扰信号是统计正交的。虽然TDS-OFDM信道估计的性能无法在原理上与C-OFDM直接比较，但是它与其他传输系统中采用PN序列进行信道估计的性能相当。

  - 4 适于移动接收

移动接收产生了[多普勒效应和遮挡干扰](../Page/多普勒效应.md "wikilink")，使传输信道具有随时间变化的特性（时变特性）。而需要强调的是任何OFDM系统的信号处理都是基于信道传输特性准时不变的假设（应用[FFT的基本条件](https://zh.wikipedia.org/wiki/FFT "wikilink")），即在一个OFDM符号的时间内，假设信道是不变的，信道的变化被认为是在OFDM符号间发生的。TDS-OFDM的信道估计仅取决于OFDM的当前符号，而C-OFDM的信道估计需要4个连续的OFDM符号。因此，C-OFDM在移动情况下，要考虑4个OFDM符号的信道变化影响，而TDS-OFDM只需考虑1个OFDM符号的信道变化影响。可以看出，DTMB系统比欧洲
DVB-T更适于移动接收。

## 制式使用概況

### 中華人民共和國

中華人民共和國已於2007年8月1日實行該制式，并且在一些城市（如深圳）已经大规模应用。目前中華人民共和國內各地的地面数字电视信号除了有转播部分同时在模拟电视播出的频道，还有一些高清频道。部分城市的公交移动电视频道亦采用此方式。大部分城市使用[AVS或AVS](../Page/AVS.md "wikilink")+格式用作视频编码，也有一些城市使用[H.264或](https://zh.wikipedia.org/wiki/H.264 "wikilink")[MPEG-2格式](../Page/MPEG-2.md "wikilink")。目前中国正在实施“中央广播电视节目无线数字化覆盖工程”，推动包括[央视的](https://zh.wikipedia.org/wiki/央视 "wikilink")12个标清频道（CCTV-1、2、4、7、9\~15、CGTN主频道）在内的电视频道在各地通过地面数字电视系统播出。

在[CMMB](https://zh.wikipedia.org/wiki/CMMB "wikilink")[移动电视退出市场后](../Page/移动电视.md "wikilink")，由于适合移动接收的特性，DTMB也开始占领中国内地的移动电视市场，多个厂家推出了可接收DTMB信号的移动设备。

### 香港

香港在2007年12月31日晚上7時，正式開啟[慈雲山發射站的數碼地面電視信号](https://zh.wikipedia.org/wiki/慈雲山 "wikilink")，覆蓋香港總面積的40至50%，包括港島北部、九龍半島、沙田部分地區、大嶼山東部。而在2008年，[飛鵝山](../Page/飛鵝山.md "wikilink")、[金山](https://zh.wikipedia.org/wiki/金山_\(香港\) "wikilink")、[青山](../Page/青山_\(香港\).md "wikilink")、[九龍坑山和](https://zh.wikipedia.org/wiki/九龍坑山 "wikilink")[南丫島的發射站將會完成興建](../Page/南丫島.md "wikilink")，屆時覆蓋率將會逹75%。在2009至2011年，其餘23個發射站相繼啟用後，數碼地面電視廣播將覆蓋香港99%人口。

在DTMB的基礎上，香港在啟播時選用了[MPEG-2和](../Page/MPEG-2.md "wikilink")[H.264分別作模擬同步播放頻道和新數位頻道的影像編碼](https://zh.wikipedia.org/wiki/H.264 "wikilink")，以[MPEG-1
Audio Layer
II和](../Page/MPEG-1_Audio_Layer_II.md "wikilink")[AC-3作聲音編碼](../Page/杜比数字.md "wikilink")，[字幕系統和](../Page/字幕.md "wikilink")[電子節目指南](https://zh.wikipedia.org/wiki/電子節目指南 "wikilink")（EPG）則採用[DVB制式](../Page/DVB.md "wikilink")\[6\]，互動功能由廣播商自行決定，[電視廣播有限公司選用了](../Page/電視廣播有限公司.md "wikilink")[MHEG-5制式](../Page/MHEG-5.md "wikilink")\[7\]。2012年10月28日起，所有播放頻道均以H.264影像編碼格式廣播\[8\]。

#### 接收儀器

[Basic.jpg](https://zh.wikipedia.org/wiki/File:Basic.jpg "fig:Basic.jpg")
[Receiver2.jpg](https://zh.wikipedia.org/wiki/File:Receiver2.jpg "fig:Receiver2.jpg")
在香港，數碼地面廣播可以外置接收器（[機頂盒](https://zh.wikipedia.org/wiki/機頂盒 "wikilink")）或者一體式電視機（綜合數碼電視機）接收。

接收器分為基本版及升級版，前者僅能接收4條以數碼模式同步廣播的[現有免費頻道](https://zh.wikipedia.org/wiki/香港電視廣播#電視頻道 "wikilink")；後者可接收所有高清電視和標清電視節目頻道，以及提供額外的文字資訊等功能，初時售價為二千多港元或以上，但其後價格下降至最低約700港元。[電訊管理局已提供認證服務](https://zh.wikipedia.org/wiki/電訊管理局 "wikilink")，機頂盒生產商可分別在所屬機頂盒，貼上「基本版接收器」或「升級版接收器」標籤，供消費者識別\[9\]。由於原有的4條同步廣播頻道已經改用H.264編碼格式，所以技術上只能處理以MPEG-2視訊格式編碼頻道的基本版接收器已經無法收看任何香港數碼電視頻道。[通訊事務管理局已將](../Page/通訊事務管理局.md "wikilink")「基本版接收器」從標籤計劃移除，而直至移除之前，仍未有一部合格的基本版接收器推出市面。

不過香港現有建築物的公共天線系統，需要經過微調才能接收數位廣播，否則公共天線使用者將未能接收新的數位廣播頻道\[10\]。

另外，要使用[TVB的互動功能](https://zh.wikipedia.org/wiki/TVB "wikilink")，需要購買符合[MHEG-5標準的中間件規格的解碼器](../Page/MHEG-5.md "wikilink")，TVB亦自行推出了名為「[TVB互動功能](http://www.tvb.com/affairs/faq/press/images/TVB_Interactive_logo.jpg)」的標籤計畫\[11\]。

### 澳門

[澳廣視於](https://zh.wikipedia.org/wiki/澳廣視 "wikilink")2008年7月15日開始以DTMB制式進行[數碼電視廣播](https://zh.wikipedia.org/wiki/數碼電視 "wikilink")。目前澳门地面数码电视广播共有15个频道，其中71-78频道为转播中国内地电视频道，91-97频道为澳广视自办频道。\[12\]。

## 採用國家和地區

[Digital_broadcast_standards.svg](https://zh.wikipedia.org/wiki/File:Digital_broadcast_standards.svg "fig:Digital_broadcast_standards.svg")

### 亞洲

  -
  -
  -
### 中東

  - （實驗）

  - （實驗）

  - （實驗）

  - （實驗）

### 北美

  - \[13\]

## 參考資料

## 外部連結

中華人民共和國：

  - [国家标准查询 -
    GB 20600-2006](http://gb.sac.gov.cn/stdlinfo/servlet/com.sac.sacQuery.GjbzcxDetailServlet?std_code=GB%2020600-2006)
  - [中华人民共和国国家标准批准发布公告－2006年第8号（总第95号）](https://web.archive.org/web/20070115061353/http://www.sac.gov.cn/cgi-bin/bulletin/showbulgb.asp?id=904&year=2006&num=8&tnums=95&cnt=161&pdate=2006-8-24)
  - [地面數字電視自主標准開啟中國數字電視時代](http://www1.chinesenewsnet.com/MainNews/SocDigest/Technology/xhw_2006_09_01_01_42_01_436.html)
  - [国标委95号公告：批准数字电视地面传输标准](http://www.cnetnews.com.cn/news/electron/story/0,3800060195,39524023,00.htm)

香港：

  - [香港特別行政區-商務及經濟發展局：數位電視常見問題集](http://www.digitaltv.gov.hk/chi/general/faq.htm)
  - [立法會參考資料摘要：推行數位地面電視廣播](http://www.citb.gov.hk/ctb/chi/legco/pdf/DTT.pdf)
  - [電訊管理局局長公佈數位地面電視服務的技術制式](http://www.info.gov.hk/gia/general/200706/04/P200706040187.htm)

[Category:數碼電視](https://zh.wikipedia.org/wiki/Category:數碼電視 "wikilink")
[Category:中华人民共和国科技](https://zh.wikipedia.org/wiki/Category:中华人民共和国科技 "wikilink")
[Category:电信标准](https://zh.wikipedia.org/wiki/Category:电信标准 "wikilink")

1.  多載波技術源自DMB-T標準，使用多載波的還有[DVB-T之](../Page/DVB-T.md "wikilink")[COFDM技術](https://zh.wikipedia.org/wiki/COFDM "wikilink")；單載波技術源自ADTB-T標準；使用單載波的還有[ATSC之](../Page/ATSC.md "wikilink")[8VSB技術](https://zh.wikipedia.org/wiki/8VSB "wikilink")

2.  電訊管理局（2007年11月12日）：《[政府當局提供有關數位地面電視廣播的文件（投影片資料）](http://www.legco.gov.hk/yr07-08/chinese/panels/itb/papers/itb1112cb1-242-c.pdf)》，立法會資訊科技及廣播事務委員會

3.  [截止20日 8大城市地面数字电视推进情况](http://tech.163.com/digi/08/0821/08/4JRUL713001618VK.html)

4.

5.  [中國數字電視廣播傳輸技術獲得突破](http://www.epochtimes.com/b5/1/5/17/n89415.htm)

6.

7.

8.

9.  [數位廣播Q\&A](http://hk.news.yahoo.com/071127/12/2kajq.html)
    ，原載香港《[明報](../Page/明報.md "wikilink")》，2007-11-28。

10. [供應商憂公共天線未升級 得物無所用](http://hk.news.yahoo.com/071127/12/2kajp.html) ,
    原載香港《[明報](../Page/明報.md "wikilink")》，2007-11-28。

11.
12.

13. [CNTV
    English](http://english.cntv.cn/program/newsupdate/20130320/100031.shtml)
    2013年3月21日檢索