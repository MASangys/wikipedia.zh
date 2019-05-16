**Windows
Forms**是微软的[.NET開發框架的](https://zh.wikipedia.org/wiki/.NET "wikilink")[圖形用戶界面的一部分](https://zh.wikipedia.org/wiki/圖形用戶界面 "wikilink")，該組件通過將現有的[Windows
API](../Page/Windows_API.md "wikilink")（Win32
API）封裝为[托管代碼提供了對](https://zh.wikipedia.org/wiki/托管代碼 "wikilink")[Windows本地](https://zh.wikipedia.org/wiki/Windows "wikilink")（native）组件的訪問方式。雖然該組件看起來是為先前較複雜的基於[C++的](../Page/C++.md "wikilink")[微軟基礎類庫](https://zh.wikipedia.org/wiki/微軟基礎類庫 "wikilink")（Microsoft
Foundation Classes，MFC）的替代品，但是它並沒有提供與[Model View
Controller](https://zh.wikipedia.org/wiki/Model_View_Controller "wikilink")
"Document/View"架構相應的特色。"Document/View"架構已經被「[MDI](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/frlrfSystemWindowsFormsFormClassIsMdiContainerTopic.asp)（多文檔介面）」所取代。

該實現位於.NET框架的`System.Windows.Forms`命名空間，並且它試着糾正自己在[Windows
XP背景之下扮演的角色](../Page/Windows_XP.md "wikilink")。然而，許多有關於標籤表格與控制單元置於標籤表格上的支援性的顯著問題懸而待決。

許多非微軟官方實現的.NET框架，如[Mono開發平台](https://zh.wikipedia.org/wiki/Mono開發平台 "wikilink")，提供了Windows
Forms的實現。

微软在.Net 3.0中发行了支持视频加速的[Windows Presentation
Foundation](../Page/Windows_Presentation_Foundation.md "wikilink")（简称WPF）作为Windows
Forms的替代版本，但是WPF并不能完全取代Windows Forms，很多时候仍需要和Windows Forms互操作。

## Hello World範例

下面是使用Windows
Forms的一個簡單程式，由[C\#语言编写](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")。

``` csharp
using System.Windows.Forms;
public class HelloWorld
{
    public static void Main()
   {
       MessageBox.Show("Hello world!");
   }
}
```

## 外部链接

  - [官方社群站點（英）](http://webarchive.loc.gov/all/20061007160228/http://www.windowsforms.net/)
  - [MSDN：建立Windows
    Forms应用程序（英）](https://web.archive.org/web/20051205193009/http://msdn.microsoft.com/netframework/programming/winforms/)
  - [Code Project: Windows
    Forms应用程序範例（英）](https://web.archive.org/web/20060422180412/http://www.codeproject.com/vb/net/#Windows+Forms)

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")
[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink")
[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")