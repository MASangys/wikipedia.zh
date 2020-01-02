> 本文内容由[Unicode補完計畫](https://zh.wikipedia.org/wiki/Unicode補完計畫)转换而来。


**Unicode補完計畫**（**Unicode-at-on**，簡稱**UAO**，官方網站使用的識別系統用字是**Unicode補完計-{画}-**）是[台灣](https://zh.wikipedia.org/wiki/台灣 "wikilink")[電腦使用者針對](https://zh.wikipedia.org/wiki/電腦 "wikilink")[大五碼](../Page/大五碼.md "wikilink")（Big-5）延伸的紊亂、以及[微軟Code](https://zh.wikipedia.org/wiki/微軟 "wikilink") Page 950（[Microsoft Windows內建的Big](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")-5轉碼表）未收錄某些常用字（又稱缺字問題）以及缺乏對於[倚天中文系統](../Page/倚天中文系統.md "wikilink")、[中國海字集](../Page/中國海字集.md "wikilink")延伸中的[簡體中文](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")、[日文假名與](https://zh.wikipedia.org/wiki/日文假名 "wikilink")[日文漢字支援等問題所採取的其中一種解決方案](https://zh.wikipedia.org/wiki/日文漢字 "wikilink")（參看[大五碼\#影響](https://zh.wikipedia.org/wiki/大五碼#.E5.BD.B1.E9.9F.BF "wikilink")）。透過對Code Page 950的修改，使得原始採用[簡體中文或](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")[日語的內容](https://zh.wikipedia.org/wiki/日語 "wikilink")，在複製至ANSI架構的程式時能轉換為Unicode補完計畫字集下的對應字元，而不會造成缺字的問題（詳細字元請參看[字元的來源](https://zh.wikipedia.org/wiki/#.E5.AD.97.E5.85.83.E7.9A.84.E4.BE.86.E6.BA.90 "wikilink")）。它是一個[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。

[Unicode_font_support.png](https://zh.wikipedia.org/wiki/File:Unicode_font_support.png "fig:Unicode_font_support.png")

要留意的是「Unicode補完計畫」不等於[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。當你聽見有人說「我已安裝Unicode」，通常是他把「Unicode補完計畫」和Unicode混為一談。

「Unicode補完計畫」也不是用來解決軟體顯示亂碼的問題。電腦內要有相關的字形（例如支援整個Unicode漢字的字形），才能在電腦[顯示器看到](https://zh.wikipedia.org/wiki/顯示器 "wikilink")。因為「Unicode補完計畫」只包含編碼轉換表，並不包括字形在內。而有些日語程式裝在Windows XP所出現的亂碼問題，應使用[Microsoft AppLocale等程式去作內部轉換](../Page/Microsoft_AppLocale.md "wikilink")。

## 背景與原理

「Unicode補完計畫」的原理是把[大五碼造字區的區位和](https://zh.wikipedia.org/wiki/大五碼#.E7.A7.81.E4.BA.BA.E9.80.A0.E5.AD.97.E5.8D.80 "wikilink")[Unicode的相關字元作雙向對應](https://zh.wikipedia.org/wiki/Unicode "wikilink")，以達到無須借助[外字集](https://zh.wikipedia.org/wiki/外字集 "wikilink")、也能使大五碼文件或檔名使用原先欠缺的漢字。

由於大五碼僅收錄13,060個漢字\[1\]，對不少使用者而言確實不足夠，例如日語[假名](https://zh.wikipedia.org/wiki/假名 "wikilink")、人名、香港[粵語字](https://zh.wikipedia.org/wiki/粵語 "wikilink")、科學用的特殊字等等都欠缺。長久以來解決這種問題的方式都是加裝各種外字集，例如[櫻花輸入法](https://zh.wikipedia.org/wiki/櫻花輸入法 "wikilink")（支援日語假名）、[中國海字集](../Page/中國海字集.md "wikilink")、[香港增補字符集](../Page/香港增補字符集.md "wikilink")（[HKSCS](https://zh.wikipedia.org/wiki/HKSCS "wikilink")）等。但目前世界的潮流是以使用包含最多字數的Unicode為目標。以外字集收錄字符根本難以作為資料交換之用，除非對方也安裝了該外字集。

在預設狀態下，作業系統字碼表中，大五碼造字區是和「Unicode造字區」作雙向對應的，也就是說當電腦讀取到某個原先是落在造字區的內碼時，電腦會去讀取與其相對應的Unicode造字區字元。結果是，由於不是每人電腦內的Unicode造字區都使用同一造字檔案，所以把外字集的用字傳送給其他人時，對方若無安裝相同的外字集，就不能看到裡面的內容。

「Unicode補完計畫」試圖以修改作業系統字碼表的方式以解決問題。它把大五碼造字區的字元對應到相關的Unicode編碼。與造字不同的是，「Unicode補完計畫」讓這些字元保持了雙向流通性。在補完後的電腦上，當這些字元從大五碼轉變到Unicode儲存後，它們全都會被對應到正確的Unicode位置上，之後即使是對於沒有安裝補完計畫的電腦使用者，只要他的系統和程式支援Unicode，在讀取這些文字時，就完全沒有問題。

## 作業平台

「Unicode補完計畫」修改作業系統中的字碼表，處理Unicode和非Unicode字碼的對應。「Unicode補完計畫」首先是在以Unicode架構為核心的[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows NT](../Page/Windows_NT.md "wikilink")（包括[Windows 2000和](../Page/Windows_2000.md "wikilink")[Windows XP](../Page/Windows_XP.md "wikilink")）作業系統上開發，之後又支援了以[ANSI架構為核心的](https://zh.wikipedia.org/wiki/ANSI "wikilink")[Windows 98和](../Page/Windows_98.md "wikilink")[Windows Me](../Page/Windows_Me.md "wikilink")。

[Linux](../Page/Linux.md "wikilink")也有另外的使用者，開發[Linux版的補完計畫](https://web.archive.org/web/20070927224913/http://forums.gentoo.tw/viewtopic.php?t=41230)。

[Palm](../Page/Palm.md "wikilink")上也有另外的使用者，開發對應的補完計畫：

  - [CJKOS版本](http://forum.palmislife.com/viewthread.php?tid=22580&fpage=4)
  - [掌龍版本](http://forum.palmislife.com/viewthread.php?tid=22962&fpage=4)

### Unicode架構的Windows

包括[Windows 2000](../Page/Windows_2000.md "wikilink")、[Windows XP](../Page/Windows_XP.md "wikilink")、[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")，與未來的Windows系列。

修改的檔案：

  - $SYSDIR\\C_950.nls Unicode←→Big-5對照表
  - 如果使用者有安裝[Microsoft Applocale](https://zh.wikipedia.org/wiki/Microsoft_Applocale "wikilink")，安裝程式會將$WINDIR\\AppPatch\\AppLoc.tmp以一個同名的空白唯讀檔案取代。
  - 如果使用者沒有安裝Microsoft Applocale，安裝程式會直接產生一個空白的唯讀檔案：$WINDIR\\AppPatch\\AppLoc.tmp。

### ANSI架構的Windows

包括[Windows 98](../Page/Windows_98.md "wikilink")、[Windows ME](https://zh.wikipedia.org/wiki/Windows_ME "wikilink")。

修改的檔案：

  - $SYSDIR\\CP_950.nls IE（檔案總管）顯示時使用的轉碼表
  - $SYSDIR\\unicode.bin負責跟檔案系統操作相關的轉碼表（如果您有興趣可以這樣玩：把$sysdir\\unicode.bin砍了，在重開機後，系統會使用最原始的預設CodePage:437顯示，在這情況下所有存在於檔名中的中文字都會以『__』顯示，這包括大部份的桌面捷徑和幾乎整個『開始』功能表）
  - $SYSDIR\\GDI.exe在顯示字型時，取得字型的檔案（將CodePage內碼依此檔內含之轉碼表轉換成unicode碼，再以此unicode碼到TrueType字型檔中提取字型）

註：$SYSDIR是代表某[路徑的一個變數](https://zh.wikipedia.org/wiki/路徑 "wikilink")，在Windows XP預設是C:\\WINDOWS\\system32，在Windows 2000預設是C:\\WINNT\\system32，在Windows 98和Windows ME預設是C:\\WINDOWS\\system。

  -
    $WINDIR也是一個路徑變數，在Windows 98、Windows ME和Windows XP預設是C:\\WINDOWS，Windows 2000預設是C:\\WINNT。

## 字元的來源

在「Unicode補完計畫」的第2版中，字元的基本來源是參照「[中國海字集](../Page/中國海字集.md "wikilink")」，再加上中國海字集所遺漏的[簡體中文](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")、[日語和部分香港用字而成](https://zh.wikipedia.org/wiki/日語 "wikilink")。

「Unicode補完計畫」的2.40 Alpha 3版，除了大五碼原有的符號和漢字外，共收錄了4,916個漢字及漢字偏旁、日語的[半形及](https://zh.wikipedia.org/wiki/半形 "wikilink")[全形](https://zh.wikipedia.org/wiki/全形 "wikilink")[假名](https://zh.wikipedia.org/wiki/假名 "wikilink")、[俄語](https://zh.wikipedia.org/wiki/俄語 "wikilink")[西里爾字母等](https://zh.wikipedia.org/wiki/西里爾字母 "wikilink")，涵蓋了在[GB 2312](../Page/GB_2312.md "wikilink")（不是[GBK或](https://zh.wikipedia.org/wiki/GBK "wikilink")[GB 18030](../Page/GB_18030.md "wikilink")）、[Shift JIS之中出現的所有漢字](../Page/Shift_JIS.md "wikilink")，和[香港增補字符集](../Page/香港增補字符集.md "wikilink")之中，Unicode碼落在U+4E00～U+9FA5 （即Unicode 1.1版定義）的漢字。（因編碼空間不足的關係，並不收錄在香港增補字符集的Unicode擴充漢字）

## 使用上的問題

「Unicode補完計畫」原先的立意是避免利用造字，以達成擴充Big-5的目的：但由於Unicode環境尚未成熟、以及使用者的誤用，「Unicode補完計畫」有時反而為使用者本身──甚至其他使用者──帶來其他的麻煩。

### 網頁交換

這是「Unicode補完計畫」使用者可能會影響到其他使用者的最大問題。

一般的[網頁瀏覽器或](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[電子郵件客戶端](https://zh.wikipedia.org/wiki/電子郵件客戶端 "wikilink")，在使用者打出非該軟體顯示畫面預設編碼（例如寫一封用Big-5編碼的信件）的字元時，軟體會自動把這些字元轉換成[Unicode參照碼](https://zh.wikipedia.org/wiki/Unicode#HTML.E5.92.8CUnicode "wikilink")，例如「堃」會被自動轉換成「堃」；然而在補完後的電腦，由於即使打出的是原非大五碼預設的字元，也會被認為是大五碼的字元（裝了「Unicode補完計畫」的系統，在對照字碼表後，發現當中有這個字），因此就不會被轉換。這也就是說，其他使用者不一定能看見該使用者所打的字──除非他們也有裝「Unicode補完計畫」。於是這反而與「Unicode補完計畫」的創立宗旨背道而馳：原先避免以外字集解決缺字的「Unicode補完計畫」，反而變成另一套外字集。

解決方案：當使用者安裝「Unicode補完計畫」時，會獲得一份「[HTML](../Page/HTML.md "wikilink")外字相容轉換器」（另外也有[網路版](https://web.archive.org/web/20031121160638/http://cpatch.org/unicode/tool/converter.html)），可以直接把原本不屬於大五碼的字元轉換為參照碼；接下來只要使用這份夾雜着參照碼的文件，就能讓其他使用者也見到這些字元。另一種做法是，像推廣櫻花輸入法一樣推廣「Unicode補完計畫」，使其也變成一種人人使用的非官方標準。然而**最終的解決方案是放棄Big-5，將網頁或信件直接改用Unicode編碼。**\[2\]

### 新舊檔名

這是原櫻花輸入法使用者會面臨的問題。

在未安裝「Unicode補完計畫」的電腦，當使用者使用櫻花輸入法為檔案命名時，儲存在電腦內的檔名雖然是Unicode編碼，卻是在「Unicode造字區」內的字碼；而補完後的電腦，由於字碼表已被修改，這些檔案名稱在Unicode架構的程式的檢視下，就會變成空白；而對於ANSI架構的程式（例如[ACDSee](../Page/ACDSee.md "wikilink")、[Winamp](../Page/Winamp.md "wikilink")等），甚至會變成無法存取的亂碼。這就表示甚至連ANSI架構的作業系統（例如整個Windows 98）都無法存取該檔案。另外還有一個問題：若電腦是未安裝「Unicode補完計畫」的ANSI架構作業系統，以上的狀況就會剛好相反（以Unicode架構的作業系統則無此問題）。

解決方案：Unicode補完計畫內附一個檔名轉換程式，可以把造字區檔名和Unicode檔名互換，但僅能在Unicode架構的作業系統下使用；ANSI架構作業系統的使用者必須要手動改檔名。另一個比較有效率的作法：如果是雙系統的使用者，可以直接在Unicode架構的作業系統下使用改檔名程式，讓ANSI架構的作業系統使用。

### 其他問題

  - Unicode補完計畫的編碼不相容於香港增補字符集的編碼，兩者只能擇其一。簡單來說，即使Unicode補完計畫與香港增補字符集均有某一個字，但因這個字在大五碼中的位置不相同，故那個字只能在Unicode的環境下交換，不能直接透過大五碼交換。
  - Unicode補完計畫會使用到使用者造字區；也就是說如果使用者有自造字，這些字可能會不見。

<!-- end list -->

  -

      -
        PS：如果使用者的自有造字放在Unicode補完計畫提供的「造字保留區：0xFA40～0xFA63」內的話，則不在此限。

<!-- end list -->

  - 有人表示補完計畫會讓[Internet Explorer的自動選擇網頁編碼準確度下降](../Page/Internet_Explorer.md "wikilink")，但是無法證實。
  - 在安裝補完計畫後，[Microsoft FrontPage在處理Big](../Page/Microsoft_FrontPage.md "wikilink")5編碼網頁時會運作不正常（包括：存檔會當掉導致檔案大小歸零內容遺失），但是如果FrontPage是處理Unicode網頁，就能正常運作。

<!-- end list -->

  -

      -
        PS：這個問題只有在使用者的Windows其「非Unicode程式語系」是「正體中文」的情況下才會發生。

<!-- end list -->

  - 對於不是使用系統字碼表的軟體──例如[Mozilla Firefox等跨平台瀏覽器或](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[Java](../Page/Java.md "wikilink")軟體──補完計畫會無效，這些軟體需要「個別補完」（例如有些[社群版的Firefox](https://zh.wikipedia.org/wiki/Firefox社群版 "wikilink")，就有將補完後的字碼表編譯進去）。
  - Windows 98的[細明體字形](https://zh.wikipedia.org/wiki/細明體 "wikilink")（mingliu.ttc）比起Windows Me / 2000 / XP的版本來得舊。舊版字形有不少缺字情況；使用者必須在新版Windows中，複製細明體去更新Windows 98的字形檔案。
  - Windows 98 / Me的使用者需要再安裝「中國海字集」，才能正常顯示純文字檔案。
  - 由於[Windows XP Service Pack 2改進了](https://zh.wikipedia.org/wiki/Windows_XP#Windows_XP_Service_Pack_2 "wikilink")[系統檔案保護的能力](https://zh.wikipedia.org/wiki/系統檔案保護 "wikilink")，而補完計畫需要變更一個系統檔案，故當出現一個視窗，詢問是否要還原此系統檔案時，使用者必須選擇「不還原」此檔案，才能安裝成功。

## 不屬於Unicode補完計畫但內建其字碼表的軟體

  - [PieTTY](../Page/PieTTY.md "wikilink")：SSH與Telnet客戶端程式。
  - [OpenPCMan](../Page/PCMan.md "wikilink")：Telnet客戶端程式。
  - [Firefox](../Page/Firefox.md "wikilink") 2.0版：網頁瀏覽器。（Big5→Unicode單向使用Unicode補完計畫字碼表。）\[3\]\[4\]

## 相關條目

  - [大五碼](../Page/大五碼.md "wikilink")（Big-5）
  - [中國海字集](../Page/中國海字集.md "wikilink")
  - [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 參考文件

  - 「Unicode補完計畫」讀我檔案（附於安裝程式中）
  - [C_xxx.NLS & CP_xxx.NLS結構解說](https://web.archive.org/web/20060206114022/http://shlimazl.nm.ru/eng/nls.htm)
  - [Unicode.bin結構解說](https://web.archive.org/web/20050530073351/http://members.ozemail.com.au/~geoffch/samples/vxd/ifsmgr/)
  - [Windows File Protection: How to disable it on the fly](http://www.ntcore.com/Files/wfp.htm)

## 外部連結

  - [「Unicode補完計畫」官方舊站 - 鏡像](http://uao.no-ip.org/)
  - [中文編碼網頁-台灣Unicode補完計畫（按部首排序）-字](http://code.web.idv.hk/uao/uao.php)
  - <s>[「Unicode補完計畫」官方網站](https://web.archive.org/web/20051126182852/http://uao.cpatch.org/)</s> - 失聯站台
  - <s>[補完計畫救星](http://118.163.73.89:8080/ShuWinWeb)</s> - 失聯站台

[Category:中文软件](https://zh.wikipedia.org/wiki/Category:中文软件 "wikilink") [Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")

1.  大五碼普遍被認為包含13,053字，但在計算0xA259-0xA261的度量衡單位用字（兙兛兞兝兡兣嗧瓩糎），再減去重收了兩次的「兀」（0xC94A）和「嗀」（0xDDFC）後，應為13,060字。
2.  註：但是在原本就只有ANSI的網路環境下──例如[Telnet BBS](../Page/BBS.md "wikilink")──Unicode補完計畫還是只能當外字集用。此時使用者可以選擇有內建特殊字碼表的Telnet程式，如[PieTTY](../Page/PieTTY.md "wikilink")，即無須安裝「Unicode補完計畫」。
3.  <https://bugzilla.mozilla.org/show_bug.cgi?id=310299>
4.  <http://moztw.org/docs/big5/>