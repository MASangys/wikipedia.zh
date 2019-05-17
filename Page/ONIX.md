**線上資訊交換標準**，****（****），是針對圖書而發展的網路資料交換標準，目的在於增進[電子商務](https://zh.wikipedia.org/wiki/電子商務 "wikilink")，提供[網際網路書商豐富而標準化的產品資訊](https://zh.wikipedia.org/wiki/網際網路 "wikilink")，並因應圖書[批發商及](https://zh.wikipedia.org/wiki/批發商 "wikilink")[零售商各種格式書目資訊交換的需求](../Page/零售商.md "wikilink")。

## 發展歷程

[1999年7月](https://zh.wikipedia.org/wiki/1999年7月 "wikilink")，美國出版者協會（，）召開會議，與60多家[出版社及線上書商共同討論如何在](../Page/出版社.md "wikilink")[網際網路銷售圖書](https://zh.wikipedia.org/wiki/網際網路 "wikilink")，會中決議成立一項計畫，探討出版社提供產品資訊給網際網路書店的資料需求。六個月之後，2000年元月，的第一版問世，即ONIX
Produce Information Standards 1.0。在英國，圖書工業通訊組織（Book Industry
Communication，簡稱BIC）於1998年出版了BIC
Basic標準，旨在滿足所有零售書商的需求。在歐洲，電子數據交換組織[EDItEUR](https://zh.wikipedia.org/wiki/EDItEUR "wikilink")（Electronic
Data Interchange to
Europe）開發了[EPICS數據字典](https://zh.wikipedia.org/wiki/EPICS "wikilink")（EDItEUR
Product Information Communication Standards），主要用於保存圖書貿易產品方面的資訊。

ONIX就是在美國的ONIX、英國的BIC
Basic以及EDItEUR的EPICS等標準的基礎上發展起來的。維護ONIX標準的單位主要是歐洲[EDI團體](https://zh.wikipedia.org/wiki/EDI "wikilink")（European
EDI group，簡稱EDItEUR）、圖書工業研究團體（Book Industry Study
Group，簡稱BISG）以及英國的BIC三個團體。此外，還有法國、德國和韓國的使用者團體也積極參與討論，並成立一個[ONIX
IMPLEMENT線上討論群](https://zh.wikipedia.org/wiki/ONIX_IMPLEMENT "wikilink")，討論ONIX實際運用所產生的問題及其解決方案，以做為未來ONIX發展的修改依據。ONIX的新版陸續公佈，1.2版於[2000年11月](https://zh.wikipedia.org/wiki/2000年11月 "wikilink")，1.2.1版於[2001年7月1日](https://zh.wikipedia.org/wiki/2001年7月1日 "wikilink")，2.0版於[2001年7月25日](https://zh.wikipedia.org/wiki/2001年7月25日 "wikilink")，2.0修正版於8月2日，2.1版及ONIX代碼表第一版於[2003年6月](../Page/2003年6月.md "wikilink")，2.1更新版於[2005年2月推出](../Page/2005年2月.md "wikilink")，目前最新版為2009年4月的Release
3.0 及2012年4月的新版代碼表（Code List,Issue17）。

## 內容

在ONIX標準中，一筆ONIX記錄代表一個產品的資訊訊息，採用[XML作為交換語法](../Page/XML.md "wikilink")，利用[XML
DTD來定義欄位的必備與非必備](https://zh.wikipedia.org/wiki/XML_DTD "wikilink")、可重複與順序關係，並有指引手冊詳述每一欄位的標準定義，以確保傳送者與接收者所指的是同一件事物。ONIX原始設計分為兩個層級：Level
1與Level 2。Level 1是一較小的子集，主要設計給小型出版社，並採用人類可以閱讀的參考名稱（XML Reference
Name），Level 2則盡量採用集合，以著錄更豐富的資訊並增加彈性，採用機器可讀的標籤（tag）。

ONIX for Books的2.1版共包含：XML訊息規格（message specification）、產品記錄規格（product
record specification）、主系列記錄規格（main series record
specification）與子系列記錄規格（subseries record
specification）四部份的規範指引。ONIX的XML產品資訊訊息由四個部分組成：一為起始（start of
message），XML標準在此宣告格式、內容以及ONIX產品資訊訊息的根元素；二為標頭資料段（header
block），主要著錄訊息規格；三為主體（the body of the
message），包含產品、主系列與子系列紀錄；以及結尾（the
end of message）等四部分。

## 應用

ONIX
International的使用者包括網路書店、圖書批發商與零售商、聚集資料庫廠商（aggregators）、出版社、索摘服務、書目供用中心、系統廠商、標準團體與圖書館等等。早期採用ONIX的主要是網路書店，例如[Amazon及](https://zh.wikipedia.org/wiki/Amazon "wikilink")[BN.com](https://zh.wikipedia.org/wiki/BN.com "wikilink")（Barnes
& Noble）等。

ONIX紀錄的產生有兩種方式：或由出版社自行產生，或委由廠商製作ONIX紀錄。提供ONIX紀錄製作服務的廠商，有的提供編輯軟體給出版社使用，有的替出版社將其原資料庫轉成ONIX紀錄，並協助傳遞給批發商、網路書店等。這些公司也逐步改進系統，自行產出ONIX紀錄。

在書目供應中心方面，[OCLC於](https://zh.wikipedia.org/wiki/OCLC "wikilink")[2001年9月已發展出將ONIX紀錄轉換成MARC的軟體](https://zh.wikipedia.org/wiki/2001年9月 "wikilink")，以利與[WorldCat的書目紀錄比對](../Page/WorldCat.md "wikilink")。國際[DOI基金會](../Page/DOI.md "wikilink")（International
DOI
Foundation，簡稱IDF）也參與ONIX的制定，主要有兩個合作目標：第一是定義DOI電子書的核心詮釋資料，第二則是對於圖書貿易產品資訊，擴增EPICS資料字典與ONIX國際標準，這將有助於ONIX電子書的處理。

## ONIX與圖書館

ONIX包含了許多商業交易的必備欄位，而[MARC無法適用商業需求的原因](../Page/機讀編目格式標準.md "wikilink")，主要在於它並未包含這些商業交易所需要的價格欄位、可得性及版權等資訊。

起先BIC並不期望圖書館會對ONIX感到興趣。不料[大英圖書館和](https://zh.wikipedia.org/wiki/大英圖書館 "wikilink")[美國國會圖書館](https://zh.wikipedia.org/wiki/美國國會圖書館 "wikilink")（Library
of Congress，簡稱LC）不只感到興趣而已，更進一步作ONIX與MARC的對應研究。英國國家書目研究基金（British
National Bibliography Research
Fund，簡稱BNBRF）的研究重點在於如何採用ONIX作為與圖書館的溝通工具，而LC則視ONIX為一種傳遞出版品預行編目（Cataloging
in Publication，簡稱CIP）與出版社間的資料格式。

## 參考資源

  - 圖書線上資訊交換標準（）之探究，教育資料與圖書館學，陳和琴、歐陽慧（淡江大學）民，92：41(2)，[P.219-235。](http://joemls.dils.tku.edu.tw/detail.php?articleId=41207&lang=zh_tw)
  - [ONIX for Books Release 2.1
    revision 03：圖書線上資訊交換標準](http://www.editeur.org/onix.html)
  - [ONIX for Serials
    Release 1.0：期刊線上資訊交換標準](https://web.archive.org/web/20070724124139/http://www.editeur.org/onixserials/050926_ONIX_SOH_overview_1.0.pdf)

[Category:圖書資訊科學](https://zh.wikipedia.org/wiki/Category:圖書資訊科學 "wikilink")