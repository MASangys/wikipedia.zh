**up2date**，又被稱作**Red Hat Update Agent**（Red Hat更新代裡程式），這是一個由較舊版本的[Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")、[CentOS](../Page/CentOS.md "wikilink")及[Fedora Core所使用的](../Page/Fedora.md "wikilink")，用來下載並安裝新軟體及更新作業系統。它可以用作[RPM套件管理員](../Page/RPM套件管理員.md "wikilink")的前端並加入了像是自動解決相依性問題等進階功能。`/etc/sysconfig/rhn/sources`這個檔案是用來指定up2date將會從哪裡搜尋軟體包。

[Red Hat Enterprise Linux的up](../Page/Red_Hat_Enterprise_Linux.md "wikilink")2date預設會從（RHN）伺服器中檢索軟體包，但使用者可以依自己的喜好加入包含軟體包的目錄或甚至是[Debian](../Page/Debian.md "wikilink")及[yum的套件庫](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")。

在[Fedora Core上的up](https://zh.wikipedia.org/wiki/Fedora_Core "wikilink")2date則預設從[yum的套件庫檢索軟體包](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")。同樣地，其他來源也可以被加入（RHN除外，因其為Red Hat Enterprise Linux獨有的）。 自Fedora Core 5及Red Hat Enterprise Linux 5開始，up2date已不再使用，而使用[yum做為替代](../Page/Yellowdog_Updater,_Modified.md "wikilink")。

[CentOS](../Page/CentOS.md "wikilink")的up2date從[yum的套件庫下載軟體包](../Page/Yellowdog_Updater,_Modified.md "wikilink")。

## 參考資料

## 參見

  - [软件包管理系统](../Page/软件包管理系统.md "wikilink")
  - [RPM套件管理員](../Page/RPM套件管理員.md "wikilink")（rpm）
  - [Yellow Dog Updater Modified](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")（yum）

## 外部連結

  - 在redhat.com上的[up2date](http://www.redhat.com/advice/tips/up2date.html)頁面
  - [yum/up2date](http://kbase.redhat.com/faq/docs/DOC-2531) 從up2date轉換至yum

[Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink") [Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink") [Category:红帽公司](https://zh.wikipedia.org/wiki/Category:红帽公司 "wikilink")