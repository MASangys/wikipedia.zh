（）是美國[微軟公司推出](https://zh.wikipedia.org/wiki/微軟 "wikilink")[.NET
Framework
3.0及以后版本的组成部分之一](../Page/.NET_Framework_3.0.md "wikilink")，它是一套基于[XML](../Page/XML.md "wikilink")、[.NET
Framework](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")、[向量绘图技术的展示層开发框架](../Page/向量.md "wikilink")，微软视其为下一代使用者介面技术，广泛被用于[Windows
Vista的界面开发](../Page/Windows_Vista.md "wikilink")。

WPF使用一种新的[XAML](../Page/XAML.md "wikilink")（eXtensible Application
Markup
Language）语言来开发界面，这将把界面开发以及后台逻辑很好的分开，降低了[耦合度](https://zh.wikipedia.org/wiki/耦合度_\(計算機科學\) "wikilink")，使用户界面设计师与程序开发者能更好的合作，降低维护和更新的成本。

[WPF/E是WPF的子集合](https://zh.wikipedia.org/wiki/WPF/E "wikilink")，全名是：*Windows
Presentation Foundation
Everywhere*。在基於XAML與[JavaScript之下](../Page/JavaScript.md "wikilink")，可跨越各種平台，目前WPF/E已演化為Microsoft
[Silverlight](https://zh.wikipedia.org/wiki/Silverlight "wikilink")，擔負微軟在[丰富互联网应用程序領域](../Page/丰富互联网应用程序.md "wikilink")，並正面與Adobe
[Flash競爭的產品](https://zh.wikipedia.org/wiki/Flash "wikilink")。

## 特徵

WPF部份之特徵如下：

### 繪圖服務

  - 所有的圖形皆可由[Direct3D產生](../Page/Direct3D.md "wikilink")。
      - 目標在於統一各種顯示圖形。
      - Windows可以透過Direct3D來減輕在繪圖任務上的負荷，這項技術乃基於電腦[顯示卡的](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[繪圖處理單元](https://zh.wikipedia.org/wiki/繪圖處理單元 "wikilink")（Graphics
        Processing Unit）。
      - 支援向量繪圖（vector graphic）。
      - 支援3D透視圖並且影響2D應用程式。

### 佈署

  - WPF不僅僅是建立傳統的獨立程式（standalone applications）。其部署方式可分成兩類：standalone與XAML
    Browser Applications（XBAP）觀點。這些佈署方式在程式的撰寫上大致類似。
      - 獨立程式之安裝方式可以借由[ClickOnce或](../Page/ClickOnce.md "wikilink")[微軟安裝器](../Page/Windows_Installer.md "wikilink")（MSI）完成。獨立程式可被視為完全信任（full
        trust）具有完全存取系統資源的優點。
      - [XAML Browser
        Application](../Page/XAML_Browser_Application.md "wikilink")（XBAPs）是一種寄宿於網頁瀏覽器上的程式，像是[Internet
        Explorer](../Page/Internet_Explorer.md "wikilink")。寄宿的程式可取得部份信任（partial
        trust）的[沙箱](https://zh.wikipedia.org/wiki/沙箱_\(資訊安全\) "wikilink")（sandbox）環境之下，且無法取得完整的系統資源，WPF的功能亦無法完全發揮。寄宿的環境必須有意地防衛惡意的程式碼。從網頁上執行XBAP（讀音"ex-bap"）必須是毫無破綻的（沒有安全性或安裝提示）。雖然這樣的寄宿程式在感觀上與傳統微軟的[DLL](https://zh.wikipedia.org/wiki/DLL "wikilink")（out
        of process）有相異處。

### 互操作性

  - WPF可與[Win32互相操作](https://zh.wikipedia.org/wiki/Win32 "wikilink")：經由主導（hosting）機制，可以在Win32碼之下使用Windows
    Presentation Foundation，或是在Windows Presentation
    Foundation環境下使用Win32程式碼\[1\]。
  - [Windows
    Forms的互操作性亦可利用](../Page/Windows_Forms.md "wikilink")`ElementHost`（繼承自System.Windows.Forms.ContainerControl）以及`WindowsFormsHost`（繼承自System.Windows.Forms.Integration）等類別達成，同時提供了Host
    Avalon Element的能力。

### 媒體播放

  - WPF針對2D圖形提供形狀基元（shape
    primitives），內建筆刷（brushes）、畫筆（pens）、幾何（geometries），與變形（transforms）。
  - WPF以Direct3D提供完整的3D功能。但是，WPF提供更完整的整合性在於使用者介面上（UI）、文件（documents），與媒體（media）。這使得儘可以實現3D
    UI, 3D文件，和3D媒體。
  - 支援了大量的圖片格式（image formats）。
  - WPF支援大量影音格式，如：[WMV](https://zh.wikipedia.org/wiki/WMV "wikilink")，[MPEG以及某些](../Page/MPEG.md "wikilink")[AVI檔](https://zh.wikipedia.org/wiki/AVI "wikilink")。
  - WPF支援以時間為基礎的動畫效果，不同於以影格為基礎的處理方式。如此動畫的速度與系統效能就不會有所關連。
  - 文件的呈現支援[ClearType](../Page/ClearType.md "wikilink")，這提供一種次像素（sub-pixel）定位功能，強化其自然風格。WPF同時支援[OpenType字型樣式](../Page/OpenType.md "wikilink")。

### 資料鏈結

  - WPF有內建資料服務結合，可以讓應用程式發展者在應用程式內鏈結並處理資料。一共有三種資料鏈接方式：
      - one time：客戶端（client）必須忽略伺服端（server）的更新動作。
      - one way：客戶端僅被准許讀取資料（read-only）。
      - two way：客戶端可讀取並讀進伺服端。
  - 資料連結在展示層並無太大負擔。WPF提供有資料樣板（data templates）來控制這些資料。

### 使用者介面

  - WPF提供了內建元件控制項集合，包括有按鈕（button）、選單（menu）、列表盒（list box）等。
  - WPF的邏輯層與外觀展示層已形成強力的分離模式。
      - 元件的外貌樣品可以被完全改寫。

### 文件

對OpenType的支援包括：

  - [合字](../Page/合字.md "wikilink")（Ligatures）
  - 舊式數碼（Old-style numerals，for example, parts of the glyph hang below
    the text baseline）
  - [花体字](https://zh.wikipedia.org/wiki/花体字 "wikilink")（Swash）
  - 分數形式（Fractions）
  - [上标及](https://zh.wikipedia.org/wiki/上标 "wikilink")[下标](https://zh.wikipedia.org/wiki/下标 "wikilink")
  - [小型大写字母](../Page/小型大写字母.md "wikilink")

## 工具

在以往Win32應用程式發展時，絕大多數的工作都由開發人員（Developer）來處理，美術設計人員（Designer）可以涉入的相當有限，而且在Win32
API時代，要在使用者介面中實作特效的話，都需要撰寫大量的程式碼才可以做到。

在WPF中，因為大多數的使用者介面元素都可以利用XAML來宣告，因此微軟試著要將Designer和Developer結合在一起，如此可以讓Designer可以充份發揮，並且Developer也不用傷腦筋在外觀設計上，微軟的Designer工具為[Microsoft
Expression產品集](https://zh.wikipedia.org/wiki/Microsoft_Expression "wikilink")，其中的[Expression
Blend即為設計WPF應用程式的設計工具](https://zh.wikipedia.org/wiki/Expression_Blend "wikilink")，它也可以用來設計[Silverlight程式](https://zh.wikipedia.org/wiki/Silverlight "wikilink")。

開發人員仍然可以使用Visual Studio來開發WPF應用程式，在Visual Studio中內含WPF Designer可供開發人員使用。

## WPF/E

WPF/E發展初期為微軟計畫將WPF推向各平台的計畫，目前此計畫已經被發展成為[Silverlight技術](https://zh.wikipedia.org/wiki/Silverlight "wikilink")。

## WPF應用程式

WPF是下一代圖形API在桌面上的延伸。以WPF撰寫應用程式，具有更高的視覺品質。下表列出微軟自家的產品或是第三協力廠商的主力產品：

  - [Microsoft Visual Studio
    2010](../Page/Microsoft_Visual_Studio.md "wikilink")
  - [Microsoft Expression
    Design](https://zh.wikipedia.org/wiki/Microsoft_Expression_Design "wikilink")
  - [Microsoft Expression
    Blend](https://zh.wikipedia.org/wiki/Microsoft_Expression_Blend "wikilink")
  - [Yahoo\! Messenger](../Page/Yahoo!_Messenger.md "wikilink")
  - [New York Times
    Reader](https://zh.wikipedia.org/wiki/New_York_Times_Reader "wikilink")
  - [Blu](https://zh.wikipedia.org/wiki/Blu "wikilink")
  - [腾讯QQ概念版](../Page/腾讯QQ.md "wikilink")（只能在[Windows
    7上使用](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")）\[2\]

## 發行歷史

| 系列      | 版本       | 發佈日期                                                                                                                      | 重要變更／事項            | 一同發佈的產品 |
| ------- | -------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------ | ------- |
| 3       | 3.0      | 2006年11月                                                                                                                  | \-                 | \-      |
| 3.5     | 2007年11月 | \-                                                                                                                        | \-                 |         |
| 3.5 SP1 | 2008年8月  | \-                                                                                                                        | \-                 |         |
| 4       | 4.0      | 2010年4月                                                                                                                   | \-                 | \-      |
| 4.5     | 2012年8月  | \-                                                                                                                        | \-                 |         |
| 4.5.1   | 2013年10月 | \-                                                                                                                        | \-                 |         |
| 4.52    | 2014年5月  | \-                                                                                                                        | \-                 |         |
| 4.6     | 2015年7月  | [高解析度](../Page/每英寸点数.md "wikilink") (High Dots Per Inch; HDPI) 改善；觸控行為焦點 (Touch) 改善；程式子視窗透明 (Transparent child window) 支援 | Visual Studio 2015 |         |
|         |          |                                                                                                                           |                    |         |

## 参考資料

## 外部链接

  - [- .Net Framework 3.0官方社区](http://windowsclient.net/default.aspx)
  - [The Windows Presentation Foundation community
    portal](https://archive.is/20060615073033/http://wpf.netfx3.com/)—The
    WPF section of the .NET Framework 3.0 community site.
  - [MSDN Windows Presentation Foundation
    SDK](http://msdn2.microsoft.com/en-us/library/ms754130.aspx)—Software
    Development Kit for WPF.
  - [WPFwiki.org](http://wpfwiki.com)—The largest WPF FAQ question and
    answer repository & Wiki.
  - [Getting Started
    (WPF)](http://msdn2.microsoft.com/en-us/library/ms742119.aspx)—Roadmap
    to information for developers new to WPF.
  - [WPF SDK Blog](http://blogs.msdn.com/wpfsdk/)—Active blog maintained
    by the WPF SDK team.
  - [Windows Presentation Foundation
    Unleashed](http://www.samspublishing.com/title/0672328917)—The first
    WPF book to market, written by the lead developers [Adam
    Nathan](http://www.samspublishing.com/authors/bio.asp?a=dcf2a49a-f8c3-4af8-95fa-b5cee04540e2&rl=1)。
  - [Essential Windows Presentation
    Foundation](http://safari.awprofessional.com/0321374479)—An online
    WPF tutorial and reference, written by [Chris
    Anderson](http://www.simplegeek.com/)。
  - [Microsoft Expression
    Blend](http://www.microsoft.com/products/expression/en/Expression-Blend/default.mspx)—Visual
    tool for creating Windows Presentation Foundation applications.
  - [wpf made simple](http://blogs.msdn.com/llobo)—Provides info/samples
    on WPF.
  - [XAML.net](http://www.XAML.net/) Information on XAML and XBAPs, the
    Windows Presentation Foundation (WPF), .NET Framework 3.0 and
    Windows Vista\]\]。
  - [A Guided Tour of Windows Presentation
    Foundation](https://web.archive.org/web/20140627000105/http://msdn.microsoft.com/windowsvista/building/presentation/default.aspx?pull=%2Flibrary%2Fen-us%2Fdnlong%2Fhtml%2Fwpf101.asp)—Microsoft's
    overview of Windows Presentation Foundation.
  - [Windows Presentation Foundation Security
    Sandbox](http://msdn.microsoft.com/windowsvista/default.aspx?pull=/library/en-us/dnlong/html/wpfsecuritysandbox.asp)—An
    overview of the sandbox in which WPF browser applications run.
  - [MSDN Forums for Windows Presentation
    Foundation](http://arquivo.pt/wayback/20080218183022/http://forums.microsoft.com/MSDN/ShowForum.aspx?ForumID=119&SiteID=1)—Active
    discussion forum for WPF developers.
  - [WPF/E Google
    Group](http://groups.google.com/group/wpf-everywhere)—Discussion
    group and list of examples.
  - [Microsoft goes cross-platform with
    WPF/E](https://web.archive.org/web/20070329022455/http://www.itwriting.com/wpfe.php)—WPF/E
    explained in an interview with Microsoft's Director of Developer
    Tools.
  - [More than meets the eye in Microsoft's
    plans](https://archive.is/20130425132405/http://news.com.com/More+than+meets+the+eye+in+Microsoft+plan/2100-1012_3-6053893.html?tag=carsl)—News.com's
    article on WPF/E
  - [WPF page on
    NetFXGuide.com](https://web.archive.org/web/20070427172627/http://www.netfxguide.com/guide/WPF.aspx)
  - [A Five Mile Overview of
    WPF](https://web.archive.org/web/20070119045725/http://www.infusionblogs.com/blogs/jsmith/archive/2006/07/22/665.aspx)—A
    high-level overview of WPF for software developers.
  - [xbap.org](http://xbap.org)—Comprehensive information on XBAP
    applications.
  - [DirectX 10
    Wiki](https://web.archive.org/web/20070116141501/http://www.dxten.com/wiki/Main_Page)
    - Wiki covering WPF and DirectX 10 Tutorials, Samples, Effect, News.
  - [我用43吋螢幕
    各種排版錯誤](https://answers.microsoft.com/zh-hant/windows/forum/windows_10-start-winpc/%E6%88%91%E7%94%A843%E5%90%8B%E8%9E%A2%E5%B9%95/6692e34f-669e-4748-a3bb-6198177b3701)
    - 在高解析度下，WPF的排版會錯誤

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:Windows多媒体](https://zh.wikipedia.org/wiki/Category:Windows多媒体 "wikilink")

1.  [WPF and Win32 Interoperation
    Overview](http://msdn2.microsoft.com/en-us/library/ms742522.aspx)
2.  [QQ实验室](http://im.qq.com/qq/gainian)