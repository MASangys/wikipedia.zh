**Searx** () 是一款[自由的](../Page/自由软件.md "wikilink")[元搜索引擎](https://zh.wikipedia.org/wiki/元搜索引擎 "wikilink")\[1\]\[2\]\[3\]\[4\]\[5\]\[6\]\[7\]\[8\]，其以[AGPLv3授權](https://zh.wikipedia.org/wiki/GNU_Affero通用公共许可证 "wikilink")，目標是保護其使用者的[隐私权](../Page/隐私权.md "wikilink")\[9\]\[10\]\[11\]\[12\]。所以Searx不會蒐集結果並與[搜尋引擎分享使用者的](https://zh.wikipedia.org/wiki/网络搜索引擎 "wikilink")[IP地址](../Page/IP地址.md "wikilink")或搜尋歷史。搜尋引擎的[追蹤cookies也被阻擋](../Page/Cookie.md "wikilink")，避免產生[過濾氣泡](https://zh.wikipedia.org/wiki/過濾氣泡 "wikilink")\[13\]\[14\]\[15\]。預設情況下，Searx透過HTTP POST傳送查詢請求，藉此避免使用者查詢的字串出現在網頁伺服器上的紀錄檔中\[16\]。Searx的靈感來自專案\[17\]，但其並未實作Seeks的[P2P使用者結果排名](../Page/對等網路.md "wikilink")。

每個搜尋結果都是指向目標網頁的直接連結，而非如[Google所使用的追蹤重新導向連結](../Page/Google搜索.md "wikilink")。此外，如果有的話，這些直接連結也會有「快取」與／或「代理」連結，這些連結讓使用者可以在不用實際進入結果頁面的情況下檢視網頁。「快取」連結指向[archive.org中的存檔版本](../Page/互联网档案馆.md "wikilink")，而「代理」連結則是透過以Searx為基礎的網頁代理來檢視當下的頁面。除了一般的搜尋以外，這個搜尋引擎也有可以搜尋特定領域的分頁：檔案、圖片、[信息技术](../Page/信息技术.md "wikilink")、地圖、音樂、新聞、科學、社群媒體與影片等\[18\]\[19\]。

除了searx.me這個最廣為人知的站臺以外，Searx也有許多不同網址，由使用者自行維護的站臺\[20\]\[21\]，其中一些提供了透過[Tor](../Page/Tor.md "wikilink")連線的服務\[22\]。"Meta-searx"網站則每次搜尋都會從不同的隨機站臺中搜尋\[23\]。Searx也提供了公開的[API](../Page/应用程序接口.md "wikilink")\[24\]\[25\]\[26\]，同時也有[Firefox](../Page/Firefox.md "wikilink")的搜尋提供者外掛程式\[27\]，還有Android應用程式\[28\]。

## 搜尋引擎與其他設定

Searx可以從82種不同的引擎中擷取所有類別的結果。這包含了主要的搜尋引擎與特定站點的搜尋，如[Bing](../Page/Bing.md "wikilink")、[Google](../Page/Google搜索.md "wikilink")、[Reddit](../Page/Reddit.md "wikilink")、[维基百科](../Page/维基百科.md "wikilink")、[Yahoo與](../Page/Yahoo!_Search.md "wikilink")[Yandex](../Page/Yandex.md "wikilink")\[29\]。每個類別的搜尋引擎都可以透過「偏好設定」介面進行設定，而這些設定將會儲存在使用者瀏覽器的cookie中，不會儲存在伺服器端，且出於隱私的原因，Searx並未實作使用者登入模型。其他設定（如搜尋介面語言與搜尋結果語言等）也可以透過相同的方式設定\[30\]。

除了偏好設定的cookie以外，也可以在搜尋關鍵字前加上特定字串來修改每次查詢要使用的引擎、搜尋分類與／或要搜尋的語言\[31\]。

  - `!分類` — 搜尋指定的分類。
  - `?分類` — 除了預設的分類以外，同時也搜尋指定的分類。
  - `!引擎` — 使用指定的引擎搜尋。
  - `?引擎` — 除了預設的引擎以外，同時也使用指定的引擎搜尋。
  - `:語言` — 使用指定的語言搜尋。

`!`與`?`運算子可以多次指定來選取多個分類或引擎，例如`!google !deviantart ?images :japanese cow`。

## 站臺

任何使用者都可以維護自行建立的Searx站臺\[32\]\[33\]\[34\]，這樣就可以擁有最大化的隱私、避免公開站臺壅塞、即使清除瀏覽器cookie也可以保留自訂的設定、可以審核執行的程式碼等等\[35\]\[36\]\[37\]。使用者可以把他們建立的站臺新增到所有公開站臺的可編輯清單上，或是讓其保持隱祕\[38\]\[39\]。還可以將公開站臺上沒有的搜尋引擎新增到自行架設的站臺上\[40\]。

還有另一個使用不同Searx站臺與／或自行維護站臺的理由是，自2019年起，Google已經開始封鎖某些站臺，包含某些searx.me所使用的IP，此時從這些站臺搜尋會出現「Google（意外當機：需要CAPTCHA）」錯誤\[41\]。作為回應，某些站臺已修改為默默跳過使用Google搜尋，即便它是唯一一個指定的引擎也一樣\[42\]\[43\]。

## 參考資料

## 外部連結

  - [官方網站](https://searx.me/)
  - [公開的Searx站臺](https://github.com/asciimoo/searx/wiki/Searx-instances)

[Category:網路搜尋引擎](https://zh.wikipedia.org/wiki/Category:網路搜尋引擎 "wikilink") [Category:互聯網隱私軟件](https://zh.wikipedia.org/wiki/Category:互聯網隱私軟件 "wikilink")

1.   Trisquel GNU/Linux - Run free\! |website=trisquel.info |language=en |access-date=2017-08-31}}

2.

3.   Me and my Shadow |access-date=2017-08-31}}

4.   Glynsky and Pete |access-date=2017-08-31}}

5.

6.

7.

8.   Signor D |access-date=2017-08-31}}

9.   Freedif |website=freedif.org |language=en-US |access-date=2017-08-30}}

10.

11.

12.

13.

14.

15.

16.
17.

18.

19.

20.

21.

22.
23.
24.

25.  Automating OSINT Blog |website=www.automatingosint.com |language=en-US |access-date=2017-08-31}}

26.

27.

28.

29.

30.

31.

32.

33.

34.

35.

36.

37.

38.
39.
40.

41.

42.

43.