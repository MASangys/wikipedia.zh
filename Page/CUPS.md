**CUPS**（）是一個[類Unix](https://zh.wikipedia.org/wiki/類Unix "wikilink")[操作系統的組合式印刷系統](https://zh.wikipedia.org/wiki/操作系統 "wikilink")，允許一台電腦作為打印服务器。CUPS接受一個客戶端的電腦進程，並送到相應的[打印機](https://zh.wikipedia.org/wiki/打印機 "wikilink")。

CUPS是[自由軟件](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")，使用[GNU通用公共许可证和](../Page/GNU通用公共许可证.md "wikilink")[GNU宽通用公共许可证的第](../Page/GNU宽通用公共许可证.md "wikilink")2版。

## 歷史

迈克尔·斯维特，Easy Software
Products的擁有者，於1997年開始開發CUPS。首次公開測試版於1999年發佈。\[1\]原本設計的CUPS使用，但由於LPD的限制和供應商不兼容，所以由[互聯網列印協定](../Page/互聯網列印協定.md "wikilink")(IPP)代替。CUPS被迅速預設為一些[Linux發行版的打印系統](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")，如[Red
Hat
Linux](../Page/Red_Hat_Linux.md "wikilink")。2002年3月，[蘋果公司在](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mac
OS X
v10.2中采用了CUPS](../Page/Mac_OS_X_v10.2.md "wikilink")。\[2\]2007年2月，蘋果公司聘請了迈克尔·斯维特並購買了CUPS的[源代码](../Page/源代码.md "wikilink")。\[3\]

## 用戶界面工具

### CUPS web-based管理界面

CUPS有一個web-based管理界面運行在631[端口](https://zh.wikipedia.org/wiki/TCP/IP端口列表 "wikilink")。\[4\]它可以遠程組織、監測打印作業並添加打印隊列和打印機。

[File:Cups-1.4-web-interface.png|舊版的網頁管理介面](File:Cups-1.4-web-interface.png%7C舊版的網頁管理介面)
[File:Cups15-web-interface.png|較新版本的網頁管理介面](File:Cups15-web-interface.png%7C較新版本的網頁管理介面)

### GNOME

[Gnome2.26-printing-dialogue.png](https://zh.wikipedia.org/wiki/File:Gnome2.26-printing-dialogue.png "fig:Gnome2.26-printing-dialogue.png")
GNOME CUPS
Manager可以添加新的打印機和管理CUPS的打印機和隊列。還有其他的第三方[應用程序用作管理打印](https://zh.wikipedia.org/wiki/應用程序 "wikilink"),如[GtkLP](http://gtklp.sourceforge.net)及其聯繫工具GtkLPQ及[GtkPSproc](https://web.archive.org/web/20080515193523/http://www.rastersoft.com/gtkpsproc.html)。

GNOME的窗口部件工具包，在2006年發佈的[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")
2.10，整合了基於CUPS的列印支援，支援綜合印刷。

### KDE

[KDE_Print_cups_config.png](https://zh.wikipedia.org/wiki/File:KDE_Print_cups_config.png "fig:KDE_Print_cups_config.png")

KDEPrint 框架在 [KDE](../Page/KDE.md "wikilink") 中包含不同的圖形用戶界面工具作為 CUPS
的前端，並允許分類管理、列印隊列和列印作業；它包括一個印表機精靈，協助增加新的印表機和其他的功能。\[5\]
KDEPrint 第一出現在 KDE 2.2。

KDEPrint 支持多種不同的印刷平台，與CUPS一個最好的支持。它取代了 KDE 以前的列印支持版本，*qtcups*和向後兼容這個 KDE
的模塊。截至2009 *kprinter*，一個對話盒程式，作為主要的工具發送工作到打印設備，它也可以由命令行啟動。KDEPrint
包括一個預先過濾任何工作的系統，才交給CUPS ，或處理自己所有的工作，例如將檔案轉換為 PDF。這些篩選器是由一對
Desktop/[XML文件描述](../Page/XML.md "wikilink")。

KDEPrint 主要組成部分包括：

  - 打印對話框，能對打印機的屬性進行修改
  - 打印管理器，允許管理打印機，如通過添加印表機向导，添加和刪除打印機
  - 工作查看器/管理員，管理打印任務，如持有/釋放，取消和移動到另一台打印機
  - CUPS 配置模塊（集成到 KDE 中）

## 参考文献

[Category:苹果公司收购](https://zh.wikipedia.org/wiki/Category:苹果公司收购 "wikilink")
[Category:电脑打印](https://zh.wikipedia.org/wiki/Category:电脑打印 "wikilink")

1.  Michael Sweet (June 9, 1999), ["A Bright New Future for Printing on
    Linux"](http://linuxtoday.com/news_story.php3?ltsn=1999-06-09-014-10-NW-SM),
    *[Linux
    Today](https://zh.wikipedia.org/wiki/Linux_Today "wikilink")* &
    followup from Michael Sweet (June 11, 1999), ["The Future Brightens
    for Linux
    Printing"](http://linuxtoday.com/news_story.php3?ltsn=1999-06-11-018-10-NW-SM),
    *Linux Today*.
2.  *Easy Software Products*, [CUPS Licensed for Use in Apple Operating
    Systems\!](http://www.cups.org/articles.php?L68+I10+T+P1+Qapple)
    ([press
    release](https://zh.wikipedia.org/wiki/press_release "wikilink")),
    March 1, 2002.
3.  "CUPS",[CUPS Purchased by Apple
    Inc.](https://www.cups.org/blog.php?L475) (press release), July
    11,2007.
4.  [CUPS Software Administrators
    Manual](http://www.cups.org/sam.html#4_4) , "Managing Printers from
    the Web"
5.