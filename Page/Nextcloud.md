**Nextcloud**是一套用於建立[网络硬盘](../Page/网络硬盘.md "wikilink")的[客戶端－伺服器軟體](../Page/主從式架構.md "wikilink")。其功能與[Dropbox](../Page/Dropbox.md "wikilink")相近，但Nextcloud是[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，每個人都可以在私人伺服器上安裝並執行它。

與Dropbox等專有服務相比，Nextcloud的開放架構讓使用者可以利用應用程式的方式在伺服器上新增額外的功能，並讓使用者可以完全掌控自己的資料。

[ownCloud原先的開發者](https://zh.wikipedia.org/wiki/ownCloud "wikilink")[弗蘭克·卡利切](../Page/弗蘭克·卡利切.md "wikilink")建立了ownCloud的分支——Nextcloud，繼而讓卡利切與其他原先的ownCloud團隊成員持續積極地開發。

## 特性

Nextcloud的檔案儲存在一般的目錄結構中，並可透過[WebDAV存取](https://zh.wikipedia.org/wiki/使用Web的分布式编写和版本控制 "wikilink")。使用者的檔案會在傳輸時加密。Nextcloud可與在[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（Windows XP、Vista、7與8）、[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")（10.6或更新版本）或是多種[Linux](../Page/Linux.md "wikilink")散佈版上執行的[客戶端同步](https://zh.wikipedia.org/wiki/客戶端 "wikilink")。

Nextcloud使用者可以管理行事曆（使用）、聯絡人（）、計劃工作與串流媒體（）。

從管理的角度來看，Nextcloud允許使用者與群組管理（透過[OpenID](../Page/OpenID.md "wikilink")或[LDAP](../Page/轻型目录访问协议.md "wikilink")）。透過使用者間與／或群組間的讀／寫權限調整達到分享檔案的目的。另外，Nextcloud的使用者可以建立公開的[URL來分享檔案](../Page/统一资源定位符.md "wikilink")。也可以[記錄與檔案相關的動作](../Page/日志文件.md "wikilink")，以及利用檔案存取規則來禁止對特定檔案的存取\[1\]。

此外，使用者也可以透過瀏覽器使用Nextcloud的[文本编辑器](../Page/文本编辑器.md "wikilink")、[書籤服務](../Page/書籤_\(瀏覽器\).md "wikilink")、[縮略網址服務](../Page/縮略網址服務.md "wikilink")、相簿、[RSS](../Page/RSS.md "wikilink")閱讀器與文件檢視器。因為有良好的擴充性，Nextcloud可以透過滑鼠點一下即可完成安裝的應用程式強化其功能，並可連線至[Dropbox](../Page/Dropbox.md "wikilink")、[Google雲端硬碟](../Page/Google雲端硬碟.md "wikilink")與[Amazon S3](../Page/Amazon_S3.md "wikilink")。

## 架構

為了讓個人電腦與Nextcloud伺服器同步，[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")或[Linux](../Page/Linux.md "wikilink")上都有客戶端可以使用。行動客戶端則在[iOS與](https://zh.wikipedia.org/wiki/iOS "wikilink")[Android](../Page/Android.md "wikilink")裝置上提供。也可以使用瀏覽器存取、管理與上傳任何檔案與資料。任何在設定好同步的檔案系統上的變更都會推送到所有連結到該使用者帳號的電腦與行動裝置上。

Nextcloud伺服器是以[PHP](../Page/PHP.md "wikilink")與[JavaScript](../Page/JavaScript.md "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")撰寫。對於[遠端存取](https://zh.wikipedia.org/wiki/虛擬檔案系統 "wikilink")，它採用的是，其為一開放原始碼的[WebDAV伺服器](../Page/基于Web的分布式编写和版本控制.md "wikilink")\[2\]。Nextcloud可與多種[資料庫管理系統一同運作](../Page/数据库.md "wikilink")，包含了[SQLite](../Page/SQLite.md "wikilink")、[MariaDB](../Page/MariaDB.md "wikilink")、[MySQL](../Page/MySQL.md "wikilink")、[Oracle数据库](../Page/Oracle数据库.md "wikilink")與[PostgreSQL](../Page/PostgreSQL.md "wikilink")\[3\]。

## Nextcloud Box

2016年9月，Nextcloud與[威騰電子](../Page/威騰電子.md "wikilink")實驗室以及[Canonical](../Page/Canonical.md "wikilink")（提供[Ubuntu](../Page/Ubuntu.md "wikilink")支援的公司）合作推出Nextcloud Box。其由Jane Silber（當時Canonical公司的CEO）與Frank Karlitschek共同於2016年的Nextcloud大會上宣佈\[4\]。其為spreed box的簡化版。

Nextcloud box奠基於[树莓派](../Page/树莓派.md "wikilink")上，並執行帶有[Snappy的Ubuntu](../Page/Snappy_\(包管理器\).md "wikilink") Core，其目的是作為其他廠商的參考裝置\[5\]。

## 自ownCloud建立分支的歷史

2016年4月，Karlitschek與一些核心開發者離開了ownCloud公司\[6\]。這也包含了一些來自ownCloud社群的ownCloud公司員工\[7\]。

這次的分支在Karlitschek的部落格貼文中揭露，並問了一些諸如「誰擁有社群？誰擁有ownCloud本身？短期利潤或長期責任與發展哪個比較重要？」等問題\[8\]。不過並沒有對這次分支的原因多加陳述。

同年的6月2日，亦即在宣佈分支後的12小時內，位於美國的ownCloud公司宣佈其立即關閉，其指出「……美國的主要貸款機構取消我們的貸款。依照美國的法律，我們被迫關閉ownCloud公司，這個決定立即生效且終結與8名員工的契約。」ownCloud公司指責Karlitschek偷偷將開發者帶走，而Nextcloud的開發者，如Arthur Schiwon則表示「決定離開是因為ownCloud公司已經變得與我想像中的不一樣了」\[9\]。然後，ownCloud GmbH透過投資者的新融資擔保繼續其業務並接管ownCloud公司。

## 參見

  -
  -
  -
## 參考資料

## 外部連結

  -
[Category:雲端運算](https://zh.wikipedia.org/wiki/Category:雲端運算 "wikilink") [Category:云存储](https://zh.wikipedia.org/wiki/Category:云存储 "wikilink") [Category:用PHP编程的自由软件](https://zh.wikipedia.org/wiki/Category:用PHP编程的自由软件 "wikilink") [Category:Nextcloud](https://zh.wikipedia.org/wiki/Category:Nextcloud "wikilink") [Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.
9.