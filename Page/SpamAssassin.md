{{ RoughTranslation |en:SpamAssassin }}

**SpamAssassin**是Apache發布的計算機程序許可證2.0，用於垃圾郵件過濾，基於內容的匹配規則。現在由Apache基金會維護。

SpamAssassin使用多種垃圾郵件檢測技術，包括DNS為基礎和校驗的垃圾郵件檢測、貝葉斯過濾、外部程序、黑名單和在線資料庫。

該程序被整合到郵件伺服器自動過濾所有郵件的網站。它也可以運行個人用戶在自己的郵箱，被整合一些郵件程序。SpamAssassin是高度可配置的，如果作為全系統過濾器仍然可以配置為支持每個用戶的喜好。

2006年SpamAssassin被Linux新媒體獎（New Media
Award）授予“最佳的基於Linux的反垃圾郵件解決方案\[1\]。”

## 歷史

SpamAssassin是由賈斯汀·梅森（Justin Mason）對先前Mark
Jeftovic所發展的filter.plx進行改造。梅森幾乎改寫所有Jeftovic的代碼，並上傳到SourceForge.net。2004年夏天該項目成為Apache軟件基金會的項目。

## 使用

SpamAssassin的是一個Perl的應用程式（Mail::SpamAssassin in
CPAN）。它可以作為一個運行獨立的應用程序或另一個應用程序（如[MailScanner](https://zh.wikipedia.org/wiki/MailScanner "wikilink")、[MIMEDefang](https://zh.wikipedia.org/wiki/MIMEDefang "wikilink")、[Amavis](https://zh.wikipedia.org/wiki/Amavis "wikilink")）的子程序或作為客戶端（spamc）的通信用守護行程（spamd）。

## 網絡為基礎的過濾方法

SpamAssassin還支持：

  - [DNS-based blackhole
    lists和](https://zh.wikipedia.org/wiki/DNSBL "wikilink")[DNS-based
    whitelists](https://zh.wikipedia.org/wiki/DNSWL "wikilink")
  - URI黑名單，像是[SURBL或URIBL](https://zh.wikipedia.org/wiki/SURBL "wikilink").com
  - [Hashcash](https://zh.wikipedia.org/wiki/Hashcash "wikilink")
  - 發件人策略框架（Sender Policy Framework）和域名密鑰識別郵件（DomainKeys Identified
    Mail）

## Bayesian過濾

SpamAssassin的默認情況下，通過貝葉斯過濾試圖加強其自己的規則，但貝葉斯學習是最有效方式是由實際用戶來輸入。為此，SpamAssassin提供命令行工具sa-learn，會建立ham和spam資料夾，来训练SpamAssassin识别用户收到的各种不同的垃圾邮件，spam大都是垃圾邮件，ham是非垃圾邮件。

## SA-compile

SA-compile是一個實用程序與SpamAssassin的作為版本3.2.0。它編譯一個SpamAssassin的規則集到一個確定的有限自動機，讓SpamAssassin的使用處理器功率更有效。

## 注釋

## 外部連結

  - [SpamAssassin official homepage](http://spamassassin.apache.org/)
  - [SpamAssassin Wiki](http://wiki.apache.org/spamassassin/)
  - [sa-update](http://wiki.apache.org/spamassassin/RuleUpdates#head-b6f1953fb1dc659b7de160effffbe95e9e00d3b1)
    Automatically updating SA
  - [SpamAssassin Rules Emporium
    (SARE)](https://web.archive.org/web/20060827144224/http://www.rulesemporium.com/)
    containing many very good rules for filtering with SA（[not updated
    any
    more](https://web.archive.org/web/20060827144224/http://www.rulesemporium.com/)
    since early 2008）。
  - [OpenProtect's SpamAssassin sa-update
    channel](https://web.archive.org/web/20061030025059/http://saupdates.openprotect.com/)
    to automatically update SA with the newest and best SARE rules（not
    updated any more, see above）。
  - [Linux New Media
    Awards 2006](https://web.archive.org/web/20061205191334/http://www.linuxnewmedia.com/Press/Press_Releases/Awards_2006)
    showing that SpamAssassin received 69% of the vote for "best
    Linux-based anti-spam solution."
  - [Vipul's Razor (SourceForge)](http://razor.sourceforge.net/)
  - [Pyzor
    (SourceForge)](https://web.archive.org/web/20060209035953/http://pyzor.sourceforge.net/)
  - [Exchange-SpamAssassin
    Sink](https://web.archive.org/web/20100421233449/http://www.christopherlewis.com/ExchangeSpamAssassin.htm)
  - [Questions about
    sa-compile](http://www.nabble.com/forum/ViewPost.jtp?post=9428488&framed=y)

[Category:垃圾郵件過濾](https://zh.wikipedia.org/wiki/Category:垃圾郵件過濾 "wikilink")
[Category:跨平台軟件](https://zh.wikipedia.org/wiki/Category:跨平台軟件 "wikilink")

1.