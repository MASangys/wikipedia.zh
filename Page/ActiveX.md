**ActiveX**在广义上是指[微软公司的整个](https://zh.wikipedia.org/wiki/微软公司 "wikilink")[COM架构](https://zh.wikipedia.org/wiki/COM "wikilink")，但是现在通常用来称呼基于标准COM接口来实现[对象链接与嵌入](../Page/对象链接与嵌入.md "wikilink")（OLE）的ActiveX[控件](../Page/控件.md "wikilink")。\[1\]后者是指从[VBX发展而来的](https://zh.wikipedia.org/wiki/VBX "wikilink")，面向微软的[Internet
Explorer技术而设计的以](../Page/Internet_Explorer.md "wikilink")[OCX为扩展名的](https://zh.wikipedia.org/wiki/OCX "wikilink")[OLE控件](https://zh.wikipedia.org/wiki/OLE "wikilink")。通过定义容器和组件之间的接口规范，如果编写了一个遵循规范的控件，那么可以很方便地在多种容器中使用而不用修改控件的代码。同样，通过实现标准接口调用，一个遵循规范的容器可以很容易地嵌入任何遵循规范的控件。由于OLE在ActiveX控件中的应用的普及，现在OLE技术中-{只}-有少数独立于ActiveX技术，例如[复合文档](https://zh.wikipedia.org/wiki/复合文档 "wikilink")。

## 簡介

一些[浏览器](https://zh.wikipedia.org/wiki/浏览器 "wikilink")，例如[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")、[Google
Chrome](../Page/Google_Chrome.md "wikilink")、[网景浏览器等等现在或曾经都在不同程度上支援ActiveX控件](../Page/網景_\(瀏覽器\).md "wikilink")。这允许网页通过脚本和控件交互产生更加丰富的效果，同时也带来一些安全性的问题。Internet
Explorer和一些其他应用程序同时支援ActiveX
Documents接口规范，允许在一个应用程序中嵌入另一个支持这个规范的应用程序。很多应用软件，例如微软的[Microsoft
Office系列和](../Page/Microsoft_Office.md "wikilink")[Adobe的](../Page/Adobe.md "wikilink")[Acrobat
Reader都实现了这个规范](https://zh.wikipedia.org/wiki/Acrobat_Reader "wikilink")。

服务器端ActiveX组件通常是指运行在服务进程中的组件。一个典型应用是在[IIS中运行的](https://zh.wikipedia.org/wiki/IIS "wikilink")[ASP脚本创建的](https://zh.wikipedia.org/wiki/ASP "wikilink")[ActiveX
Data
Objects](https://zh.wikipedia.org/wiki/ActiveX_Data_Objects "wikilink")，也称ADO。
市场上有很多开发工具支援开发和使用ActiveX控件。

ActiveX
Documents泛指一般採用ActiveX技術作為接口所使用的文件，最早始於2000年左右，當時由於網際網路的興起，當時的軟體巨擘微軟为打敗當時崛起的瀏覽器Netscape所使出策略，當時市場處於弱勢的IE想要將當時微軟市佔率最高的office文件應用於IE上，好打敗Netscape，故使出讓IE瀏覽器不需將Office的文件轉換成標準的HTML網頁也能讀取甚至修改編輯，因此2000後的IE均提供直接開啟ActiveX
Documents（如.doc.ppt...等副檔名）之文件，這項策略果然在數年後，將Netscape完全逐出市場。而由於Office的文件只有微軟能解讀，因此後來的瀏覽器如Google的Chrome就不能直接打開如PPT或DOC等檔案，不過隨著[雲端運算的興起](../Page/雲端運算.md "wikilink")，相信這情況將會改變。

## 運作原理

  - 使用ActiveX元件

<!-- end list -->

1.  每一個ActiveX元件都各自用一個唯一的[GUID編碼在登錄資訊的](https://zh.wikipedia.org/wiki/GUID "wikilink")`HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\`\[2\]與`HKEY_CLASSES_ROOT\CLSID\`之處註冊其DLL檔案路徑。多個ActiveX元件可以放在同一個dll檔案內，但是所有開放使用的ActiveX元件都必須以各自的GUID編號登記在登錄資訊裡。
2.  當該ActiveX元件的dll檔，使用LoadLibrary\[3\]或LoadLibraryEx\[4\]的API載入後，以GetProcAddress\[5\]取得DllGetClassObject\[6\]這個定義在該dll檔裡的函數的進入點。
3.  接著呼叫DllGetClassObject，以取得IClassFactory\[7\]的指標。
4.  再經由IClassFactory去CreateInstance\[8\]，進行該ActiveX元件初始化的後續操作。

## 安全性

由於Microsoft在Windows內建許多ActiveX，因此導致一些惡意的網站曾經利用這些ActiveX進行自動安裝[病毒或](https://zh.wikipedia.org/wiki/電腦病毒 "wikilink")[後門](https://zh.wikipedia.org/wiki/後門 "wikilink")。
例如：

  - Scripting.FileSystemObject，這個ActiveX可操作新增或修改檔案內容。\[9\]
  - WbemScripting.SWbemLocator，這個ActiveX可操作[WMI](https://zh.wikipedia.org/wiki/WMI "wikilink")，進而存取登錄資訊。\[10\]
  - WScript.Shell，這個ActiveX可從瀏覽器之中直接執行外部的執行檔。\[11\]

因此，Microsoft陸續在IE上增加2種封鎖ActiveX執行的方法。先是在2007年加上[ActiveX相容性旗標](../Page/ActiveX相容性旗標.md "wikilink")（Killbit）功能，經由ActiveX元件開發廠商的向Microsoft回報後，由Windows
Update發佈KillBit的更新。而後又在IE 9以後的版本加上ActiveX
Filtering功能，讓IE的瀏覽者能夠自訂是否封鎖特定的ActiveX元件。\[12\]

## 淘汰

在2015年7月29日發行的[Windows
10](https://zh.wikipedia.org/wiki/Windows_10 "wikilink")，會以不支援ActiveX的[Microsoft
Edge瀏覽器](../Page/Microsoft_Edge.md "wikilink")\[13\]，取代使用多年的[Internet
Explorer做為Windows預設瀏覽器](../Page/Internet_Explorer.md "wikilink")。但為相容性需要，Windows
10仍內建Internet Explorer 11供使用者選用。

## 參考資料

## 相關

  - [ADO](../Page/ADO.md "wikilink")
  - [NPAPI](../Page/NPAPI.md "wikilink")
  - [IUnknown](https://zh.wikipedia.org/wiki/IUnknown "wikilink")

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")
[Category:软件附加组件](https://zh.wikipedia.org/wiki/Category:软件附加组件 "wikilink")

1.  [Introduction to ActiveX
    Controls](http://msdn.microsoft.com/en-us/library/aa751972%28VS.85%29.aspx)
2.  [CLSID
    Key](http://msdn.microsoft.com/en-us/library/windows/desktop/ms691424.aspx)
3.  [LoadLibrary
    function](http://msdn.microsoft.com/library/ms684175.aspx)
4.  [LoadLibraryEx
    function](http://msdn.microsoft.com/en-us/library/ms684179.aspx)
5.  [GetProcAddress
    function](http://msdn.microsoft.com/en-us/library/ms683212.aspx)
6.  [DllGetClassObject entry
    point](http://msdn.microsoft.com/en-us/library/windows/desktop/ms680760.aspx)
7.  [IClassFactory
    interface](http://msdn.microsoft.com/en-us/library/windows/desktop/ms694364.aspx)
8.  [IClassFactory::CreateInstance
    method](http://msdn.microsoft.com/en-us/library/windows/desktop/ms682215.aspx)
9.  [Programming the
    FileSystemObject](http://msdn.microsoft.com/en-us/library/2z9ffy99%28v=vs.84%29.aspx)
10. [SWbemLocator
    object](http://msdn.microsoft.com/en-us/library/windows/desktop/aa393719%28v=vs.85%29.aspx)
11. [Run Method (Windows Script
    Host)](http://msdn.microsoft.com/en-us/library/d5fk67ky%28v=vs.84%29.aspx)
12. [How to use Tracking Protection and ActiveX Filtering in Internet
    Explorer 9](http://windows.microsoft.com/en-us/windows7/how-to-use-tracking-protection-and-activex-filtering)
13.