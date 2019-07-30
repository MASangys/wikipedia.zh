**Windows錯誤報告（WER）**（代號為Watson）是[Microsoft在](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Windows XP中引入的](../Page/Windows_XP.md "wikilink")[崩潰報告技術](https://zh.wikipedia.org/wiki/崩潰報告 "wikilink")\[1\]，此技術在之後的[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Windows Mobile](../Page/Windows_Mobile.md "wikilink")5.0和6.0中均被包含使用。雖然代號為Watson，但請不要與[Dr. Watson調試工具相混淆](https://zh.wikipedia.org/wiki/Dr._Watson "wikilink")，該工具會將記憶體内容轉儲至使用者的本地計算機設備上，Windows錯誤報告會收集並提供使用網路向[Microsoft發送發生錯誤之後的調試訊息](https://zh.wikipedia.org/wiki/Microsoft "wikilink")（[記憶體内容轉儲](https://zh.wikipedia.org/wiki/核心转储 "wikilink")）或停止響應的使用者桌面。未經使用者許可，不會發送任何數據。\[2\]當轉儲訊息（或者其他錯誤簽名訊息）發送至Microsoft伺服器時，Microsoft伺服器將對訊息進行分析處理，并在有可行解決方案時將方案返送會使用者。使用Windows錯誤報告來響應提供解決方案。Windows錯誤報告作為一個[Windows服務而運行](../Page/Windows服务.md "wikilink")，使用者可以選擇完全禁用。如果Windows錯誤報告本身崩潰，則作業系統會無法發送原始崩潰進程產生的錯誤報告。

## 歷史

#### Windows XP

Microsoft首次在Windows XP中引入了Windows錯誤報告。\[3\]

#### Windows Vista

[Windows Vista中的](../Page/Windows_Vista.md "wikilink") Windows錯誤報告得到了顯著改善。最重要的是，在此功能上創建了一組新的公共[API](../Page/应用程序接口.md "wikilink")，用於報告除應用程序崩潰和掛起之外的其他故障。\[4\]開發人員可以創建自定義報告並自定義報告用戶界面。在[MSDN中也記錄了這些新的API](https://zh.wikipedia.org/wiki/MSDN "wikilink")。Windows錯誤報告的體系結構在改進之後，變得重點關注可靠性和使用者體驗。而且WER在即使進程處於非常糟糕的狀態下也可以報告相關錯誤了。例如在進程遇到[堆棧耗盡](https://zh.wikipedia.org/wiki/堆棧 "wikilink")，PEB / TEB損壞的情況下。堆損壞在Windows Vista之前的早期操作系统中，該過程通常以靜默方式終止，而不會在這些條件下生成錯誤報告。除此以外，在修改中還引入了一個新的控制面板小程序「問題報告和解決方案」，用於記錄系統和應用程序錯誤和問題，並提出可能的問題解決方案。

#### Windows 7

問題報告和解決方案控制面板小程序已替換為[Windows 7和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Server 2008 R2上Windows](../Page/Windows_Server_2008.md "wikilink") 操作中心的“維護”部分。

新的應用程序問題步驟記錄器（PSR.exe）可用於Windows 7的所有版本，並且可以在遇到崩潰時收集用戶執行的操作，以便測試人員和開發人員可以重現該情況以進行分析和調試。\[5\]

## 系統設計

WER是一個[分佈式系統](../Page/分布式计算.md "wikilink")。客戶端軟件檢測錯誤情況，生成錯誤報告，標記存儲堆，並將錯誤報告給WER服務。WER服務記錄錯誤發生，然後，根據已知的特定錯誤信息，可能會從客戶端請求其他數據，或將客戶端指向解決方案。程式設計師可以訪問WER服務以檢索特定錯誤報告和基於統計的調試的數據。

WER客戶收集的錯誤將發送到WER服務。WER服務使用大約60台服務器連接到65TB存儲區域網絡，該網絡存儲錯誤報告數據庫和120TB存儲區域網絡，可存儲長達6個月的原始CAB文件。該服務被配置為每天接收和處理超過一億個錯誤報告，這足以使諸如[因特網蠕蟲之類的相關全局事件存活下來](../Page/電腦蠕蟲.md "wikilink")。\[6\]

## Buckets

在Microsoft Windows錯誤報告（WER）系統中，根據“存儲桶”組織崩潰報告。Buckets會按以下方式對問題進行分類：\[7\]

  - 應用名稱
  - 應用版本
  - 申請建設日期
  - 模塊名稱
  - 模塊版本
  - 模塊構建日期
  - 操作系统異常代碼\[8\] \[9\]/系統錯誤代碼\[10\]\[11\]
  - 和模塊代碼偏移

理想情況下，每個存儲桶都包含由同一個錯誤引起的崩潰報告。然而，在WER劃分中存在兩種形式的弱點：冷凝啟發式的弱點，這導致將報告從錯誤映射到太多桶中。例如，如果您再次編譯應用程序而沒有任何更改，則模塊構建日期將發生更改，同樣的崩潰將被置於另一個存儲桶中。擴展啟發式方法的弱點，導致將多個錯誤映射到同一個存儲桶中。例如，如果兩個不同的錯誤在[strlen函數内崩潰](https://zh.wikipedia.org/wiki/strlen "wikilink")，由於它們均使用了損壞的字符串叫用，所以兩者只會有一個存儲桶。發生這種情況是因為在Windows OS客戶端上生成存儲桶而不對內存轉儲執行任何符號分析。Windows錯誤報告客戶端選擇的模塊是堆棧頂部的模塊。對許多報告的調查導致故障模塊與原始桶確定存在了不同。\[12\]

## 第三方軟體

軟體和硬體製造商可以使用Microsoft的[Windows開發人員中心硬件和桌面儀表板](https://zh.wikipedia.org/wiki/Windows開發人員中心 "wikilink")（之前被稱為[Winqual](https://zh.wikipedia.org/wiki/Winqual "wikilink")）程式訪問其錯誤報告。\[13\]為了確保錯誤報告數據僅發送給負責產品的工程師，Microsoft要求感興趣的供應商獲得[VeriSign](../Page/威瑞信.md "wikilink") Class 3 Digital ID或DigiCert證書。\[14\]由更便宜的提供商頒發的數字證書（如[Thawte](https://zh.wikipedia.org/wiki/Thawte "wikilink")，[Comodo](https://zh.wikipedia.org/wiki/Comodo "wikilink")，[GlobalSign](../Page/GlobalSign.md "wikilink")，[GeoTrust](https://zh.wikipedia.org/wiki/GeoTrust "wikilink")，[Cybertrust](https://zh.wikipedia.org/wiki/Cybertrust "wikilink")，[Entrust](../Page/Entrust.md "wikilink")，[GoDaddy](../Page/GoDaddy.md "wikilink")，[QuoVadis](https://zh.wikipedia.org/wiki/QuoVadis "wikilink")，[Trustwave](https://zh.wikipedia.org/wiki/Trustwave "wikilink")，[SecureTrust](https://zh.wikipedia.org/wiki/SecureTrust "wikilink")，[Wells Fargo](https://zh.wikipedia.org/wiki/Wells_Fargo "wikilink")）不被接受。\[15\]\[16\]\[17\]\[18\]\[19\]

軟體和硬體製造商還可以通過將錯誤簽名鏈接到Windows錯誤報告響應來關閉與客戶的循環。這允許分發解決方案以及從客戶收集額外信息（例如重現他們在崩潰之前採取的步驟）並為他們提供支持的鏈接。

## 未來對軟件的影響

微軟報告稱，從Windows錯誤報告收集的數據對內部開發軟件的方式產生了巨大影響。例如，在2002年，[史蒂夫鮑爾默指出](https://zh.wikipedia.org/wiki/史蒂夫鮑爾默 "wikilink")，錯誤報告使Windows團隊能夠修復Windows XP SP1中所有Windows XP錯誤的29％。使用Office XP SP2修復了超過一半的[Microsoft Office](../Page/Microsoft_Office.md "wikilink") XP錯誤。\[20\]成功的部分是以[80/20規則判定的](https://zh.wikipedia.org/wiki/帕累托規則 "wikilink")。錯誤報告數據顯示，只有一小部分的錯誤導致了使用者可以看到的絕大多數問題。修復20％的代碼缺陷可以消除80％或更多用戶遇到的問題。[紐約時報的一篇文章確認錯誤報告數據有助於解決](https://zh.wikipedia.org/wiki/紐約時報 "wikilink")[Windows Vista和](../Page/Windows_Vista.md "wikilink")[Microsoft Office 2007測試版中出現的問題](../Page/Microsoft_Office_2007.md "wikilink")。\[21\]

## NSA的隱私問題與使用

儘管Microsoft已經提供了隱私保護，但他們承認，[個人身份信息可能包含在內存和應用程序數據中](../Page/個人可識別資訊.md "wikilink")，這些數據是在Windows錯誤報告編譯並發送回Microsoft的100-200 KB“minidumps”中編譯的。根據微軟的[隱私政策](https://zh.wikipedia.org/wiki/隱私政策 "wikilink")，他們堅持認為，如果將個人數據發送給微軟，它將不會用於識別用戶。\[22\]\[23\]但在向微軟報告問題時，用戶也需要信任微軟的合作夥伴。就目前已授予約450個合作夥伴訪問錯誤報告數據庫的權限，以查看與其設備驅動程序和應用程序相關的記錄。\[24\]

較舊版本的WER在沒有加密的情況下發送數據; 只有Windows 8的 WER 使用TLS加密。\[25\]2014年3月，微軟發布了針對Windows Vista，7和Server 2008的更新（KB2929733），用於加密WER的第一階段。\[26\]

2013年12月，一家獨立實驗室發現，當新的USB設備插入PC時，WER會自動向Microsoft發送信息。\[27\]

根據Der Spiegel的說法，微軟崩潰記者被美國國家安全局的TAO部門利用入侵墨西哥公安秘書處的計算機。根據相同的消息來源，Microsoft崩潰報告會在NSA的XKeyscore數據庫中自動收集，以便於此類操作。\[28\]

## 參考文獻

1.

2.

3.
4.

5.

6.

7.

8.

9.

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

25.

26.

27.
28.