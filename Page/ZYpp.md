**ZYpp** （或稱**libzypp**）
是一個[软件包管理引擎](../Page/软件包管理系统.md "wikilink")，通常在[openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")/[SUSE以](../Page/SUSE.md "wikilink")[YaST](../Page/YaST.md "wikilink")、Zypper或[PackageKit為前端使用](../Page/PackageKit.md "wikilink")\[1\]。它提供一個強力的[可滿足性求解器來計算軟體包相依性](https://zh.wikipedia.org/wiki/布爾可滿足性問題 "wikilink")，也提供了一組方便的軟體包管理[API](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")\[2\]。它是一個由[Novell所贊助的](../Page/Novell.md "wikilink")[开放源代码且為](../Page/开放源代码.md "wikilink")[自由软件的專案](../Page/自由软件.md "wikilink")，採用[GNU通用公共许可证第二版或更新授權](../Page/GNU通用公共许可证.md "wikilink")。

**Zypper**為ZYpp[软件包管理器原生的](../Page/软件包管理系统.md "wikilink")[命令行界面前端](../Page/命令行界面.md "wikilink")，可用以安裝、移除、升級及查詢本機或遠端（通常為網路）媒體的軟體包。它的圖形等價介面為[YaST软件包管理器模組](../Page/YaST.md "wikilink")。它在[openSUSE上於版本](https://zh.wikipedia.org/wiki/openSUSE "wikilink")10.2
beta1開始使用。在openSUSE 11.1上，Zypper釋出了1.0版。2009年6月2日，[Ark
Linux宣佈其已經完成對其相依性求解器的審閱](https://zh.wikipedia.org/wiki/Ark_Linux "wikilink")，並選擇ZYpp及其前端介面來取代老化的apt-rpm\[3\]，並且是第一個這麼做的[Linux發行版](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")。Zypper也被[MeeGo](../Page/MeeGo.md "wikilink")，[Sailfish
OS及](../Page/Sailfish_OS.md "wikilink")[Tizen等行動作業系統採用](../Page/Tizen.md "wikilink")。

openSUSE的官方軟體網站亦提供一些Zypper/YaST所沒有的軟體。

## 歷史

### 目的

在2003年連續收購了[Ximian公司](https://zh.wikipedia.org/wiki/Ximian "wikilink")\[4\]及[SUSE公司](../Page/SUSE.md "wikilink")\[5\]後，[Novell決定要合併](../Page/Novell.md "wikilink")[YaST及](../Page/YaST.md "wikilink")[Red
Carpet兩個軟體包管理器](../Page/Red_Carpet.md "wikilink")。在2005年，觀察了其他的開源工具在當時的成熟度後，Novell公司覺得都不足以符合他們想要可以與已有的由Ximian公司及SUSE公司開發的Linux管理系統一起運作的要求，所以他們決定開發一個新的軟體包管理器。Libzypp就是最後開發出來的函式庫，目標是成為[SUSE發行版的軟體管理引擎](../Page/SUSE.md "wikilink")，以及[Novell
ZENworks套裝的Linux管理組件](../Page/Novell_ZENworks.md "wikilink")。

### 早期

Libzypp的求解器是Red
Carpet求解器的移植，其被編寫用來在安裝好的系統中升級軟體包\[6\]。雖然第一版ZYpp的求解器與ZMD守護行程在企業產品上運行的很好，但它導致了2006年5月釋出的openSUSE
10.1有系統軟體包無法運作。2006年12月釋出的openSUSE
10.2修正了先前版本的一些問題，並將ZYpp升級至第二版。ZMD則於10.3版中移除，只在企業版產品中保留。雖然在openSUSE中的ZYpp第三版是相對比較好的軟體包管理器，但與其他軟體包管理系統而言，它存在一些缺陷，從而限制了它的速度表現。

### SAT求解器整合

libzypp其中一個需要改進的地方是相依性求解器的速度。

像OPIUM專案\[7\]\[8\]及\[9\]這些嘗試修復[SAT求解器的一個相依性求解問題的專案](../Page/布尔可满足性问题.md "wikilink")。像是APT有時可能會出現一些無法接受的缺陷。基於[計算複雜性理論的SAT求解器](../Page/計算複雜性理論.md "wikilink")，與傳統求解器，如APT的運作方式不同\[10\]。它決定將SAT算法整合到ZYpp堆疊中；其求解器是基於minisat求解器\[11\]。
在openSUSE 11.0中的SAT求解器是基於兩個主要且獨立的區塊：

  - 使用[数据字典來儲存及檢查軟體包的相依性資訊](https://zh.wikipedia.org/wiki/数据字典 "wikilink")。新的求解格式被建立，用來儲存套件庫作為字串字典，關係字典以及所有軟體包的相依性。讀取及合併多個求解庫只需要很短的時間。
  - 使用來計算軟體包相依性。[布尔可满足性问题提供許多範例求解器](../Page/布尔可满足性问题.md "wikilink")，並已經過長久研究；它相當快，因為相較其他使用SAT求解器的領域來說，軟體包相依性的複雜度較低。此外，它不需要複雜的算法，且在計算無法解決的問題時可以提供可理解的建議。

經過幾個月的工作，整合了SAT求解器的第四版ZYpp在基準測試上取得了不錯的成績，讓YaST及Zypper比其他基於RPM的軟體包管理器相比起來有較佳的速度及佔用空間\[12\]\[13\]。

## 參見

## 參考資料

## 外部連結

  - [ZYpp官方網站](http://en.opensuse.org/Portal:Libzypp)
  - [Distrowatch.com](http://distrowatch.com/weekly.php?issue=20080602#feature)

[Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink")
[Category:Novell軟件](https://zh.wikipedia.org/wiki/Category:Novell軟件 "wikilink")

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