[ClamWin_on_Ubuntu.png](https://zh.wikipedia.org/wiki/File:ClamWin_on_Ubuntu.png "fig:ClamWin_on_Ubuntu.png") **Clam AntiVirus**（**ClamAV**）是免費而且[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[防毒軟體](https://zh.wikipedia.org/wiki/防毒軟體 "wikilink")，軟體與病毒碼的更新皆由社群免費發佈。目前ClamAV主要是使用在由[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")等[Unix-like系統架設的郵件伺服器上](https://zh.wikipedia.org/wiki/Unix-like "wikilink")，提供[電子郵件的病毒掃描服務](https://zh.wikipedia.org/wiki/電子郵件 "wikilink")。ClamAV本身是在[文字介面下運作](../Page/命令行界面.md "wikilink")，但也有許多[圖形介面的前端工具](https://zh.wikipedia.org/wiki/圖形用戶界面 "wikilink")（**GUI front-end**）可用，另外由於其開放原始碼的特性，在[Windows與](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS X平台都有其移植版](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。

## 功能

ClamAV包含很多工具：命令行掃描器、資料庫自動更新器和可調整的多線程[後台程序](../Page/守护进程.md "wikilink")，從共享的程序庫中在防毒引擎上執行。此應用程式亦包含對郵件的Milter介面和手動執行掃描的功能。它支援Zip, RAR, Tar, Gzip, Bzip2, OLE2, Cabinet, CHM, BinHex, SIS格式、大部分的郵件格式、[可執行的可鏈接格式](../Page/可執行與可鏈接格式.md "wikilink")（ELF）、以UPX, FSG, Petite, NsPack, wwpack32, MEW, Upack壓縮和以SUE, Y0da Cryptor混淆（obfuscate）的[可移植的可執行檔案](https://zh.wikipedia.org/wiki/Portable_Executable "wikilink")（PE）。它亦支援許多文檔的格式，包括：[Microsoft Office](../Page/Microsoft_Office.md "wikilink")、[HTML](../Page/HTML.md "wikilink")、[RTF](../Page/RTF.md "wikilink")和[PDF](https://zh.wikipedia.org/wiki/便携式文档格式 "wikilink")。

ClamAV的病毒資料庫至少每4小時更新一次。截至2014年12月25日，每日更新資料庫（daily update Virus DB）版本號為19837，並包含至少370萬個病毒的特徵碼\[1\]。

## 效果

ClamAV在Shadowserver基金會中與其他[防毒軟體做每日測試](../Page/杀毒软件.md "wikilink")。於2011年，Shadowserver基金會以兩千五百萬個惡意程式樣本測試ClamAV與其他[防毒軟體](../Page/杀毒软件.md "wikilink")。在這兩千五百萬個樣本之中，ClamAV偵測率達76.60％，排名12/19；這個結果比一些知名的競爭者還要好\[2\]。

ClamAV也參與了一些其他防毒軟體的評測。ClamAV於2008年在AV-Test的評測其分數為：手動執行掃描：很差/誤判：差/即時掃描：差/反應時間：很好/rootkits：很差\[3\]。

ClamAV於2011年6月-12月間在Shadowserver基金會的評測中，偵測率超過75.45％排名第五，名落AhnLab, Avira, Bitdefender和Avast\!之後。其中AhnLab偵測率為80.28％，為表現最佳者\[4\]。

## 非官方資料庫

ClamAV引擎可備用來偵測數種不同的檔案類型。特定的說，有些[釣魚信件可以被某些防毒技術偵測到](../Page/钓鱼式攻击.md "wikilink")，但誤判率無可避免的比較高一些\[5\]。Sanesecurity是一個收集這種資料庫的組織之一。此外，它們亦從CRDF威脅中心、Porcupine、Julian Field、MalwarePatrol等其他機構或組織取得並分類許多資料，建立資料庫\[6\]。SecuriteInfo.com也提供ClamAV額外的特徵碼\[7\]。

CLlamAV的非官方資料庫主要由系統管理員用來過濾郵件\[8\]。欲偵測到這類受感染的郵件應用「評分法」，而非完全阻止\[9\]。

## 各平台版本

### Linux

  - **ClamTk** - 使用gtk-perl開發的ClamAV前端。
  - **KlamAV** - [KDE](../Page/KDE.md "wikilink")環境下的ClamAV前端。
  - **Copfliter** - 使用ClamAV的[IPCOP擴充套件](https://zh.wikipedia.org/wiki/IPCOP "wikilink")。

### Mac OS X

  - **Mac OS X Server 10.4** - 內附ClamAV。
  - **ClamXav** - 使用ClamAV作為引擎的免費防毒軟體。
  - **Tiger Cache Cleaner** - 內附ClamAV。

### Windows

  - **ClamAV for Windows**
  - **[ClamWin](https://zh.wikipedia.org/wiki/ClamWin "wikilink")** - ClamAV的Windows移植版，並可支援[Outlook](https://zh.wikipedia.org/wiki/Outlook "wikilink")、[Internet Explorer](../Page/Internet_Explorer.md "wikilink")、[Mozilla Firefox等下載檔案掃描](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")，但不具備即時掃描能力。
  - **Spyware Terminator** - 免費安全防護軟體，內附ClamAV。
  - **[Moon Secure Antivirus](https://zh.wikipedia.org/wiki/Moon_Secure_Antivirus "wikilink")**，一个开源反病毒软件，官方网站：[1](http://sourceforge.net/projects/moonav/)，它有realtime protection功能。
  - **[Immunet](../Page/Immunet.md "wikilink")**
  - **CS Antivirus**\[10\]
  - **Graugon AntiVirus**\[11\]
  - *' Clam Sentinel*' - Clam Sentinel\[12\]是免費軟體，它常駐在系統匣（通知區域）中，偵測檔案的變化並以ClamWin即時掃描這些變更\[13\]。它可在Windows 98/98SE/ME/XP/Vista/7/8下使用。他是一個使用ClamWin的即使掃描器，也提供通知系統改變（可選）、主動啟發式防護的功能。

## 即時檔案掃描

ClamAV並非一個即時掃描器（它並不在檔案被讀取或寫入時做掃描的動作），但它可以被其他的應用程式利用，並提供即時檢查。這類的應用程式如：ClamFS（可在任何支援[FUSE](../Page/FUSE.md "wikilink")的[类Unix系统下使用](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink")）、DazukoFS（Linux）、Clam Sentinel和Winpooch（後面兩個都是Windows）\[14\]\[15\]

## 專利訴訟

於2008年，Barracuda Networks被趨勢科技起訴，原因為Barracuda Networks散佈ClamAV作為其安全套裝的一部分\[16\]。趨勢科技宣稱Barraucda在[網路閘道的病毒過濾](../Page/网关.md "wikilink")[軟體專利中侵犯了ClamAV](https://zh.wikipedia.org/wiki/软件专利 "wikilink")

## 參見

  - [防毒軟體列表](../Page/防毒軟體列表.md "wikilink")

## 參考資料

## 延伸閱讀

  - 訪談ClamAV的創始者-Tomasz Kojm [封存版本](https://web.archive.org/web/20120206053729/http://www.emailbattles.com/2005/08/31/virus_aabejfhaib_ag/)

## 外部連結

  -

  - [SourceForge](../Page/SourceForge.md "wikilink")上的

  - [PortableApps上的](https://zh.wikipedia.org/wiki/PortableApps "wikilink")

  - [Freecode上的](https://zh.wikipedia.org/wiki/Freecode "wikilink")

  - [ClamWin](http://www.clamwin.com/)

  - [ClamTk](http://sourceforge.net/projects/clamtk)

  - [ClamXav](http://www.clamxav.com/)

  - [ClamAV在线](https://web.archive.org/web/20111128001729/http://www.findfiles.net/antivirus)

  - [TigerCacheCleaner](http://www.northernsoftworks.com/tigercachecleaner.html)

  - [KlamAV - ClamAV frontend for KDE](https://web.archive.org/web/20051118193211/http://klamav.sourceforge.net/)

  - [500000签名的ClamAV](https://www.securiteinfo.com/services/improve-detection-rate-of-zero-day-malwares-for-clamav.shtml)

  - [Spyware Treminator](http://www.spywareterminator.com/)

  - [Sourcefire官網](https://web.archive.org/web/20130717143626/http://www.sourcefire.com/)

[Category:杀毒软件](https://zh.wikipedia.org/wiki/Category:杀毒软件 "wikilink") [Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.

2.

3.

4.

5.

6.  Sanesecurity [Phishing, Scam and Malware signatures for ClamAV](http://www.sanesecurity.com/clamav/databases.htm)

7.  SecuriteInfo.com [Add 500.000 signatures to Clamav Antivirus](https://www.securiteinfo.com/services/improve-detection-rate-of-zero-day-malwares-for-clamav.shtml)

8.

9.
10.
11.

12.

13.

14.

15.

16.