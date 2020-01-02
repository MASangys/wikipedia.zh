> 本文内容由[Windows Template Library](https://zh.wikipedia.org/wiki/Windows_Template_Library)转换而来。


**Windows Template Library**（**WTL**）是一個用於[Win32研發的](https://zh.wikipedia.org/wiki/Win32 "wikilink")[物件導向的](../Page/面向对象程序设计.md "wikilink")[C++](../Page/C++.md "wikilink")[模板](../Page/模板_\(C++\).md "wikilink")[函式庫](https://zh.wikipedia.org/wiki/库 "wikilink")。WTL由[Microsoft的員工Nenad](https://zh.wikipedia.org/wiki/Microsoft "wikilink") Stefanovic創造，起初作為內部使用，之後發行為[Visual Studio和Win](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")32 Framework SDK的不支援增益集。它主要被開發作為[Microsoft Foundation Classes的輕量化替代品](https://zh.wikipedia.org/wiki/MFC "wikilink")，以微軟[ATL函式庫](https://zh.wikipedia.org/wiki/Active_Template_Library "wikilink")（另一個被應用在創造[COM與](https://zh.wikipedia.org/wiki/COM "wikilink")[ActiveX](../Page/ActiveX.md "wikilink")的輕量函式庫）為基礎。

## 簡介

WTL提供實現不同用戶介面元件的支援，從框架和彈出式視窗，到[MDI](https://zh.wikipedia.org/wiki/MDI "wikilink")、標準和通用控制項、通用對話方塊、屬性工作表和頁面、[图形设备接口物件](https://zh.wikipedia.org/wiki/图形设备接口 "wikilink")，和其他通用的用戶介面元件，像可捲動的視窗、分割視窗、工具列和通用條。 WTL的主要目標是實現既小而有效率的程式碼，在以大小和速度上接近「純粹的」[SDK程式的同時](https://zh.wikipedia.org/wiki/SDK "wikilink")，提供更高階和更有彈性的物件模型給程式開發者。 其他一些class也有包含，像是與MFC的`CString`語法相容的String wrapper以及一些Templated collection。

大部分的WTL API都是標準Win32呼叫的鏡像，因此介面對於多數的Windows程式設計者趨向較為熟悉。雖然目前沒有微軟官方的文件存在，一個名為*[WTL Documentation Project](http://www.viksoe.dk/code/wtldoc.htm)*的專案正在嘗試建立這個函式庫的廣泛參考資料。

## 授權

WTL是個模板函式庫，因而其內容建基於原始碼，但它原始的授權方式卻類似於[MFC原始碼所採用的方式](https://zh.wikipedia.org/wiki/MFC "wikilink")，差在它沒有包含使用與散佈上的限制。在2004年時微軟讓所有的[原始碼以](https://zh.wikipedia.org/wiki/原始碼 "wikilink")[Common Public License方式授權並在](https://zh.wikipedia.org/wiki/Common_Public_License "wikilink")[SourceForge](../Page/SourceForge.md "wikilink")上釋出原始碼。在版本7.5以後，這個函式庫也以[Microsoft Permissive License的方式作為](https://zh.wikipedia.org/wiki/Microsoft_Permissive_License "wikilink")[多重授權](https://zh.wikipedia.org/wiki/多重授權 "wikilink")。[1](https://web.archive.org/web/20070826011032/http://www.microsoft.com/resources/sharedsource/licensingbasics/permissivelicense.mspx)

## 参考文献

## 外部連結

  - [The SourceForge WTL project](http://sourceforge.net/projects/wtl/)
  - [WTL Documentation](http://www.viksoe.dk/code/wtldoc.htm) - An Effort to Create Documentation for the WTL Programming Library.
  - ["Using the Windows Template Library Part 1"](https://web.archive.org/web/20070926215628/http://www.gamedev.net/reference/programming/features/wtl1/)
  - ["Using the Windows Template Library Part 2"](https://web.archive.org/web/20071007191132/http://www.gamedev.net/reference/programming/features/wtl2/)
  - ["WTL for MFC Programmers"](https://web.archive.org/web/20050610011759/http://www.codeproject.com/wtl/wtl4mfc1.asp) – A series of tutorials aimed at MFC programmers who want to start using WTL
  - [The WTL Wiki](https://web.archive.org/web/20060114082321/http://wtl.wikispaces.com/) - A wiki dedicated to the Windows Template Library (WTL)
  - [WTL for codeproject](https://web.archive.org/web/20070821011058/http://www.codeproject.com/wtl/)
  - [WTL for Yahoo tech.groups](http://tech.groups.yahoo.com/group/wtl/)
  - [A Quick MFC and WTL Comparison](http://www.endurasoft.com/vcd/mfcwtl.htm)

### Microsoft's download

  - [WTL 7.0](https://web.archive.org/web/20070901015153/http://www.microsoft.com/downloads/details.aspx?familyid=128e26ee-2112-4cf7-b28e-7727d9a1f288&displaylang=en)
  - [WTL 7.1](https://web.archive.org/web/20070705002428/http://www.microsoft.com/downloads/details.aspx?familyid=1BE1EB52-AA96-4685-99A5-4256737781C5&displaylang=en)
  - [WTL 7.5](http://www.microsoft.com/downloads/details.aspx?FamilyID=48cb01d7-112e-46c2-bb6e-5bb2fe20e626&DisplayLang=en)
  - [WTL 8.0](http://www.microsoft.com/downloads/details.aspx?familyid=E5BA5BA4-6E6B-462A-B24C-61115E846F0C&displaylang=en)

## 参见

  - [MFC](https://zh.wikipedia.org/wiki/MFC "wikilink")（微软基础类库）

{{-}}

[Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink") [Category:自由軟體計劃](https://zh.wikipedia.org/wiki/Category:自由軟體計劃 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink") [Category:Windows独占自由软件](https://zh.wikipedia.org/wiki/Category:Windows独占自由软件 "wikilink") [Category:使用CPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用CPL许可证的软件 "wikilink")