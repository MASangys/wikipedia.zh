**JScript
.NET**是[.NET裡的一種](../Page/.NET_Framework.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")，由[微軟公司所開發](../Page/微軟.md "wikilink")，可稱是[JScript的後繼者](../Page/JScript.md "wikilink")。

JScript .NET與JScript的主要差異可以總結如下。

第一，JScript是一個[脚本语言](../Page/脚本语言.md "wikilink")，[脚本语言可以直接執行](../Page/脚本语言.md "wikilink")，而不需要事先編譯。這與JScript
.NET的案例不同，因為JScript
.NET依存於.NET[通用語言運行庫](../Page/通用語言運行庫.md "wikilink")，需要透過[通用語言運行庫才可以](../Page/通用語言運行庫.md "wikilink")，因此要先編譯為[通用中间语言](../Page/通用中间语言.md "wikilink")（CIL）才能執行，CIL一般又稱做Microsoft
Intermediate Language（MSIL）。但JScript .NET仍然提供在執行時期解譯代碼的支援（例如透過
`Function` 建構子或是
[`eval`](../Page/eval#JavaScript.md "wikilink")函式），並且，這個解譯器可以透過VSA介面給裝有JScript
.NET引擎的特定應用程式來使用。

第二，JScript的基礎是Microsoft的[ActiveX](../Page/ActiveX.md "wikilink")／[组件对象模型技術](../Page/组件对象模型.md "wikilink")，它主要靠ActiveX元件來提供很多功能（像是透過[ADO提供資料庫的存取](../Page/ADO.md "wikilink")、檔案的處理...等等）。而JScript.NET使用[.NET
Framework來提供對等的功能](../Page/.NET_Framework.md "wikilink")。為了向後相容性（或是.NET沒有提供對等的函式庫），JScript
.NET仍然以.NET／COM interop（一種.NET與ActiveX／COM相互操作的技術）提供了完整存取ActiveX物件的功能。

雖然.NET Framework和像是[C♯與](../Page/C♯.md "wikilink")[Visual Basic
.NET等](../Page/Visual_Basic_.NET.md "wikilink").NET語言被廣泛的認可，但是JScript
.NET卻很少被開發者所關注。微軟在Visual Studio
2003之後也不再納入，然而你仍然可以透過命令提示字元直接使用jsc或是使用JScript
.NET來寫[ASP.NET應用程式](../Page/ASP.NET.md "wikilink")。

## 參考

  - \[<http://msdn2.microsoft.com/en-us/library/3bf5fs13(vs.71>).aspx
    Getting Started With JScript .NET\]
  - [Introducing JScript
    .NET](http://msdn2.microsoft.com/en-us/library/ms974588.aspx)
  - [JScript.NET tutorial and form
    tutorial](https://web.archive.org/web/20080205045658/http://www.geocities.com/Jeff_Louie/jscript_net_windows_form.htm)

[Category:.NET程式語言](https://zh.wikipedia.org/wiki/Category:.NET程式語言 "wikilink")
[Category:基於對象的程式語言](https://zh.wikipedia.org/wiki/Category:基於對象的程式語言 "wikilink")