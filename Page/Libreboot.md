**Libreboot**（原名為**GNU Libreboot**）是一個目標為取代專有的[BIOS](../Page/BIOS.md "wikilink")[韌體](../Page/韌體.md "wikilink")的[自由软件](../Page/自由软件.md "wikilink")，僅執行最少的工作來載入並執行現代的[32位元](../Page/32位元.md "wikilink")或[64位元](../Page/64位元.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")。

## 特徵

Libreboot被設定為沒有專有的二進制大型物件的[coreboot](https://zh.wikipedia.org/wiki/coreboot "wikilink")\[1\]。但Libreboot並不是coreboot的直接[分支](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")；相反地，其與它的上游coreboot並行且緊密合作，並會把所有上游的新東西引入自己的原始碼裡面，並儘可能將補丁合併回上游。除了移除專有軟體以外，libreboot也會試著透過[組建自動化](../Page/組建自動化.md "wikilink")與簡化安裝過程來讓coreboot更易於使用\[2\]\[3\]。

Libreboot專案做出讓一些[ThinkPad](../Page/ThinkPad.md "wikilink")、[Chromebook](../Page/Chromebook.md "wikilink")與[MacBook](../Page/MacBook.md "wikilink")筆記型電腦與[服务器](../Page/服务器.md "wikilink")和[工作站](../Page/工作站.md "wikilink")[主板](../Page/主板.md "wikilink")的完全自由變體可以正確執行的修改\[4\]\[5\]。根據其本身的文件，它可以執行任何在顯示上使用核心模式設定（KMS）的[Linux发行版](../Page/Linux发行版.md "wikilink")，而[Microsoft Windows不被支援](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，Libreboot也不鼓勵使用它。而對BSD的支援程度則多半未經測試，但是有一些成功讓[OpenBSD](../Page/OpenBSD.md "wikilink")與[NetBSD](../Page/NetBSD.md "wikilink")開機的回報\[6\]。

## 歷史

[自由软件基金会](../Page/自由软件基金会.md "wikilink")（FSF）認可Libreboot\[7\]，其也在2016年5月14日成為[GNU計劃](../Page/GNU計劃.md "wikilink")的官方專案\[8\]。然而，在2016年9月16日時，做為對GNU計劃因為員工回報性騷擾而開除一名[跨性別](../Page/跨性別.md "wikilink")員工的回應\[9\]，Libreboot的首席開發者Leah Rowe宣佈抵制FSF並將Libreboot從GNU計劃中移除。FSF方面則於2016年9月16日公開否認這些指控\[10\]。Rowe則於2016年9月23日進一步指控FSF「不讓Libreboot離開」\[11\]。Libreboot貢獻者則指稱Leah Rowe決定從GNU單方面分離，並把她的個人意見當作整個Libreboot社群的意見發佈，但也沒有事先問過其他貢獻者\[12\]。到了2017年1月，[理查德·斯托曼](../Page/理查德·斯托曼.md "wikilink")宣佈將Libreboot從GNU計劃中移除\[13\]。

2017年4月2日，對GNU的批評被移除，而系統管理員Alyssa Rosenzweig也宣佈了Libreboot網頁不再僅一人控制。對於歧視性開除的謠言是否屬實，她說「也許是。也許不是。」Leah Rowe也在信中道歉：「傷害了很多人，其中大多數人並未參與任何相關的事件。」\[14\]三個星期後，在一篇在[Reddit](../Page/Reddit.md "wikilink")上的貼文中，Rowe澄清說，她仍持續參與Libreboot，但已不再擔任專案領導人。她也對離開GNU表示遺憾，並表示大多數的Libreboot開發者都贊成重新加入\[15\]。

## 安全問題

2017年5月1日，英特爾確認並修復了一個在其管理引擎韌體中的遠端提升權限漏洞\[16\]，這是一個Coreboot與Libreboot社群長久以來懷疑是否存在的漏洞\[17\]\[18\]。每個配有英特爾標準管理、[Intel主动管理技术或是小型企業科技的英特爾平臺](https://zh.wikipedia.org/wiki/Intel主动管理技术 "wikilink")，從2008年的[Nehalem微架構](../Page/Nehalem微架構.md "wikilink")到2017年的[Kaby Lake微架構都在IME](../Page/Kaby_Lake微架構.md "wikilink")（英特爾管理引擎）中有遠端安全漏洞\[19\]\[20\]。IME中的另一個安全漏洞則與Intel vPro有關，硬體可以透過它來遠端存取，嚴重的話，電腦甚至會被摧毀\[21\]。

## 支援的系統

Libreboot的系統支援包含了下列的系統：\[22\]\[23\]\[24\]

  - 伺服器主機版：[華碩](../Page/華碩.md "wikilink") KFSN4-DRE與華碩 KGPE-D16
  - 桌上型主機版：華碩 KCMA-D8、英特爾 D510MO、技嘉 GA-G41M-ES2L與Apple [iMac](https://zh.wikipedia.org/wiki/iMac "wikilink") 5,2
  - 筆記型電腦：華碩 [Chromebook](../Page/Chromebook.md "wikilink") C201、聯想 [ThinkPad](../Page/ThinkPad.md "wikilink") X60/X60s、聯想 ThinkPad X60 Tablet、聯想 ThinkPad T60（部份例外）、聯想 ThinkPad X200、聯想 ThinkPad R400、聯想 ThinkPad T400、聯想 ThinkPad T500、Apple [MacBook](../Page/MacBook.md "wikilink") 1.1與Apple MacBook 2.1

## 參考資料

## 外部連結

  -
[Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink")

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