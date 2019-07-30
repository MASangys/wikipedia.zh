[Microsoft_AppLocale.png](https://zh.wikipedia.org/wiki/File:Microsoft_AppLocale.png "fig:Microsoft_AppLocale.png")\]\] **Microsoft AppLocale**（常簡稱為**Applocale**或**Apploc**）是[微軟免費提供給](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows使用者的工具程式](https://zh.wikipedia.org/wiki/Windows "wikilink")，可以在以[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")（[UTF-16](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")）為基礎的Windows中執行非Unicode的應用程式，避免[亂碼](../Page/亂碼.md "wikilink")的問題。微軟強調，這個工具只是一個暫時性的解決方案，程式開發人員應以正規方式利用[Microsoft Layer for Unicode來建立純正的Unicode應用程式](https://zh.wikipedia.org/wiki/Microsoft_Layer_for_Unicode "wikilink")。

在AppLocale推出之前，要在[Windows XP等以Unicode為基礎的系統平台上模擬執行非Unicode應用程式所需要的語言環境時](../Page/Windows_XP.md "wikilink")，會透過「**控制台**」→「**地區及語言選項**」→「**非Unicode程式的語言**」來變更系統語言變數，以將應用程式中非Unicode的文字資料轉換成Unicode。但是這個方法在使用上會有限制：

1.  只有[系統管理員可以變更系統地區設定的值](https://zh.wikipedia.org/wiki/系統管理員 "wikilink")。
2.  變更系統地區設定後必須重新啟動系統才能生效。
3.  一次只能變更一種系統地區設定。

因此微軟設計了AppLocale這個工具程式來模擬對應的系統地區設定，以便在各種[字碼頁與Unicode之間進行轉換](https://zh.wikipedia.org/wiki/字碼頁 "wikilink")。

AppLocale的設計是以Windows XP中所引進的最新應用程式相容性技術為基礎，因此AppLocale只能安裝在Windows XP及之後的作業系統上，例如[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")。而[Windows 9x系列因為非Unicode基礎的先天設計限制](../Page/Windows_9x.md "wikilink")，所以注定不可能使用AppLocale。不過Windows XP前一版的[Windows 2000因為也是以Unicode為基礎的系統平台](../Page/Windows_2000.md "wikilink")，所以據說有[駭客透過一些高明的技巧成功地讓AppLocale在Windows](https://zh.wikipedia.org/wiki/駭客 "wikilink") 2000上運行\[1\]。

## 缺失與不便

AppLocale在使用上為人詬病的問題主要有三：

1.  造成以[Windows Installer封裝的安裝程式在執行時出現](../Page/Windows_Installer.md "wikilink")[亂碼](../Page/亂碼.md "wikilink")。
2.  透過AppLocale執行應用程式時總是會出現提示注意事項的對話視窗。
3.  不能在[Windows 2000運行](../Page/Windows_2000.md "wikilink")。

第一個問題是AppLocale會在「**Windows\\AppPatch**」這個路徑下生成一個叫做「**AppLoc.tmp**」的檔案，而這個檔案中所記錄的訊息會影響到Windows Installer。解決方法之一是將AppLoc.tmp的檔案內容清空並設為[唯讀](https://zh.wikipedia.org/wiki/唯讀 "wikilink")。

不過頭兩個問題已有一個完善的非官方解決方案。網路代號為piaip的程式設計師[林弘德對Microsoft](https://zh.wikipedia.org/wiki/林弘德 "wikilink") AppLocale做了修改，並命名為「**pAppLocale**」（也常被稱為「**piaip AppLocale**」）重新發佈，免費提供給需要者下載。

## 注釋

## 现状

2016年后，AppLocale已不再在微軟官方網站提供下載，原因不明。但用戶仍可在各種第三方渠道下載并使用。

## 外部連結

  - \-{zh-tw: [Microsoft AppLocale 公用程式微軟官方下載頁(台灣正體)](https://web.archive.org/web/20121010065921/http://www.microsoft.com/zh-tw/download/details.aspx?id=13209);zh-cn: <https://web.archive.org/web/20120624231239/http://www.microsoft.com/zh-cn/download/details.aspx?id=13209> Microsoft AppLocale 实用程序官方下载页(大陆简体);zh-hk: [Microsoft AppLocale 公用程式微軟官方下載頁(香港繁體)](https://web.archive.org/web/20121027080209/http://www.microsoft.com/zh-hk/download/details.aspx?id=13209)}-
  - [pAppLocale下載頁](https://web.archive.org/web/20041118011024/http://ntu.csie.org/~piaip/)

[Category:微软软件](https://zh.wikipedia.org/wiki/Category:微软软件 "wikilink") [Category:Windows_XP](https://zh.wikipedia.org/wiki/Category:Windows_XP "wikilink") [Category:國際化與在地化](https://zh.wikipedia.org/wiki/Category:國際化與在地化 "wikilink")

1.  要規避掉對作業系統的檢查而在Windows 2000平臺安裝或直接從已安裝好的電腦複製過來並不困難，但是如此並無法正常運行。