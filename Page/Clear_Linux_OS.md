**Clear Linux OS** (**Clear Linux\* OS**, **Clear Linux\***) 是一個[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")，[滾動發行](../Page/滾動發行.md "wikilink")，針對[英特爾架構最佳化](https://zh.wikipedia.org/wiki/英特爾 "wikilink")，講究效能與安全的[Linux发行版](../Page/Linux发行版.md "wikilink")，能部署[雲端運算](../Page/雲端運算.md "wikilink")平台以至[邊緣運算](../Page/邊緣運算.md "wikilink")上\[1\]。 Clear Linux\* OS並非[衍生自其他Linux发行版](https://zh.wikipedia.org/wiki/衍生 "wikilink")，相反，它是一個參考實作(Reference Implementation)，讓用家能夠按特定應用情境作出定制。

## 歷史

Clear Linux\* project 於2014年在英特爾开源平台01.org首度公開，起初是一個名為Intel Clear Container的輕量級虛擬化技術專案。

## 設計及原則

  - 平台、Linux內核、[函式庫](../Page/函式庫.md "wikilink")、中介軟體層、框架以及運行環境(Runtime)，以至整個作業系統堆疊進行了最佳化，專為英特爾平台調校以作最佳化的效能執行\[2\]，默認採用採用了最具有進取性的優化策略以提供最快的性能，默認啓用了許多編譯器優化，運行時根據微處理器類型自動選擇最正確的架構特定代碼版本。因此在電腦上性能遠遠超過其他linux發行版
  - [滾動發行](../Page/滾動發行.md "wikilink")更新模式以接近上游的[Linux內核最新版本](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")

### 無狀態設計

嚴格分離使用者與系統檔案，便於使用者管理及容易擴充

### 自動代理

### 遙距支援

## 安裝

  - 能運行[Live CD](../Page/Live_CD.md "wikilink")，裸機伺服器，[虛擬機器](../Page/虛擬機器.md "wikilink")，[容器化](https://zh.wikipedia.org/wiki/容器化 "wikilink")，[雲端運算](../Page/雲端運算.md "wikilink")服務平台如[AWS](https://zh.wikipedia.org/wiki/AWS "wikilink")，[GCP](https://zh.wikipedia.org/wiki/GCP "wikilink")，[Azure](https://zh.wikipedia.org/wiki/Azure "wikilink")
  - [圖形使用者介面安裝程式以](https://zh.wikipedia.org/wiki/圖形使用者介面 "wikilink")[Go](../Page/Go.md "wikilink")語言開發，名為"[Clear Linux\* OS Installer](https://github.com/clearlinux/clr-installer)"
  - 桌面版本預設使用者介面[GNOME](../Page/GNOME.md "wikilink")
  - 原生[ext4](https://zh.wikipedia.org/wiki/ext4 "wikilink")[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，支持[Btrfs](../Page/Btrfs.md "wikilink")

## 軟體更新

有別於其他[Linux发行版](../Page/Linux发行版.md "wikilink"), Clear Linux\* OS採用模块(Bundles)來管理軟件套件，模块封裝所有上游[开源軟件套件及其依賴](https://zh.wikipedia.org/wiki/开源 "wikilink")。 Clear Linux\* OS以"swupd"作為[軟件套件管理系統](https://zh.wikipedia.org/wiki/軟件套件管理系統 "wikilink")。

Clear Linux\* OS亦[開箱即用的支援](https://zh.wikipedia.org/wiki/開箱即用 "wikilink")[Flatpak](../Page/Flatpak.md "wikilink")應用程式虛擬化\[3\]。[Clear Linux\* Store](https://clearlinux.org/software)是官方提供的應用程式商店。

Clear Linux\* OS亦支援[Docker](../Page/Docker.md "wikilink")[容器技術](../Page/作業系統層虛擬化.md "wikilink")，這需要安裝'containers-basic'模块。

## 參考技術堆疊

它提供數個特定用途的參考技術堆疊(Reference Stacks)如[數據分析](https://zh.wikipedia.org/wiki/數據分析 "wikilink")，[數據庫及](https://zh.wikipedia.org/wiki/數據庫 "wikilink")[深度學習](https://zh.wikipedia.org/wiki/深度學習 "wikilink")。

## 定制

Clear Linux\* OS是一個參考實作(Reference Implementation)，用家或開發人員能根據特定應用情境，使用系統內建的工具，名為"[autospec](https://github.com/clearlinux/autospec)" 及 "[mixer tools](https://github.com/clearlinux/mixer-tools)"來定制Clear Linux\* OS。

## 系統要求

  - 支援[英特爾](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[Intel® Streaming SIMD Extensions 4.2](../Page/SSE4.md "wikilink")[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")[x86系列](https://zh.wikipedia.org/wiki/x86 "wikilink")[64位元](../Page/64位元.md "wikilink")[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")
  - 系統支援[UEFI](https://zh.wikipedia.org/wiki/UEFI "wikilink")

## 另見

  - [01.org](https://01.org)，[英特爾](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[开源平台](https://zh.wikipedia.org/wiki/开源 "wikilink")

## 參考資料

## 外部連結

  -
  -
  -
  -
  -
  -
[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:英特爾](https://zh.wikipedia.org/wiki/Category:英特爾 "wikilink")

1.
2.
3.