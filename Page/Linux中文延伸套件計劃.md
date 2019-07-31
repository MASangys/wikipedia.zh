**Linux中文延伸套件計畫**（**C**hinese GNU/**L**inux **E**xtensions簡稱**CLE**）是為[Linux](../Page/Linux.md "wikilink") [中文化](../Page/中文化.md "wikilink")的一個[社群計劃](../Page/虛擬社群.md "wikilink")。早期CLE是 些建構在[Red Hat Linux上的中文相關](../Page/Red_Hat_Linux.md "wikilink")[程式](https://zh.wikipedia.org/wiki/程式 "wikilink")[RPM收集](https://zh.wikipedia.org/wiki/RPM "wikilink")，對官方程式進行補足。隨後目標轉變成為建立[國際化](https://zh.wikipedia.org/wiki/國際化 "wikilink")（i18n）和[本地化](https://zh.wikipedia.org/wiki/本地化 "wikilink")（l10n）的基礎架構來處理中文問題。隨著各方開發者的加入，成果也移植到各大[Linux發行版本](https://zh.wikipedia.org/wiki/Linux發行版列表 "wikilink")。

## 概念

所謂的中文化操作環境，根據CLE開發者的看法，至少應包括

  - 中文的訊息
  - 中文的顯示
  - 中文的輸入
  - 中文的列印
  - 中文的處理

欲達到這些目的，有許多種做法。CLE採用的，是如今最通行，一種被稱為[I18N/L10N的手法](https://zh.wikipedia.org/wiki/國際化與本地化 "wikilink")。也就是將[程式跟](https://zh.wikipedia.org/wiki/程式 "wikilink")[語言](../Page/語言.md "wikilink")相關的部份獨立出來。將語文環境有相關的資料，放在「[區域環境資料庫](https://zh.wikipedia.org/wiki/區域設置 "wikilink")」。在設計程式時不考慮對特定語文的支援細節，而是在[執行時期才依使用者所選擇的區域環境](../Page/執行期.md "wikilink")（[locale](https://zh.wikipedia.org/wiki/區域設置 "wikilink")）聯繫到不同的資料庫，提供該語文的支援，如此方法稱之為**國際化**。而在此架構下加入中文區域化的支援，稱為中文的**本地化**。

## 發展史

### 草創時期

CLE計劃的發起人是**[鄭原忠](../Page/鄭原忠.md "wikilink")**，代號**小虫**。當時還在軍中[服役](../Page/徵兵制.md "wikilink")，原本僅是針對個人維護的方便，對相關中文軟體進行修補，打包成RPM檔以被不時之需。因Linux逐漸受到重視，[中文化](../Page/中文化.md "wikilink")的需求也日漸重要。小虫為了將他的工作成果分享出來，以電子郵件與[陳永昇](https://zh.wikipedia.org/wiki/陳永昇 "wikilink")（cdchen）討論後，決定將所有RPM檔打包成可安裝[光碟](../Page/光碟.md "wikilink")，置於網路上供人自由下載使用。1998年6月20日發表CLE v0.3，以[GNU GPL授權](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")，為CLE公開的第一版。推出後立刻廣獲好評，不斷收到各方測試回報與改善建議。隨後密集推出v0.4、v0.5版，大多是小虫一個人包辦。

1998年10月25日推出的v0.6是邁向社群計劃的一大步。除了軟體功能的提升外，更重要的是各路好手加入開發，包括[黃志偉](../Page/黃志偉.md "wikilink")、[李柏鋒](https://zh.wikipedia.org/wiki/李柏鋒 "wikilink")、[胡崇偉等](https://zh.wikipedia.org/wiki/胡崇偉 "wikilink")\[1\]。此外，官方網站、[通信論壇](https://zh.wikipedia.org/wiki/通信論壇 "wikilink")、[FTP站等各項服務也陸續上線](https://zh.wikipedia.org/wiki/FTP "wikilink")，CLE計劃逐漸成形。兩個禮拜後，v0.6p1釋出，加入了更多的修正。此時的中文化架構，主要還是以[CXWin為主](https://zh.wikipedia.org/wiki/CXWin "wikilink")，搭配[xa+cv處理中文輸入的功能](https://zh.wikipedia.org/wiki/Xcin_Anywhere "wikilink")。

1999年1月18日推出v0.7版，首次嘗試讓使用者可以選擇不具CXWin修補的[X Window系統](../Page/X_Window系統.md "wikilink")，使用純I18N/L10N的中文環境。兩個月後再推出v0.7p1，更新[GNOME](../Page/GNOME.md "wikilink")／[KDE](../Page/KDE.md "wikilink")等套件，提供使用者更穩定的操作環境\[2\]。

### 台大時期

1999年6月推出的v0.8版是一個新里程碑。搭配了Red Hat 6.0新版的[GNU C函式庫對多](../Page/GNU_C函式庫.md "wikilink")[位元組字集的支援](https://zh.wikipedia.org/wiki/位元組 "wikilink")，CLE有了嶄新的中文化架構，去除CXWin的牽絆，可同時支援[繁體](https://zh.wikipedia.org/wiki/繁體中文 "wikilink")（[Big5](../Page/大五碼.md "wikilink")）與[簡體](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")（[GB2312](https://zh.wikipedia.org/wiki/國家標準代碼 "wikilink")）中文。新的xa+cv在X的顯示對位問題有了重大改良，在輸入上也有重大改善。導入[謝東翰開發支援](https://zh.wikipedia.org/wiki/謝東翰 "wikilink")[XIM的](https://zh.wikipedia.org/wiki/XIM "wikilink")[Xcin 2.5](../Page/Xcin.md "wikilink")，雖然還沒做為[預設的](https://zh.wikipedia.org/wiki/默認選項 "wikilink")[中文輸入法](https://zh.wikipedia.org/wiki/中文輸入法 "wikilink")，但搭配[GTK+程式使用已經沒問題了](https://zh.wikipedia.org/wiki/GTK+ "wikilink")。整體而言，中文化程式跟整個系統搭配的更好，不再有隔閡\[3\]。在[百資科技的協助下](https://zh.wikipedia.org/wiki/百資科技 "wikilink")，小虫出版了「*Official CLE 0.8 ─中文Linux延伸套件使用指南*」。

此時小虫從軍中[退伍](https://zh.wikipedia.org/wiki/退伍 "wikilink")，返回母校[台大](../Page/國立臺灣大學.md "wikilink")[化學所擔任研究助理](https://zh.wikipedia.org/wiki/化學系 "wikilink")，連同就讀台大[電機所的CLE另一位主要開發成員兼](https://zh.wikipedia.org/wiki/電機工程學系 "wikilink")[CLDP計劃主持人黃志偉](https://zh.wikipedia.org/wiki/CLDP "wikilink")，與就讀台大[物理所的](https://zh.wikipedia.org/wiki/物理系 "wikilink")[Xcin](../Page/Xcin.md "wikilink")領導者謝東翰，形成台大Linux鐵三角。他們說服台大計算機中心支持CLE相關計劃，提供設備與頻寬。使得他們在無後顧之憂的情況下，全力完成Linux中文化的基礎工作\[4\]\[5\]。

此時的CLE也開始進入穩定的開發時期，新版釋出速度明顯變慢。四個月後方推出CLE v0.8p1，中文化的架構不變，但加入更多的套件更新。簡體中文的支援也更完整\[6\]。同時使用新一代中文架構的CLE v0.9測試版也密集開發中。

### 文鼎字型

當時Linux的中文化還有一個大難題，就是還沒有自由免費的中文[字型](../Page/字型.md "wikilink")可使用。小虫連同幾位CLE的主要成員黃志偉、謝東翰和胡崇偉等，積極奔走遊說[華康](https://zh.wikipedia.org/wiki/華康 "wikilink")、[文鼎等字型公司](https://zh.wikipedia.org/wiki/文鼎 "wikilink")。後來獲得[文鼎科技](../Page/文鼎科技.md "wikilink")的善意回應，釋出四套以Arphic Public License授權的[TrueType](../Page/TrueType.md "wikilink")字型，供社群自由的使用。

### 翔威事件

1999年9月，發生*翔威事件*。起因於[翔威國際公司](http://www.shinewave.com.tw)推出商業的中文Linux發行版，其中部分採用CLE的中文化成果。按照GNU GPL的授權條款，翔威雖將其[原始碼公開](https://zh.wikipedia.org/wiki/原始碼 "wikilink")。但其中獨缺翔威自行[翻譯的KDE中文訊息檔](https://zh.wikipedia.org/wiki/翻譯 "wikilink")。小虫以CLE計劃主持人的身份公開於網路論壇抨擊翔威做法不當。翔威工程師起先辯稱是一時失誤，後又改稱只提供原始碼給購買翔威產品的用戶。

此事引起台灣Linux社群譁然。大多數[網友](../Page/網友.md "wikilink")皆聲援CLE，指責翔威做法有失[自由軟體的開放分享精神](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。然而也開始有人以[陰謀論](../Page/陰謀論.md "wikilink")，質疑許多CLE開發者擔任[網虎國際公司](http://www.coventive.com)顧問，有藉社群名義打壓競爭對手之嫌。此論點也引起CLE開發成員強烈不滿，導致激烈的[網路論戰](../Page/網路論戰.md "wikilink")。

論戰持續數週，最終翔威國際迫於輿論壓力而讓步，同意釋出KDE的翻譯檔，事件才逐漸平息。但論戰雙方都已受到不小的傷害\[7\] 。受此事件的影響，小虫逐漸將個人重心放在學業，而淡出CLE計劃。主要的開發工作，便由黃志偉接手。

### 成熟時期

2000年3月20日在黃志偉主導下，推出架構於Red Hat 6.1的CLE v0.9，首度以台灣[原住民](../Page/原住民.md "wikilink")**Yami**（雅美族，今稱[達悟族](../Page/達悟族.md "wikilink")）為代號。不再使用任何外掛方式而能夠正確的顯示、輸入乃至處理中文，象徵著Linux中文化與國際化的腳步又邁進一大步。在國際化的架構下，能同時支援多語系。只要指定LANG變數，便可在各語言之間切換。以Xcin 2.5.2為預設中文輸入法，並以文鼎字型做為預設中文字體。包含[高茂原開發的英漢](https://zh.wikipedia.org/wiki/高茂原 "wikilink")／漢英[字典](../Page/字典.md "wikilink")[pyDict](https://zh.wikipedia.org/wiki/pyDict "wikilink")。大部分的KDE/GNOME程式皆可正確顯示並輸入中文\[8\]。

### 頂高時期

2000年6月小虫[結婚並赴美](https://zh.wikipedia.org/wiki/結婚 "wikilink")[留學](https://zh.wikipedia.org/wiki/留學 "wikilink")。黃志偉也自台大[畢業](../Page/畢業.md "wikilink")，在[葉平的引薦下進入剛成立的頂高國際公司](https://zh.wikipedia.org/wiki/葉平 "wikilink")，擔任研發協理，繼續CLE的開發工作。黃志偉網羅了另一位CLE活躍開發者[張崇嚴](../Page/張崇嚴.md "wikilink")，以及KDE中文化主要作者[莊明哲](https://zh.wikipedia.org/wiki/莊明哲 "wikilink")，和[\*BSD社群好手](../Page/BSD.md "wikilink")[羅謝家偉加入](https://zh.wikipedia.org/wiki/羅謝家偉 "wikilink")，還有高茂原、[曾昭明](https://zh.wikipedia.org/wiki/曾昭明 "wikilink")（[jmce作者](https://zh.wikipedia.org/wiki/jmce "wikilink")）等擔任顧問，組成堅強的研發團隊。

在頂高全力支持下，2000年10月30日推出CLE v0.9p1，代號仍為Yami。以Red Hat 6.2為基礎，中文[列印的改良是這個版本最大的特色](https://zh.wikipedia.org/wiki/列印 "wikilink")。包含文書處理軟體[AbiWord](../Page/AbiWord.md "wikilink")中文版，與[CJK for LATEX和](https://zh.wikipedia.org/wiki/Latex#CJK "wikilink")[ChiTeX](https://zh.wikipedia.org/wiki/ChiTeX "wikilink")，製作中文文件更加容易\[9\]。黃志偉並結合團隊成員撰寫了「*Linux中文延伸套件使用指南for CLE v0.9p1*」，由頂高國際出版。

然而頂高國際因[資金未能到位](https://zh.wikipedia.org/wiki/資金 "wikilink")，2001年2月發生財務危機，並停止對社群的贊助。CLE的團隊成員也陸續離開頂高。

### 泰雅現身

儘管各自遭遇生活上的困境，CLE成員仍排除萬難，於2001年4月10日推出，以**[泰雅](../Page/泰雅族.md "wikilink")**（Atayal）為代號的CLE v1.0版，象徵著國際化與中文化進入穩定成熟的時期。延續國際化的架構，以Red Hat 7.0為根基，搭配[Glibc](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink") 2.2，對國際語文，特別是[CJK](https://zh.wikipedia.org/wiki/CJK "wikilink")（中日韓語）的支援更加完善。有完整的中文安裝介面，並導入大陸地區常用的[Chinput做為簡體輸入法引擎](https://zh.wikipedia.org/wiki/Chinput "wikilink")。包含中文支援的[KOffice](../Page/KOffice.md "wikilink")辦公軟體，以及更多的中文程式與使用介面\[10\]。

隨著黃志偉的淡出，CLE的開發也改由張崇嚴主導。2001年10月和11月分別推出代號為**Gaga**（泰雅語）的兩個CLE v1.1測試版。主要在提出更佳的中文[列印解決方案](https://zh.wikipedia.org/wiki/列印 "wikilink")。包含AbiWord、[StarOffice](../Page/StarOffice.md "wikilink")、KOffice和[HancomOffice等各套辦公軟體](https://zh.wikipedia.org/wiki/HancomOffice "wikilink")\[11\]\[12\]。在2002年7月再推出miniCLE系列，提供以[APT為基礎](https://zh.wikipedia.org/wiki/高級包裝工具 "wikilink")，類似[Debian](../Page/Debian.md "wikilink")的基本可客製化系統\[13\]。

### 功成身退

2002年10月 因發生[Red Hat Linux](../Page/Red_Hat_Linux.md "wikilink") 8.0移除[中華民國國旗事件](https://zh.wikipedia.org/wiki/中華民國國旗 "wikilink")，導致CLE團隊與[Red Hat的決裂](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")\[14\]。CLE自此也未再推出新版本。官方網站轉型為Linux相關新聞、論壇以及下載區，仍由張崇嚴繼續維護。

儘管如此，曾經做為[華文世界裡最重要也最受歡迎的自由軟體社群計劃](https://zh.wikipedia.org/wiki/漢語 "wikilink")，CLE對Linux的中文化與國際化發展有著不可磨滅的貢獻。雖然一開始是以類似Linux發行套件的方式存在，但CLE的開發者並不打算讓它成為一個完全獨立的發行版本。相反的，CLE的開發者嘗試與各自由軟體的原始開發組織合作，希望將支援中文的國際化架構落實到原始碼當中。包括[Linux kernel](https://zh.wikipedia.org/wiki/核心 "wikilink")、Glibc、[Qt](../Page/Qt.md "wikilink")、GTK+、KDE、GNOME、AbiWord等都曾加入CLE提交的修補。如此當新版的程式自開發者手中釋出後，便已有了中文支援的能力。CLE的開發者期望將來各家Linux發行版本都能夠有內建的中文支援，那也就是CLE功成身退的時候\[15\]。以目前的情況看來，CLE的終極目標，雖不中亦不遠矣\!

## 其它移植

由於CLE廣受歡迎，不少開發者將其[移植到其它的Linux發行套件](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")，例如：

  - [Mandrake](../Page/Mandriva_Linux.md "wikilink") + CLE，由[李健秋主導開發](https://zh.wikipedia.org/wiki/李健秋 "wikilink")。
  - [Slackware](https://zh.wikipedia.org/wiki/Slackware_Linux "wikilink") + CLE，由[吳文政主導開發](https://zh.wikipedia.org/wiki/吳文政 "wikilink")。
  - [SUSE](../Page/SUSE.md "wikilink") + CLE，由[郭谷彰主導開發](https://zh.wikipedia.org/wiki/郭谷彰 "wikilink")。
  - [Debian](../Page/Debian.md "wikilink")中文計劃，[霍東靈主導開發](https://zh.wikipedia.org/wiki/霍東靈 "wikilink")。

## 書籍出版

由CLE原開發者所著作的書籍有：

  - Official CLE 0.8 ─中文Linux延伸套件使用指南 鄭原忠著 ISBN 957-97830-0-4。
  - [Linux中文延伸套件使用指南for CLE v0.9p1](https://web.archive.org/web/20081013133106/http://cle.linux.org.tw/candyz/clev09p1/)黃志偉等著 ISBN 957-30701-0-3。
  - Linux CLE 1.0安裝與入門指引 陳俊宏、賴柏諭著 ISBN 9789570321753

其它以CLE為主體，但非CLE開發者所撰寫的有：

  - [LINUX完全安裝DIY－CLE 0.8進階安裝與設定](https://web.archive.org/web/20040815001754/http://www.books.com.tw/exep/prod/booksfile.php?item=0010025312)旗標股份有限公司出版 ISBN 957-717-550-3。
  - [精通Linux Red Hat 6.0/6.1 + CLE v0.8p1](https://web.archive.org/web/20080320061810/http://www.books.com.tw/exep/prod/booksfile.php?item=0010049143)文魁資訊股份有限公司出版 ISBN 957-0341-60-2。
  - [精通Linux Red Hat Linux 6.X + CLE v0.9](http://www.books.com.tw/exep/prod/booksfile.php?item=0010132158)文魁資訊股份有限公司出版 ISBN 957-466-041-9。
  - [易學易用Red Hat 7.X + CLE v1.0](http://www.books.com.tw/exep/prod/booksfile.php?item=0010175027)碁峰資訊出版 ISBN 957-566-911-8。
  - Red Hat Linux 7.2 + CLE 1.0 系統安裝 DIY 旗標出版股份有限公司 ISBN 9789577178008
  - [易學易用LINUX系統管理 -- CLE + RED HAT](http://www.books.com.tw/exep/prod/booksfile.php?item=0010019724)碁峰資訊出版 ISBN 957-566-647-X。
  - [易學易用LINUX視窗桌面系統 -- CLE、KDE、GNOME](http://www.books.com.tw/exep/prod/booksfile.php?item=0010045372)碁峰資訊出版 ISBN 957-566-646-1。

## 參見

  - [Linux中文文件計劃](../Page/Linux中文文件計劃.md "wikilink")
  - [Xcin](../Page/Xcin.md "wikilink")計劃
  - [鄭原忠](../Page/鄭原忠.md "wikilink")
  - [黃志偉](../Page/黃志偉.md "wikilink")
  - [張崇嚴](../Page/張崇嚴.md "wikilink")
  - [謝東翰](https://zh.wikipedia.org/wiki/謝東翰 "wikilink")

## 資料來源

由於[CLE的官方網站](http://webarchive.loc.gov/all/20020914221055/http%3A//cle.linux.org.tw/)發生多次硬碟損毀事件，許多文件，包含通信論壇等都已逸失。所幸在[Wayback Machine](http://www.archive.org/web/web.php)仍能找到當年大部分的資料。

## 外部連結

  - [Chinese GNU/Linux Extensions](http://webarchive.loc.gov/all/20020914221055/http%3A//cle.linux.org.tw/)
  - [台灣的開放源碼運動](https://archive.is/20120707081607/http://apt.nc.hcc.edu.tw/pub/FreeSoftware/%AE%D5%B6%E9%A6%DB%A5%D1%B3n%C5%E9%A6h%A4%B8%B1%C0%BCs%C0%B3%A5%CE%BA%F4%AD%B6/open_tw.html)
  - [尋找台灣自由軟體力量-專訪自由軟體大將](https://web.archive.org/web/20080430142622/http://www.zdnet.com.tw/enterprise/feature/0,2000085762,20087861-3,00.htm)[黃志偉專訪問答實錄](https://web.archive.org/web/20080604032823/http://www.zdnet.com.tw/enterprise/feature/0,2000085762,20087861-7,00.htm)

[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink") [Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink") [Category:中文信息處理](https://zh.wikipedia.org/wiki/Category:中文信息處理 "wikilink")

1.  [CLE v0.6特點介紹](https://web.archive.org/web/19991103234703/http://cle.linux.org.tw/CLE/release/clev06.shtml)
2.  [CLE v0.7p1特點介紹](https://web.archive.org/web/19991103235810/http://cle.linux.org.tw/CLE/release/clev07p1.shtml)
3.  [CLE v0.8特點介紹](https://web.archive.org/web/19991103235929/http://cle.linux.org.tw/CLE/release/clev08.shtml)
4.  [Linux @ NTU](http://linux.ntu.edu.tw/)
5.  [台灣的開放源碼運動](http://apt.nc.hcc.edu.tw/pub/FreeSoftware/%AE%D5%B6%E9%A6%DB%A5%D1%B3n%C5%E9%A6h%A4%B8%B1%C0%BCs%C0%B3%A5%CE%BA%F4%AD%B6/open_tw.html)
6.  [CLE v0.8p1特點介紹](https://web.archive.org/web/20000307134522/http://cle.linux.org.tw/CLE/release/clev08p1.shtml)
7.  [Open Source與GPL精神之三二事 (翔威事件記錄)](http://msia.twbbs.org/cgi-bin//bbs0an?path=/groups/GROUP_2/Linux/other)
8.  [CLE v0.9特點介紹](https://web.archive.org/web/20000621205132/http://cle.linux.org.tw/CLE/release/clev09.shtml)
9.  [CLE v0.9p1特點介紹](http://cle.linux.org.tw/candyz/clev09p1/node13.html)
10. [CLE v1.0特點介紹](https://web.archive.org/web/20030220024216/http://cle.linux.org.tw/index.php?SCREEN=story_view&sid=&pathway=65&node=225&ACTION=UPDATE_COUNT)
11. [CLE v1.1Pre1介紹](https://web.archive.org/web/20030207213427/http://cle.linux.org.tw/index.php?SCREEN=story_view&sid=&pathway=65&node=269&ACTION=UPDATE_COUNT)
12. [CLE v1.1Pre2介紹](https://web.archive.org/web/20030207213427/http://cle.linux.org.tw/index.php?SCREEN=story_view&sid=&pathway=65&node=272&ACTION=UPDATE_COUNT)
13. [從無到有，CLE的APT之旅](https://web.archive.org/web/20030207213427/http://cle.linux.org.tw/location.php?sid=&node=279)
14. [抵制紅帽 - 致自由軟體社群公開信](http://ftp.tcc.edu.tw/iso/RedHat/redhat8.0/)
15. [CLE介紹](http://cle.linux.org.tw/candyz/clev09p1/node12.html)