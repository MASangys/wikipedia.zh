**Therac-25事件**是在[軟體工程界被大量引用的案例](https://zh.wikipedia.org/wiki/軟體工程 "wikilink")。Therac-25是（AECL）所生產的[放射線療法機器](https://zh.wikipedia.org/wiki/放射線療法 "wikilink")，在Therac-6和Therac-20之後推出（以往的Therac-6和Therac-20是加拿大原子能有限公司和法國的CGL公司合作開發）。在1985年到1987年之間，在美國及加拿大至少有六起和Therac-25相關的醫療事故，因為軟體設計時的瑕疵，使病人受到了[過量的輻射](../Page/急性辐射综合症.md "wikilink")\[1\]。軟體的瑕疵是因為[競爭危害](../Page/競爭危害.md "wikilink")（二個同時進行程式之間時序衝突造成的問題），有瑕疵時會使病患接受到比正常劑量高一百倍的輻射，因此造成患者死亡或重傷\[2\]。

此一事故突顯了[安全關鍵系統若使用軟體控制時的潛在危險性](https://zh.wikipedia.org/wiki/安全關鍵系統 "wikilink")，也是[軟體工程及](https://zh.wikipedia.org/wiki/軟體工程 "wikilink")[医学信息学](../Page/医学信息学.md "wikilink")的經典案例。另外因為工程師的過度自信\[3\]，而且沒有進行適當的[盡職調查](../Page/盡職調查.md "wikilink")來修復已知的軟體问題，這也是一個極端的例子，工程師因為對其初期的工程過度自信，沒有相信終端用戶提出的問題，最後產生了嚴重的結果。Therac-25事件也因而喚醒[軟體開發工程化管理方法論的省思](https://zh.wikipedia.org/wiki/軟體開發 "wikilink")。

## 設計

Therac-25可以進行二種[放射線療法](https://zh.wikipedia.org/wiki/放射線療法 "wikilink")：

  - 直接，會在短時間內給予短劑量的高能（5 MeV至25 MeV）電子束。

  - 療法，會將高能量（25 MeV）電子撞擊特定物質，以產生[X射線](https://zh.wikipedia.org/wiki/X射線 "wikilink")。

若是要進行直接電子束療法，設備會直接產生低能量的電子束，利用電磁鐵掃描方式讓電子束分散到安全的劑量範圍。若是要進行百萬伏特級X射線療法，設備會轉動四個零件調整電子束的路徑，使電子束進入X射線腔中，而X射線腔也有設備會偵測電子束的強度。

## 問題描述

此事件發生時，所發射的是高能量的電子束，而不是預期的低能量電子束，而且設備對應的零件沒有讓電子束進入X射線腔中。以前的機種有硬體機制以避免這種情形發生，而Therac-25取消了硬體互鎖機制，為了安全起見改用軟體的互鎖機制。軟體互鎖機制在有[競爭危害](../Page/競爭危害.md "wikilink")時會失效。其缺陷如下：有一個測試程序中一位元組的計數器常常會[溢位](https://zh.wikipedia.org/wiki/算術溢位 "wikilink")，若操作員恰好在計數器溢位時輸入命令，軟體互鎖機制會失效\[4\]。

高能量的電子束給予的能量是理想輻射劑量的100倍，是可能會造成[β輻射的致命劑量](../Page/Β粒子.md "wikilink")。患者Ray Cox描述其感覺像「強烈的電擊」，他因此尖叫跑出診療室\[5\]。幾天後病人開始出現，病人也開始出現[辐射過量的症狀](../Page/急性辐射综合症.md "wikilink")，其中有三個病患後來因為辐射過量而死亡\[6\]。

## 根本原因

調查委員會調查後的結論是此一系列事故的主因是不良的軟體設計及開發實務，沒有明確的將主因歸因到所找到的軟體編程錯誤。而軟體的設計方式也讓軟體在實務上不可能以[自動化測試進行測試](https://zh.wikipedia.org/wiki/自動化測試 "wikilink")\[7\]。

研究這系列事故的研究者發現了幾個造成此事件的主因，包括了以下的組織層面原因：

  - AECL沒有將程式碼由第三方來進行[审查](../Page/代码审查.md "wikilink")。
  - AECL在軟體設計評估時，沒有考慮設備產生預期結果的方式，以及會有哪些已知的失效模式，這些形成了[可靠度建模及](https://zh.wikipedia.org/wiki/可靠度 "wikilink")[风险管理](../Page/风险管理.md "wikilink")的通用技巧。
  - 系統在運作時，有發現有元件異常，中止了X光束，但是其顯示只顯示了"MALFUNCTION"（機能異常），後面配合了1到64的數字，而使用手冊沒有說明這些異常訊息，甚至連訊息都沒有列出。因此操作員按了P鍵，跳過了警告訊息，繼續運作。
  - AECL的人員，以及機器的操作者一開始不相信使用者的抱怨，這可能是因為過度的自信\[8\]。
  - AECL在到醫院組裝Therac-25設備之前，完全沒有將軟體及硬體一起組合測試。

研究者也發現一些[工程方面的原因](../Page/工程学.md "wikilink")：

  - 設備中有一個終端機（控制[PDP-11](../Page/PDP-11.md "wikilink")電腦），此錯誤只有在操作員在終端機鍵盤上輸出二個不常輸入的按鍵組合後才會出現，先輸入X選擇（錯誤的）25 MeV X光模式，之後輸入E，選擇（正確的）25 MeV 電子模式，之後輸入Enter，三個按鍵組合在8秒鐘內完成\[9\]，上述的按鍵組合看起來很少會按到，因此這個問題也不是很常出現，長期沒有被重視\[10\]。
  - 設計上沒有加入硬體機制避免電子束運作在高能量模式，而且沒有對應X光腔。
  - 工程師[复用了以前舊機種的代碼](../Page/代码复用.md "wikilink")，舊機種有硬體互鎖機制，因此軟體上的問題沒有造成失效。硬體的互鎖機制也沒有產生對應報告，說明互鎖曾被觸發，因此沒有辦法看出存在錯誤的軟體指令。
  - 硬體沒有提供軟體對應方式來確認感測器是否有正常工作（參考[開迴路控制器](../Page/開迴路控制器.md "wikilink")）。X光腔和X光轉向系統是首先造成此失效的原因。製造商曾建議增加冗餘的開關來交互檢查其狀態及運作。
  - 設備的控制[行程](../Page/行程.md "wikilink")沒有和操作員介面的行程建立[互斥鎖](https://zh.wikipedia.org/wiki/互斥鎖 "wikilink")，因此若操作員設定的太快，就有可能有[競爭危害](../Page/競爭危害.md "wikilink")。這部份在測試時沒有測到，因為操作員需要一段時間熟悉相關操作，才能輸入的夠快，觸發此一。
  - 軟體中有設定旗標變數，但是有變化時會讓變數加1，而不是將其設定為固定的非零值，因此偶爾會出現[算術溢位](https://zh.wikipedia.org/wiki/算術溢位 "wikilink")，讓旗標變數變為0，軟體就會跳過安全相關的檢查。

此軟體是用[組合語言撰寫](https://zh.wikipedia.org/wiki/組合語言 "wikilink")，因此在測試時需要更多心力，也需要心力才能進行好的設計。不過語言選擇本身沒有列為事故的主要原因。設備也使用其自己的[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。

Leveson指出此事件的一個重大教訓就是不可以假設復用的軟體就一定安全： 「有一個天真的假設，就是認為軟體復用以及用現有的商業軟體可以增加安全性，因為要使用的軟體已經頻繁使用過。復用的軟體模組無法保證在配合新系統使用時的安全性...」\[11\]。為了因應像Therac-25這類的事件，創立了標準，導入了針對醫療設備的開發生命週期標準，而且也有針對使用時的特定建議作法\[12\]。

## 参见

  -
  - [软件工程主题列表](../Page/软件工程主题列表.md "wikilink")

  - [工程倫理](../Page/工程倫理.md "wikilink")

  - [游離輻射](../Page/游離輻射.md "wikilink")

  -
  - [核能及輻射事故](https://zh.wikipedia.org/wiki/核能及輻射事故 "wikilink")

  -
  - [程序错误](../Page/程序错误.md "wikilink")

## 參考資料

## 延伸閱讀

  - (short summary of the Therac-25 Accidents)

[Category:工程故障](https://zh.wikipedia.org/wiki/Category:工程故障 "wikilink") [Category:健康災害](https://zh.wikipedia.org/wiki/Category:健康災害 "wikilink") [Category:卫生信息学](https://zh.wikipedia.org/wiki/Category:卫生信息学 "wikilink") [Category:核医学](https://zh.wikipedia.org/wiki/Category:核医学 "wikilink") [Category:程式錯誤](https://zh.wikipedia.org/wiki/Category:程式錯誤 "wikilink") [Category:软件工程](https://zh.wikipedia.org/wiki/Category:软件工程 "wikilink") [Category:医疗事故](https://zh.wikipedia.org/wiki/Category:医疗事故 "wikilink")

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