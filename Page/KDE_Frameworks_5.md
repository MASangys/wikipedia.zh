[Evolution_and_development_of_KDE_software.svg](https://zh.wikipedia.org/wiki/File:Evolution_and_development_of_KDE_software.svg "fig:Evolution_and_development_of_KDE_software.svg") **KDE Frameworks**是一套由[KDE](../Page/KDE.md "wikilink")社群所編寫的[函式庫](../Page/函式庫.md "wikilink")及[軟體框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，是[KDE Plasma 5及](../Page/KDE_Plasma_5.md "wikilink")[KDE Applications 5的基礎](https://zh.wikipedia.org/wiki/KDE_Software_Compilation#第五版 "wikilink")，並使用[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")進行散佈。

其中所包含的各種獨立框架提供了各種常用的功能，包括了硬體整合、檔案格式支援、[控件](../Page/控件.md "wikilink")、繪圖功能、[拼寫檢查及更多](https://zh.wikipedia.org/wiki/拼寫檢查 "wikilink")。

KDE Frameworks相當於將[KDE Platform 4重寫為一套單獨且分開](../Page/KDELibs.md "wikilink")、跨平臺的模組，可以很容易的提供給所有基於[Qt](../Page/Qt.md "wikilink")的程式使用。從[KDE Platform到KDE](../Page/KDELibs.md "wikilink") Frameworks的轉換歷時超過3年，由頂尖的技術貢獻者們指導\[1\]。

在KDE Frameworks 5.0釋出後，因為沒有嚴苛的底線壓力，開發者們將會專注在加入新的功能到KDE Frameworks 5的組件中\[2\]。像是[Firefox](../Page/Firefox.md "wikilink")與KDE的更佳整合\[3\]。

KDE Frameworks 5執行時函式庫與KDE Platform 4執行時函式庫一同安裝應該是可行的，這樣應用程式就可以選擇要用哪一種\[4\]。

## 採用

KDE Frameworks中的原始碼有一部份在KDElibs 1中就有使用。除了[KDE Software Compilation以外](https://zh.wikipedia.org/wiki/KDE_Software_Compilation "wikilink")，也可能有其他許多的採用者，像是[桌面环境](../Page/桌面环境.md "wikilink")，如[Razor-qt](../Page/Razor-qt.md "wikilink")、[LXQt](../Page/LXQt.md "wikilink")、或是，或是應用程式，像是[Amarok](../Page/Amarok.md "wikilink")、[Avogadro等](../Page/亞佛加厥_\(軟體\).md "wikilink")。

## 開發

因為[KDE Software Compilation被分割為KDE](https://zh.wikipedia.org/wiki/KDE_Software_Compilation "wikilink") Frameworks 5、[KDE Plasma 5及](../Page/KDE_Plasma_5.md "wikilink")[KDE Applications 5](https://zh.wikipedia.org/wiki/KDE_Software_Compilation#第五版 "wikilink")、每個子專案都可以選擇自己的開發步伐。KDE Frameworks 5將會以每個月為基礎釋出\[5\]且使用git\[6\]\[7\]。

### 應用程式介面及應用二進制介面穩定性

平台發布是開始一個系列（版本號X.0）的主要發布。這些版本可以打破二進制檔案和，或者換句話說，所有以下版本（X.1, X.2, ...）將保證原始碼和二進制兼容性（[应用程序接口](../Page/应用程序接口.md "wikilink")及[应用二进制接口](../Page/应用二进制接口.md "wikilink")）。例如，該軟體使用KDE 3.0開發將可以工作在所有（未來）發布的KDE 3，相對於應用程序開發使用KDE 2，不保證能夠利用KDE 3的函式庫。KDE的主要版本號按照Qt的發布週期，這意味著KDE SC 4是基於 Qt 4，而KDE 3是基於Qt 3。

## 軟體架構

### 結構

Frameworks有著清晰明確的依賴性結構，分為「類型」及「層次」。「類別」是指運行時依賴性：

  - 功能項沒有運行時依賴性。
  - 整合指定的代碼可能需要運行時依賴性，取決於使用何種作業系統或平臺。
  - 解決方案有強制性的運行時依賴性。

「層次」是指編譯時對其他Frameworks的依賴性：

  - 層次1的Frameworks在Frameworks內沒有依賴性，只需要Qt及其他相關的函式庫。
  - 層次2的Frameworks只能依賴於層次1的Frameworks。
  - 層次3的Frameworks可以依賴其他層次3的Frameworks以及層次1及層次2的Frameworks。

### 組件

KDE Frameworks包含了超過60個軟體包。這些在[KDE SC 4中包含在一個單一的大軟體包中](../Page/KDE_Software_Compilation_4.md "wikilink")，稱為kdelibs，其中一些已經不再是KDE的一部份，但已併入[Qt 5.2中](../Page/Qt.md "wikilink")\[8\]。

KDE Frameworks根據其依賴其他函式庫的程度分類為四種不同的層次。層次1的Frameworks只依賴Qt或是其他系統函式庫。層次2的Frameworks可以依賴層次1的函式庫、或是其他系統函式庫等等\[9\]。

| Frameworks的完整列表                                                               |
| ----------------------------------------------------------------------------- |
| 名稱                                                                            |
| Frameworkintegration                                                          |
| KActivities                                                                   |
| KApiDox                                                                       |
| KArchive                                                                      |
| KAuth                                                                         |
| KBookmarks                                                                    |
| KCMUtils                                                                      |
| KCodecs                                                                       |
| KCompletion                                                                   |
| KConfig                                                                       |
| KConfigWidgets                                                                |
| KCoreAddons                                                                   |
| KCrash                                                                        |
| KDBusAddons                                                                   |
| KDE4Support                                                                   |
| KDeclarative                                                                  |
| KDED                                                                          |
| KDesignerPlugin                                                               |
| KDESu                                                                         |
| KDEWebkit                                                                     |
| KDNSSDFramework                                                               |
| KDocTools                                                                     |
| KEmoticons                                                                    |
| KF5Umbrella                                                                   |
| KFileAudioPreview                                                             |
| KGlobalAccel                                                                  |
| KGuiAddons                                                                    |
| [KHTML](../Page/KHTML.md "wikilink")                                          |
| Ki18n                                                                         |
| KIconThemes                                                                   |
| KIdleTime                                                                     |
| KImageFormats                                                                 |
| KInit                                                                         |
| [KIO](https://zh.wikipedia.org/wiki/KIO "wikilink")                           |
| KItemModels                                                                   |
| KItemViews                                                                    |
| KJobWidgets                                                                   |
| [KJS](../Page/KJS.md "wikilink")                                              |
| KJSEmbed                                                                      |
| KMediaPlayer                                                                  |
| KNewStuff                                                                     |
| KNotifications                                                                |
| KNotifyConfig                                                                 |
| KParts                                                                        |
| KPlotting                                                                     |
| KPrintUtils                                                                   |
| KPty                                                                          |
| [Kross](../Page/Kross.md "wikilink")                                          |
| KRunner                                                                       |
| KService                                                                      |
| KTextEditor                                                                   |
| KTextWidgets                                                                  |
| KUnitConversion                                                               |
| [KWalletFramework](https://zh.wikipedia.org/wiki/KWalletFramework "wikilink") |
| KWidgetsAddons                                                                |
| KWindowSystem                                                                 |
| KXMLGUI                                                                       |
| Plasma-framework                                                              |
| [Solid](https://zh.wikipedia.org/wiki/Solid_\(KDE\) "wikilink")               |
| [Sonnet](https://zh.wikipedia.org/wiki/Sonnet_\(KDE\) "wikilink")             |
| [ThreadWeaver](https://zh.wikipedia.org/wiki/ThreadWeaver "wikilink")         |

## 歷史

KDE Frameworks第一個版本的版本號是5，代表其整個代碼庫是繼承[KDE Platform的事實](../Page/KDELibs.md "wikilink")，但因為KDE Platform的版本號只有到4，而且其大多數代碼只是將先前的版本重新包裝，所以使用版本號5來代表。

在Frameworks 5中的主要變更為，增加了模組化的程度。在較早的KDE版本中，其函式庫被包裝為一個單一的大軟體包。在Frameworks中，這些函式庫會分裂成較小的數個獨立的軟體包。這有利於其他基於Qt的軟體利用這些函式庫，因為依賴性可以被保持在最低程度\[10\]。

而KDE 4是基於第四版的[Qt](../Page/Qt.md "wikilink")部件工具箱開發，Frameworks 5則是使用第五版的Qt。Qt 5能增加[QML](../Page/QML.md "wikilink")的使用量，一個簡單的，基於[JavaScript](../Page/JavaScript.md "wikilink")的敘述性程式語言，用以設計使用者介面。使用QML的圖形渲染引擎可以帶來橫跨不同裝置且更流暢的使用者介面\[11\]。

## 參考資料

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink") [Category:KDE_Software_Compilation](https://zh.wikipedia.org/wiki/Category:KDE_Software_Compilation "wikilink") [Category:自由軟體計劃](https://zh.wikipedia.org/wiki/Category:自由軟體計劃 "wikilink")

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