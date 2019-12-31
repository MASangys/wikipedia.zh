> 本文内容由[SIGAINT](https://zh.wikipedia.org/wiki/SIGAINT)转换而来。


**SIGAINT**是一個運行在[暗網](../Page/暗网.md "wikilink")｢[Tor Hidden Service](../Page/Tor.md "wikilink")｣裡面的一家[電子郵件服務業者](../Page/电子邮件.md "wikilink")，以極嚴密的[匿名](../Page/匿名服务列表.md "wikilink")、[隱私和](../Page/网络隐私.md "wikilink")[安全性聞名](../Page/信息安全.md "wikilink")。SIGAINT 是暗網裡面歷史最悠久的、也是眾多資安專家推薦的電子郵件服務。\[1\]\[2\]\[3\]

## 使用方法

使用者必須使用 [Tor 瀏覽器](../Page/Tor.md "wikilink") 進入暗網才能註冊帳號，網址是sigaintevyh2rzvw.onion（注意！以此sigaint或以他的onion網址為關鍵字並使用[搜尋引擎例如Google](../Page/搜索引擎.md "wikilink")、Bing找到的網站，除了sigaint.org之外，都是冒充！假冒網站的網址後面還會有像是 .link, .cab, .city之類的[域名](../Page/域名.md "wikilink")，他們企圖騙取使用者的帳號密碼）。

註冊後，SIGAINT同時提供暗網和明網（一般的[網際網路](../Page/互联网.md "wikilink")） (暗網：@sigaintevyh2rzvw.onion）（明網：@sigaint.org) 兩種郵件地址，讓不使用暗網的人也能與SIGAINT用戶往來郵件。

免費用戶目前只有50MB容量，付費用戶有1G。

收發郵件，免費用戶只能使用[網頁郵件介面](../Page/Webmail.md "wikilink")，付費用戶也可使用[電子郵件客戶端軟體來收發](../Page/電子郵件用戶端.md "wikilink")，支援POP3、IMAP、SMTP，且只能以加密連線存取。

## 安全性

SIGAINT採取以下措施來保障用戶的安全和隱私：

  - [網頁郵件介面](../Page/Webmail.md "wikilink") (Webmail) 不需要 [Java](../Page/Java.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Flash](../Page/Flash_Video.md "wikilink") 和任何的[網路插件就能運行](../Page/插件.md "wikilink")。事實上，SIGAINT 建議使用者安裝 [NoScript](../Page/NoScript.md "wikilink") 來阻擋網頁上一切的[手稿語言](../Page/脚本语言.md "wikilink")。
  - 免費帳戶一年未使用即自動刪除，以免被他人冒用。（但付費帳戶永不自動刪除）
  - 所有實際儲存電子郵件的伺服器都在 [Tor 隱藏網路中](https://zh.wikipedia.org/wiki/Tor_Hidden_Service "wikilink")，而面對明網的伺服器只是[代理伺服器](../Page/代理服务器.md "wikilink")，負責轉發所有寄給 @sigaint.org 的電子郵件到 [Tor 隱藏網路中](https://zh.wikipedia.org/wiki/Tor_Hidden_Service "wikilink")（與反向轉發），本身不留任何郵件和使用者資料，所以就算政府[扣押或者](https://zh.wikipedia.org/wiki/扣押 "wikilink")[駭客攻陷了明網伺服器](../Page/黑客.md "wikilink")，也不能得到任何資訊。
  - 申請帳號時不問個人資料，付費帳號可用[比特幣支付](../Page/比特币.md "wikilink")（因此不會留下與真實身分掛鉤的銀行帳戶）。
  - [PGP](https://zh.wikipedia.org/wiki/良好隱私密碼法 "wikilink") 郵件加密和簽署都在使用者本機上進行，SIGAINT 伺服器上不留解密金鑰，因此就算伺服器被政府扣押或被駭客攻陷，也無法立即讀取已加密的郵件。
  - 寄送郵件給明網的其他業者的郵件伺服器時使用[STARTTLS加密通道](https://zh.wikipedia.org/wiki/STARTTLS "wikilink")。
  - 寄送郵件給暗網的其他業者的郵件伺服器時使用[Direct Peering](https://zh.wikipedia.org/wiki/Direct_Peering "wikilink")，資料完全不離開暗網。
  - 不提供｢忘記密碼｣的重設服務，降低帳號被他人劫持的風險。
  - 隨時可以自行刪除帳戶。
  - 最特殊的一點：其營運者和員工迄今都保持完全的匿名，所以沒有人能逼迫系統管理員交出伺服器存取方法。

## 歷史

因為 SIGAINT 的嚴密安全性，成為許多匿名活動人士的交流管道，包括揭露[極權政府](https://zh.wikipedia.org/wiki/極權國家 "wikilink")[貪腐或嚴重違反](https://zh.wikipedia.org/wiki/貪腐 "wikilink")[人權事件內幕的記者和公民](https://zh.wikipedia.org/wiki/人權 "wikilink")、[民運人士](https://zh.wikipedia.org/wiki/民運人士 "wikilink")，當然也包括非法活動和非法組織的聯繫，甚至可能有恐怖組織。也因此，許多國家政府（包括美國[FBI](../Page/联邦调查局.md "wikilink")）和[駭客組織頻頻對](../Page/黑客.md "wikilink") SIGAINT 的伺服器發動攻擊，但十幾年來無人能攻陷 SIGAINT 存放使用者資料和郵件的暗網伺服器。

  - 2014年，在美國FBI針對暗網的｢去匿名化行動｣("Operation Onymous")當中，400多部於暗網上的各種伺服器被破解出實體位置或持有人，而遭到大規模的查禁。在這行動中 SIGAINT 毫無損傷。
  - 2015年4月，多達70部的｢Tor惡意出口｣同時對 SIGAINT 發動[中間人攻擊](../Page/中间人攻击.md "wikilink")，他們改寫 .onion 地址的對應，讓明網連往 SIGAINT 的連線先繞經這些惡意伺服器再前往 SIGAINT 伺服器，藉此可能竊取到一些使用者輸入的帳號密碼。此事件後，SIGAINT 立刻增加明網伺服器和暗網伺服器之間的 [SSL 加密連線](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")，以使就算再發生中間人攻擊，也不會洩漏任何資訊。由於當時Tor網路的出口端點不多，同時有70台惡意出口發動攻擊已達6%，並不是容易的事，因此 SIGAINT 和 Tor 的研發人員推測是政府行動。\[4\]\[5\]
  - 2016年9月，明網上 sigaint.org 的兩台伺服器被 [ISP](../Page/互联网服务供应商.md "wikilink") 以模糊理由取消服務，但暗網上的服務不受影響，SIGAINT 也立刻換上新的伺服器。
  - 2016年10月，明網上 sigaint.org 的伺服器又中斷服務，至月底仍未恢復。

## 類似網站

還有一些電子郵件業者提供Tor隱藏網路裡的電子郵件服務。有些是只有暗網郵件地址和暗網伺服器；有些是只有明網郵件地址但提供暗網伺服器；有些則是暗網和明網郵件地址都有，並只提供暗網伺服器。以下是一些例子\[6\]

  - [Mail2Tor.com](http://mail2tor.com/)
  - [RiseUp.net](https://www.riseup.net)
  - [Autistici.org](https://Autistici.org)
  - [TorBox](https://web.archive.org/web/20170702004034/http://torbox3uiot6wchz.onion/)

相較於SIGAINT，有許多設置得不夠匿名的Tor隱藏網路郵件服務在FBI歷次掃蕩中被關閉。

## 参考资料

<references />

[Category:Tor_(匿名網絡)](https://zh.wikipedia.org/wiki/Category:Tor_\(匿名網絡\) "wikilink") [Category:匿名網路](https://zh.wikipedia.org/wiki/Category:匿名網路 "wikilink") [Category:电子邮件网站](https://zh.wikipedia.org/wiki/Category:电子邮件网站 "wikilink")

1.
2.
3.
4.
5.
6.  [更多Tor隱藏電子郵件服務](http://www.hacker10.com/internet-anonymity/list-of-the-best-tor-email-hidden-services/)