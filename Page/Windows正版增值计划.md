**Windows正版增值计划**（，簡稱**WGA**）是一套由[微軟設計的反](https://zh.wikipedia.org/wiki/微軟 "wikilink")[盜版系統](https://zh.wikipedia.org/wiki/盜版 "wikilink")，當[Microsoft Windows的使用者存取某些微軟線上服務時](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，就會企圖強制要求使用者進行驗證目前所使用的Windows是否為[正版](https://zh.wikipedia.org/wiki/正版 "wikilink")，例如[Windows Update](../Page/Windows_Update.md "wikilink")、以及從Microsoft Download Center（微軟下載中心）下載系統元件。

它也是為[Windows XP的Service](../Page/Windows_XP.md "wikilink") Pack 2作廣告宣傳，需經過手動設定才能關閉它。由於安裝它才能進行更新，微軟在2005年7月讓它成為線上更新服務的代理。

## 特性

WGA認證程序包含以下步驟：

  - 當使用者進入Microsoft Download或Update Center（微軟下載中心或線上更新）時，使用者會接收到一個需要認證視窗作業系統的信息對話框，經由下載[ActiveX](../Page/ActiveX.md "wikilink")控制元件檢查是否為正版的作業系統，如果認證成功，就會儲存一個許可協議檔案在使用者的電腦裡，以便未來使用。
  - 認證成功後，才會進入更新下載的程序。

假如無法認證或是認證程序失敗，那麼WGA就會顯示通知網頁來告知使用者，並且禁止使用者從微軟的線上更新服務下載任何更新元件。

只有第一次認證和出現新版本的ActiveX控制元件時才需下載ActiveX控制元件，使用者只要安裝過一次，以後連上微軟的線上更新服務就不需再做認證檢查。

## 軟體

### WGA認證工具

當使用者安裝WGA後，[Internet Explorer就會被安裝上標示名為](../Page/Internet_Explorer.md "wikilink")「Windows Genuine Advantage」的附加元件。在早期發行的工具，可以在IE的管理附加元件選項中關閉它的功能。Windows作業系統下的[群組原則在之後的更新中被增加新的內容](https://zh.wikipedia.org/wiki/群組原則 "wikilink")，原本這個選項是預設不可使用的，如果群組原則被移除仍然可以存取它。像2006年7月，最近的更新利用其他手段來封鎖附加元件管理工具。

產生WGA的原因在於，在很多國家地區，正版Windows系統使用者所佔的百分比，只有佔不到10%。在其他商業團體方面，一旦有商業的競爭對手在工作時間內沒有正常付費而使用某個小型企業所生產的軟體，這個小型企業業主就會提出國際智慧財產權的相關法律。不像以前的複製品保護計畫，這個程式會企圖在使用者的電腦上出錯。它不會關閉電腦硬體，甚至連安全性更新都會封鎖。

這個WGA有兩種程式的特性，它可以是產生金鑰的獨立程式，或者，也可以是一個不管[許可授權金鑰是否有效的](https://zh.wikipedia.org/wiki/Key_server_\(software_licensing\) "wikilink")[ActiveX](../Page/ActiveX.md "wikilink")控制元件。如果WGA認定使用者的Windows作業系統是[未經授權的](https://zh.wikipedia.org/wiki/Copyright_infringement_of_software "wikilink")，但是使用者的系統[CD卻是正版的](../Page/CD-ROM.md "wikilink")（包含微軟贈送的正版套裝產品），那麼微軟就會提供使用者一張新的系統光碟。微軟也有提供折扣給那些沒有正版光碟序號卻想要購買正版的消費者。微軟已經指出，會繼續經由自動更新服務以及微軟下載中心來提供緊急安全性更新服務。在自動更新狀態下，商業公司要使用WGA，當客戶使用未經許可或盜版的軟體時，在某種程度上要確保客戶能夠取得公司相關的軟體支援。根據微軟的說法，就算沒有WGA還是可以合法執行Microsoft Windows。在非緊急自動更新狀態下，還是會有WGA的安裝需求。整個系統不管是驗證失敗還是驗證成功，都還是可以繼續接收緊急安全性更新。

### WGA通知

自2006年4月25日起，微軟開始發佈WGA通知，\[1\]這個WGA通知就是給Windows使用者的**KB905474**「緊急更新」軟體元件。當使用者在啟動、登入和使用未經微軟驗證和盜版的Windows作業系統期間，都會出現警告的通知。\[2\]正版Windows作業系統的使用者應該不會看到這個警告通知（某些正版的使用者也會有看到警告通知的可能性\[3\]）。在2006年5月23日，微軟升級WGA程式，據報導，它終結某些盜版的模式，但是這類報導不見得為真。\[4\]WGA程式在2006年5月30日、6月6日和2006年6月27日再次升級，儘管某些盜版的模式仍然還是可以繼續使用。微軟並沒有向全世界同步發佈最新版的WGA程式：各地區提供的版本不見得是最新的，所以實際上某些地方提供的版本比最新的版本還要老舊。只要在微軟的更新網站上，選擇「do not show（不要顯示）」的選項來退出更新的作法還是可以行得通的。

在2006年11月29日發行的WGA通知改變了安裝程序，提醒使用者WGA會執行哪些工作，並且也會設定自動更新來更新最新版的WGA通知。它也會提醒使用未經驗證的Windows使用者為何會像正版一樣而且不會被通報給微軟。然而，不像先前的WGA，它只會自動地傳送產品金鑰（four widely-distributed product keys）到微軟的伺服器。到下一個星期，這個產品金鑰的資訊就會被分散到微軟所有其他的伺服器。\[5\]

目前最新版的WGA於2007年3月27日發行。

### WGA認證資料庫

微軟在某些產品上如[Windows Defender](../Page/Windows_Defender.md "wikilink")、[Internet Explorer 7和](../Page/Internet_Explorer_7.md "wikilink")[Windows Media Player 11加入了WGA認證資料庫](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")，在安裝前會先自動執行認證動作。（Internet Explorer 7最新版本已取消安裝時自動執行認證動作）

微軟也發行[Office Genuine Advantage程式](https://zh.wikipedia.org/wiki/Office_Genuine_Advantage "wikilink")，用在[Microsoft Office安裝程序的認證動作](../Page/Microsoft_Office.md "wikilink")。

## 破解WGA與數位化千禧年著作權法案

在美國，[數字千年版權法](../Page/數字千年版權法.md "wikilink")（Digital Millennium Copyright Act）不只懲罰侵犯版權的行為，更令到製作以及散播迴避保護版權措施的行為違法，而且加重了在網絡上侵犯版權的刑罰。

在2005年9月，微軟針對一些販賣未授權軟件給不知情消費者的公司和企業提出訴訟。這些案子之所以重要是因為線索就是客戶從WGA發現他們購買到的是假冒版。\[6\]

在2005年11月16日，微軟發行[Netscape瀏覽器的標準WGA外掛](https://zh.wikipedia.org/wiki/Netscape "wikilink")，完成了在[Mozilla Firefox和其他以](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[Gecko](../Page/Gecko.md "wikilink")為基礎的瀏覽器（包括Netscape）中加入Windows驗證的程序，儘管它不使用Firefox延伸系統，因此不支援最新版本的瀏覽器。這件事為微軟帶來又一波批評，因為它依然不支援多種由[NPAPI](../Page/NPAPI.md "wikilink")支援的瀏覽器，例如[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")。另一個破解WGA的元件在2005年12月25日發行，利用由一個遠端系統所產生的有效雜湊演算（[Hash](https://zh.wikipedia.org/wiki/Hash "wikilink")）來繞過WGA驗證。微軟發出一封要求「結束並停止」（cease and desist）的信件給提供破解的網站，這個破解元件在2006年1月6日被移除。很多人還是在有正版視窗系統的公用電腦進行驗證，並寫下其雜湊演算，然後在家裡和工作的地方使用。到2006年7月，微軟不再遏阻這個迴避方法。2006年5月4日，微軟宣佈針對位於[蒙大拿州](../Page/蒙大拿州.md "wikilink")的eDirectSoftware以及在[芝加哥](../Page/芝加哥.md "wikilink")地區的零售商Nathan Ballog和Easy Computers分發無授權Windows軟件的行為提出訴訟。\[7\]

在互聯網上，可以取得WGA驗證的各種破解方法。在微軟發佈有關移除WGA的官方指引之前\[8\]（一個在工作列小圖示框內的桌面程式，會定期顯示訊息提醒使用者驗證作業系統），使用者只須移除兩個檔案就可以清除WGA。

在2006年9月，微軟在一些程式上中止了WGA驗證要求，例如[ActiveSync](https://zh.wikipedia.org/wiki/ActiveSync "wikilink")。

## WGA通知與防火牆

雖然某些[防火牆在wgatray](https://zh.wikipedia.org/wiki/防火牆 "wikilink").exe啟動時會出現出現警告畫面並將它擋下，但在[Outpost Firewall防火牆工具中](../Page/Outpost_Firewall.md "wikilink")，它被認定為「隱藏程序」。利用[HijackThis](../Page/HijackThis.md "wikilink")移除工具來移除WGALOGON.DLL檔案時，只要設定「do not show（不要顯示）」選項就可以有效防止WGA更新。

這個工具是由小型的防火牆廠商發行，目的是防止WGA傳送使用者的個人隱私與資料給[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")。\[9\]

## WGA進行的資料收集

Windows Genuine Advantage會檢查以下使用者的系統元件\[10\]\[11\]：

  - [BIOS](../Page/BIOS.md "wikilink")[校驗和](https://zh.wikipedia.org/wiki/校驗和 "wikilink")
  - [MAC網卡位址](https://zh.wikipedia.org/wiki/MAC位址 "wikilink")
  - 硬碟的序列號碼
  - 作業系統的地區語言版本
  - 作業系統的版本
  - 個人電腦的BIOS資訊（製造地區、版本、製造日期）
  - 個人電腦的製造商
  - 使用者區域設定
  - 認證與安裝結果
  - Windows或Office的產品金鑰
  - Windows XP的產品ID

## WGA在中國

從2008年10月20日起，中國的Windows XP用戶將可能受到遭遇“[黑屏](https://zh.wikipedia.org/wiki/黑屏 "wikilink")”。因為微軟將在其中文版本的WGA中引入視覺標簽，對于未能通過WGA驗證的Windows XP用戶，其桌面將每60分鐘被轉變成純黑色。用戶可以重新設置背景，但是每60分鐘將再次被更改成為純黑色。用戶登錄時也將出現中斷對話框，提示“您可能是軟件盜版的受害者。”（Windows 7中翻译为“您可能是盜版軟件的受害者。”）。不过，由于国内的大部分使用者都关闭了自动更新，改用第三方工具安装更新，所以，虽然中国的大多数电脑使用盗版系统，但WGA对中国用户的影响不大。

對于微軟這個打擊盜版的舉措，中國用戶普遍表示反對。根據sohu.com、QQ.com、21cn.com等網站的調查表明，超過60%的用戶反對微軟的這項措施。該措施的實施也引起了包括[中國中央電視臺在內的各大媒體的普遍關注](https://zh.wikipedia.org/wiki/中國中央電視臺 "wikilink")，此后却不了了之。

而該事件並不僅僅在中國發生，在[馬來西亞亦有發生相同事件](https://zh.wikipedia.org/wiki/馬來西亞 "wikilink")。

## 批評

### 定時炸彈軟體

雖然WGA不會影響其他程式的運作，但如果電腦中的[微軟產品被WGA認定是盜版](https://zh.wikipedia.org/wiki/微軟 "wikilink")，使用者將無法利用[Windows Update進行更新](../Page/Windows_Update.md "wikilink")，造成WGA被和[定時炸彈軟體](https://zh.wikipedia.org/wiki/定時炸彈軟體 "wikilink")（Time bomb）\[12\]相比。[1](http://www.pcmag.com/article2/0,1895,2031647,00.asp) [2](https://web.archive.org/web/20070523040056/http://www.foxnews.com/story/0,2933,222518,00.html) [3](http://blogs.zdnet.com/Bott/?p=84)

### 被指為間諜軟體的指控

微軟WGA通知工具的執行動作，這個行為被指控就像是[間諜軟體一樣](https://zh.wikipedia.org/wiki/間諜軟體 "wikilink")，而且還會定期每天執行「[背景連線通訊](../Page/背景連線通訊.md "wikilink")」（phoning home）在使用者不知情的情形之下連線到微軟伺服器。\[13\]\[14\]\[15\]隨後微軟承認的確有這個行為，但是不承認它是間諜軟體。\[16\]\[17\]微軟在隨之而來的壓力下，終於宣佈以後的WGA工具改為只會每兩星期進行背景連線通訊。\[18\]微軟也會提供WGA試驗版的移除說明。\[19\]

儘管如此，微軟目前還是被控告，WGA會在反間諜軟體的狀態下顯示有「背景連線通訊」的行為。\[20\]而這個法律訴訟的結果目前還是未定案。

### 認證失誤

WGA可能產生認證失誤（false positives）的問題（錯誤地辨認正版的作業系統為「盜版」）。在任何的序列號都可能發生這類的問題。微軟架設一個論壇，用來協助使用者解決類似問題。\[21\] 最近有個名為「Not Sure」文章張貼在微軟的WGA幫助論壇，有很多使用者因為WGA的問題而氣得發狂。為解決這問題，微軟在[2010年3月](../Page/2010年3月.md "wikilink")推出了新的Windows啟動技術更新\[22\]（即KB971033\[23\]），使不少原來使用破解認證方法的盜版Windows登录時失效。

## 參考資料

## 外部連結

  - [微軟WGA官方網站](https://web.archive.org/web/20070202085706/http://www.microsoft.com/genuine/)
  - [微軟WGA官方網站](https://web.archive.org/web/20070508142400/http://www.microsoft.com/genuine/default.aspx?displaylang=en)
  - [微軟WGA官方網站](https://web.archive.org/web/20070429081652/http://www.microsoft.com/genuine/default.aspx?displaylang=zh-tw)
  - [微軟WGA官方網站](https://web.archive.org/web/20070505191743/http://www.microsoft.com/genuine/default.aspx?displaylang=zh-cn)
  - [微軟WGA官方網站](https://web.archive.org/web/20070523223231/http://www.microsoft.com/genuine/default.aspx?displaylang=zh-hk)
  - [WGA常見問題集](http://www.microsoft.com/genuine/downloads/faq.aspx)
  - [下載WGA (KB905474)](http://www.microsoft.com/downloads/details.aspx?FamilyID=f8b8bc77-cfa1-47bd-b325-7a6d3893add8&DisplayLang=en)
  - [eWeek article on Utility that disables the Windows Genuine Advantage Callback functionality](http://www.eweek.com/article2/0,1895,1979756,00.asp)
  - [移除WGA說明文章](http://support.microsoft.com/kb/921914)

[Category:針對微軟的批評與爭議](https://zh.wikipedia.org/wiki/Category:針對微軟的批評與爭議 "wikilink") [Category:數位版權管理](https://zh.wikipedia.org/wiki/Category:數位版權管理 "wikilink")

1.  [Microsoft.com - Description of the Windows Genuine Advantage Notifications application](http://support.microsoft.com/kb/905474/), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
2.  [Digital Inspiration - WGA Notifications](http://labnol.blogspot.com/2006/04/wga-notifications-this-copy-of-windows.html), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
3.  Announcement on usenet entitled "Windows Genuine Advantage - warning appears on activated machine" by Rubert Sland
4.  [Sydney Morning Herald - Microsoft back to drawing board on piracy](http://www.smh.com.au/news/breaking/microsoft-back-to-drawing-board-on-piracy/2005/08/08/1123353252441.html?oneclick=true), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
5.  [MSDN Blogs - New WGA Notifications Released](http://blogs.msdn.com/wga/archive/2006/11/29/new-wga-notifications-released.aspx), retrieved [December 3](https://zh.wikipedia.org/wiki/December_3 "wikilink")、2006
6.  [Microsoft.com - Microsoft Files Lawsuits to Protect Consumers and Software Resellers](http://www.microsoft.com/presspass/press/2005/sep05/09-19PiracyEnfSept05PR.mspx) , retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
7.  [InformationWeek - Microsoft: Users may have to prove legal Windows use](http://www.informationweek.com/story/showArticle.jhtml?articleID=187200796), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
8.
9.  [The Register - How to stop Microsoft's WGA phoning home](http://www.theregister.co.uk/2006/06/22/wga_remove/)
10. [Microsoft WGA FAQ](http://www.microsoft.com/genuine/downloads/StaticFAQ.aspx) , retrieved [October 20](https://zh.wikipedia.org/wiki/October_20 "wikilink")
11. [Microsoft's Calling Home Problem: It's a Matter of Informed Consent](http://www.groklaw.net/article.php?story=20060608002958907), retrieved [October 20](https://zh.wikipedia.org/wiki/October_20 "wikilink")
12. <http://www.webopedia.com/TERM/T/timebomb.html>
13. [Lauren Weinstein's Blog - Windows XP update may be classified as 'spyware'](http://lauren.vortex.com/archive/000178.html), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
14. [Microsoft's antipiracy (sic) tool "phones home" daily](http://news.zdnet.com/2100-3513_22-6081286.html?tag=nl.e589) , retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
15.
16. [Ars Technica - Microsoft admits Windows Genuine Advantage phones home](http://arstechnica.com/news.ars/post/20060608-7017.html), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
17. [Lauren Weinstein's Blog - Microsoft responds regarding Windows XP update vs Spyware](http://lauren.vortex.com/archive/000179.html), retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
18. [ZDNet - Microsoft to ease up on piracy (sic) check-ins](http://news.zdnet.com/2100-1009_22-6082334.html) , retrieved [June 13](https://zh.wikipedia.org/wiki/June_13 "wikilink")、2006
19.
20. [Lawsuit calls Microsoft's anti-piracy tool spyware | Seattle Post-Intelligencer](http://www.seattlepi.com/business/275780_msftsuit29.html), retrieved [June 29](https://zh.wikipedia.org/wiki/June_29 "wikilink")、2006
21. [Microsoft WGA Help Forum](http://forums.microsoft.com/Genuine/ShowForum.aspx?ForumID=442&SiteID=25)
22. <http://support.microsoft.com/kb/971033>
23. <http://macivilian.blogspot.com/2010/03/windows-7-kb971033.html>