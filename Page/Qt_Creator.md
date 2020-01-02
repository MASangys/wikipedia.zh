> 本文内容由[Qt Creator](https://zh.wikipedia.org/wiki/Qt_Creator)转换而来。


{{ Infobox_Software | name = Qt Creator | logo = Qt Creator logo.png | screenshot = Qt Creator 3.1.1 editing a sample UI file from Qt 5.3 using Designer.png | screenshot size = 250px | caption = [Windows 7下的Qt](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") Creator 3.1.1 | developer = Qt Project，[Digia](../Page/Digia.md "wikilink") | latest_release_version = 4.11\[1\] | latest_release_date =  | latest_preview_version = 4.11 RC\[2\] | latest_preview_date =  | programming language = [C++](../Page/C++.md "wikilink")（[Qt](../Page/Qt.md "wikilink")） | operating_system = [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink") | genre = [整合開發環境](https://zh.wikipedia.org/wiki/整合開發環境 "wikilink") | license = [LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")\[3\] | website =  }} **Qt Creator** 是一款跨平台的集成開發環境，特别针对Qt开发者，是[Qt](../Page/Qt.md "wikilink") SDK組成的一部分，可运行于Windows, Linux/X11及Mac OS X等桌面操作系统，允许开发者为多桌面环境及移动设备平台创建应用程序。它包括一個可視化偵錯工具和整合的 GUI 版面和外形設計師。這個編輯器的功能包括[語法高亮度顯示和](https://zh.wikipedia.org/wiki/語法高亮度顯示 "wikilink")[自動完成](https://zh.wikipedia.org/wiki/自動完成 "wikilink")。\[4\] Qt Creator 在 Linux 上，使用 [GCC](../Page/GCC.md "wikilink") 的 C++ 編譯器。在 Windows，預設安裝它可以使用 [MinGW](../Page/MinGW.md "wikilink") 或 [MSVC](../Page/Microsoft_Visual_C++.md "wikilink")。從原始碼編譯時，也可以使用 [cdb](https://zh.wikipedia.org/wiki/Microsoft_Console_Debugger "wikilink")。

於2008年10月的Qt Developer Days宣布這項計畫(代號為 Greenhouse)。\[5\] 該項目的技術預覽版在2008年10月30日公佈。\[6\] 最後在2009年3月3日正式發布（連同Qt 4.5），並提供LGPL許可的源代碼。\[7\]

## 專案

Qt Creator 整合了跨平台自動化建構系統：**[qmake](https://zh.wikipedia.org/wiki/qmake "wikilink")** 與 **CMake**。此外，您可以匯入不使用 qmake 或 CMake 的專案，並指定 Qt Creator 忽略你的建構系統。

## 編輯

Qt Creator 帶有一個程式碼編輯器，並整合 Qt Designer ，使用 Qt widgets 設計和建構製圖形使用者界面（GUI）。

### 程式碼編輯器

Qt Creator的代码编辑器用于辅助创建，编辑，浏览代码，具有对[C++](../Page/C++.md "wikilink")及[QML](../Page/QML.md "wikilink")语言完整的表达式检查，代码补全，上下文关联，键入代码时的行间错误即时指示等功能：

  - 整排出规范代码
  - 代码自动补全
  - 指示行间错误及警告
  - 从语义上对类，函数及变量作分析，方便的跳转浏览
  - 对类，函数及变量做上下文分析，提供编码辅助
  - 可以对变量智能化重命名，例如改变分属不同域中两个相同的变量名之一，不会影响到另一个变量。
  - 告知函数声明和调用的位置

### UI 設計師

Qt Creator 提供兩個整合的可視化編輯器，Qt Designer 與 Qt Quick Designer。

## 程式語言

您可以使用程式碼編輯器編寫 Qt **C++** 的程式碼或 **[QML](../Page/QML.md "wikilink")**(JavaScript) 描述性程式語言。

## 目標

Qt Creator 支援建構和運行 [Qt](../Page/Qt.md "wikilink") 應用程式在**桌面**環境（Windows、Linux 和 Mac OS）與**移動設備**（[Symbian](https://zh.wikipedia.org/wiki/Symbian "wikilink")、[Maemo](../Page/Maemo.md "wikilink") 和 [MeeGo](../Page/MeeGo.md "wikilink") ）。

## 工具

Qt Creator 整合了一些有用的工具，如版本控制系統和 Qt Simulator。

### 版本控制系統

推薦使用使用版本控制系統來建構專案。Qt Creator 使用版本控制系統的命令列客戶端來訪問您的倉庫。Qt Creator集成了多数流行的版本控制系统：

  - **Git**
  - **Subversion**
  - **Perforce**
  - **CVS**
  - **Mercurial**
  - **Bazaar**

### Qt Simulator

作为[Qt SDK的一部分](https://zh.wikipedia.org/wiki/Qt_SDK "wikilink"), Qt模拟器可以虚拟移动设备，得以在本地便可测试Qt应用程序在目标设备环境下的的运行。设计上，Qt模拟器不提供依赖于特定设备的API，因此，一方面，能够在模拟器上运行良好的应用程序，同样可以在目标设备上正常工作；另一方面，Qt模拟器无法用于测试依赖于特定设备APIs库的Qt应用，例如Symbian C++ APIs。

## 偵錯工具

Qt Creator 不包括偵錯工具。它提供了一個偵錯工具外掛，作為 Qt Creator 核心和外部原生偵錯工具之間的介面：

  - GNU Symbolic Debugger (**gdb**)
  - Microsoft Console Debugger (**CDB**)
  - internal Java Script debugger

## 參見

  - [KDevelop](../Page/KDevelop.md "wikilink")

## 參考文獻

## 外部連結

  - [Qt Creator官方網站](http://qt-project.org/)
  - [Qt Creator教學手冊](http://qt-project.org/doc/qtcreator-3.1/index.html)

[Category:Qt](https://zh.wikipedia.org/wiki/Category:Qt "wikilink") [Category:使用Qt的軟體](https://zh.wikipedia.org/wiki/Category:使用Qt的軟體 "wikilink") [Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink") [Category:集成開發環境](https://zh.wikipedia.org/wiki/Category:集成開發環境 "wikilink") [Category:自由整合開發環境](https://zh.wikipedia.org/wiki/Category:自由整合開發環境 "wikilink") [Category:Linux集成开发环境](https://zh.wikipedia.org/wiki/Category:Linux集成开发环境 "wikilink") [Category:C++編譯器](https://zh.wikipedia.org/wiki/Category:C++編譯器 "wikilink") [Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Qt 4.5, Qt Creator released](http://www.qtsoftware.com/about/news/nokia-releases-new-qt-developer-offerings-to-increase-productivity-and-performance)