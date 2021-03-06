> 本文内容由[ASP.NET AJAX](https://zh.wikipedia.org/wiki/ASP.NET_AJAX)转换而来。


**ASP.NET AJAX** 是微軟專為 ASP.NET 應用程式所發展的 [AJAX](../Page/AJAX.md "wikilink") 基礎支援，研發代號為 **Atlas**，原有的 ASP.NET 應用程式可以很輕鬆的使用 ASP.NET AJAX 所提供的基礎架構，開發具有 AJAX 能力的 Web 應用程式。

早期在 ASP.NET 2.0 時開始發展，它也是早期使用*' CTP (Community Technology Preview)*' 來代表測試版本的產品之一，在開發初期就已經受到 ASP.NET 的開發人員相當程度的關注，而在歷經一年左右的開發後，於 2007 年發表了在 ASP.NET 2.0 使用的 AJAX 1.0（版本號碼為 1.0.61025），目前的版本為 3.5，與 .NET Framework 3.5 一起發布。

ASP.NET AJAX 4.0 將於 2010 年上半年與 Visual Studio 2010 和 .NET Framework 4.0 一起發表。

## 版本

  - ASP.NET 2.0 AJAX Extensions 1.0
  - ASP.NET AJAX 3.5
  - Microsoft AJAX Library 3.5 SP1
  - ASP.NET AJAX 4.0 Preview 3

## 組成

ASP.NET AJAX 的組成為 System.Web.Extension.dll 以及封裝在 ASP.NET AJAX 函式庫中的 AJAX Core APIs，System.Web.Extension.dll 是一個 [.NET assembly](https://zh.wikipedia.org/wiki/.NET_assembly "wikilink")，它封裝了四個重要的 ASP.NET AJAX 控制項：

  - **ScriptManager 控制項**，為 ASP.NET 提供了重要的 JavaScript 以及**部份刷新 (Partial Update)** 或**頁面方法 (Page Methods)** 等重要性質的支援。
  - **UpdatePanel 控制項**，為提供即時刷新使用者介面，以及觸發更新的 Control trigger。
  - **UpdateProgress 控制項**，可在 UpdatePanel 刷新頁面的工作期間，顯示一個處理中的訊息。
  - **Timer 控制項**，為 AJAX 的用戶端提供了計時器的支援，可說是 DOM 中的 window.setInterval() 的強化實作。

ASP.NET AJAX 和其他瀏覽器一樣，都使用 [XMLHttpRequest](../Page/XMLHttpRequest.md "wikilink") 來與伺服端溝通，因此 ASP.NET AJAX 可以適用於許多的瀏覽器，例如 [Firefox](../Page/Firefox.md "wikilink")，[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink") 與 [Safari](../Page/Safari.md "wikilink") 等，當然也包括了微軟的 [Internet Explorer](../Page/Internet_Explorer.md "wikilink") 瀏覽器，但 ASP.NET 開發人員可以在完全沒有 AJAX 基礎知識的情況下，開發出 AJAX-enabled（具有 AJAX 功能）的 Web 應用程式\[1\]。

## 架構

ASP.NET AJAX 分為 Server 和 Client 兩個架構\[2\]。

Server 端的元件包含：

  - Scripting Services，包含對 AJAX 的 scripting 的控制，例如 debug，全球化，本地語系化等。
  - Web Services，設定 Web Service 的路徑，讓 AJAX Client 可以抓取 Web Service 的參數。
  - Application Services，讓 AJAX Client 可以使用 ASP.NET 2.0 的 Membership 和 Profile 服務。
  - Server Controls，包含 ASP.NET AJAX 的四個主要控制項。

Client 端的元件包含：

  - Components：非視覺化元件的支援。
  - Browser Capabilities：為個別瀏覽器所提供的支援。
  - Networking：對網路存取的支援，包含非同步處理，JSON，WebRequest，Web Service 與 Application Service
  - Core：對 JavaScript 的基礎支援，例如 events，序列化，型別系統等。

微軟也開放了用戶端的 ASP.NET AJAX Library 的原始程式碼，供開發人員做客制化使用\[3\]。

## AJAX Control Toolkit

AJAX Control Toolkit 是一個基於 ASP.NET AJAX 平台上開發的一組控制項工具箱\[4\]，在2011年7月31日的版本，它包含了下列 41 個常在 Web 開發中使用到的控制項，可供開發人員免費使用與散布。

<div class="references-small" style="-moz-column-count:5; column-count:5;">

  - Accordion
  - AlwaysVisibleControl
  - Animation
  - AsyncFileUpload
  - AutoComplete
  - Calendar
  - CascadingDropDown
  - CollapsiblePanel
  - ColorPicker
  - ComboBox
  - ConfirmButton
  - DragPanel
  - DropDown
  - DropShadow
  - DynamicPopulate
  - FilteredTextBox
  - HoverMenu
  - HTMLEditor
  - HTMLEditorExtender
  - ListSearch
  - MaskedEdit
  - ModalPopup
  - MultiHandleSlider
  - MutuallyExclusiveCheckBox
  - NoBot
  - NumericUpDown
  - PagingBulletedList
  - PasswordStrength
  - PopupControl
  - Rating
  - ReorderList
  - ResizableControl
  - RoundedCorners
  - Seadragon
  - Slider
  - SlideShow
  - Tabs
  - TextBoxWatermark
  - ToggleButton
  - UpdatePanelAnimation
  - ValidatorCallout

</div>

## 參考資料

<div class="references-small">

<references />

</div>

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink") [Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:ASP.NET](https://zh.wikipedia.org/wiki/Category:ASP.NET "wikilink")

1.  [Browser Compatibility with ASP.NET AJAX](http://www.asp.net/AJAX/Documentation/Live/BrowserCompatibilityForASPNETAJAX.aspx)
2.  [ASP.NET AJAX Overview](http://www.asp.net/AJAX/Documentation/Live/Overview/default.aspx)
3.  [ASP.NET AJAX Downloads](http://www.asp.net/ajax/downloads/)
4.  [AJAX Control Toolkit](http://www.asp.net/ajax/ajaxcontroltoolkit/samples/)