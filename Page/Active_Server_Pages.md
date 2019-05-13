**動態伺服器網頁**（英文：**A**ctive **S**erver
**P**ages，简称**ASP**），由[微软公司开发的](../Page/微软.md "wikilink")[服务器端运行的脚本平台](../Page/服务器.md "wikilink")，它被[Windows下](../Page/Windows.md "wikilink")[Internet
Information Services (IIS)的程式所管理](../Page/IIS.md "wikilink")。透過ActiveX
server的技術讓不同的使用者能有不同的畫面，或需要讓他們可以存取[服务器（server）上的資料時](../Page/服务器.md "wikilink")，使用ASP3.0中提供了五個內建的物件建立模擬和安全性的動態內容，來協助[程序员隱藏複雜的溝通機制](../Page/程序员.md "wikilink")，讓[程序员可以專注在解決問題和應用之上](../Page/程序员.md "wikilink")，這樣可以更快速地开发动态网页的同時每一个组件都是可以由一组富有经验的[程序员根据动态网页最常用的功能而獨立开发](../Page/程序员.md "wikilink")。

## ASP的特色

ASP隱藏了[網頁伺服器與瀏覽者之間溝通的繁瑣機制的同時也基於](../Page/網頁伺服器.md "wikilink")[script
base的特性](../Page/script_base.md "wikilink")，網頁撰寫員可以專心撰寫應用的程式的邏輯部份，再者ASP也像[HTML般透過撰寫程序來即時測試網頁是否安全地運行](../Page/HTML.md "wikilink")，而不必擔心程式和伺服器不能溝通的問題，另外因為那些[script是於發送前於伺服器中先行轉譯處理成為HTML後再而發送至代理伺服器邊的動態網頁技術](../Page/script.md "wikilink")，不必擔心瀏覽器的支援性及，網頁撰寫員的程式邏輯像[client-side
script會被盜用](../Page/client-side_script.md "wikilink")，因此最終瀏覽者只會是使用[HTML來瀏覽](../Page/HTML.md "wikilink")。

利用ASP程序最常用的是[Cookies](../Page/Cookie.md "wikilink")，它利用Session组件实现的。同時还可以利用[第三方组件延伸ASP的作用](../Page/第三方.md "wikilink")，如利用MailSender组件发送[电子邮件](../Page/电子邮件.md "wikilink")。

通过ASP，可以结合[HTML网页](../Page/HTML.md "wikilink")、ASP指令和[ActiveX元件建立动态](../Page/ActiveX.md "wikilink")、交互且高效的WEB服务器应用程序。同时，ASP也支持[VBScript和](../Page/VBScript.md "wikilink")[JScript等](../Page/JScript.md "wikilink")[脚本语言](../Page/脚本语言.md "wikilink")，默认为[VBScript](../Page/VBScript.md "wikilink")，而其中[JScript是](../Page/JScript.md "wikilink")[微软公司的](../Page/微软.md "wikilink")[ECMAScript标准的实现](../Page/ECMAScript.md "wikilink")，并且有自己的扩展。

### 五个內建组件

  - Application：在一個ASP-based application讓不同使用者共享資訊。
  - Request：從使用者處理取得資訊
  - Response：將資訊送給使用者
  - Server：提供一些Web Server的工具
  - Session：儲存在一個session內使用者的資訊

### 物件的支援

ASP對[COM的支援會允許撰寫員使用](../Page/COM.md "wikilink")[server
component](../Page/server_component.md "wikilink")（或[OLE Automation
server](../Page/OLE_Automation_server.md "wikilink")）。透過它撰寫員可以發展自己的物件，或將把程式轉成[Web-base的介面](../Page/Web-base.md "wikilink")。

  - 透過[ADO提供對於資料庫的應用](../Page/ADO.md "wikilink")。
  - 透過ActiveX的Scripting.FileSystemObject提供對於檔案的操作。

### 狀態（State）的管理

狀態管理是ASP的重要功能之一，原因為HTTP是一個stateless的協定，當有匿名的request進入時，瀏覽者無法辨認這些的request是否安全，或那些request之間的關連性時，便無法透過瀏覽者取得資訊如帳戶及密碼等，對交易特性的Web應用程式造成了阻礙。因此ASP透過cookie的包裝和使用讓瀏覽者可以簡單地管理眾多使用者名稱的不同狀態。

## 版本

ASP目前最新的版本為3.0，與Windows 2000一起發行，並內植於IIS 5.0中。

  - ASP 1.0內含於Windows NT 4.0 Service Pack 3（IIS 3.0）發行。
  - ASP 2.0內含於Windows NT 4.0 Option Pack，與IIS 4.0一起亮相。

自ASP 3.0發行後，除了各版本對它的安全性或問題修補外，對主要功能都沒有再進一步的更新。 Windows Server
2003發行的ASP也是3.0版本。

其後繼者ASP+（即[ASP.NET](../Page/ASP.NET.md "wikilink")），已內含於.NET
Framework中持續演化。

## 原理

ASP是经过服务器解析之后再向[网页浏览器返回数据](../Page/网页浏览器.md "wikilink")，所以有了ASP就不必担心客户的浏览器是否能运行你所编写的代码。因为所有的程序都将在[网页服务器端执行](../Page/网页服务器.md "wikilink")，包括所有嵌在普通[HTML中的脚本程序](../Page/HTML.md "wikilink")。当程序执行完毕后，服务器仅将执行的结果返回给客户浏览器，这样也就减轻了客户端浏览器的负担，大大提高了交互的速度。

由于代码是需要经过服务器执行之后才向浏览器发送的，所以在客户端看到的只能是经过解析之后的数据，而无法获得源代码，故编写者不用担心自己的[源代码会被别人剽窃](../Page/源代码.md "wikilink")。但不排除[黑客利用系统漏洞窃取服务器端的ASP源代码](../Page/黑客.md "wikilink")。

基于这样的解析方式，也导致运行ASP页面相对于普通的HTML页面要慢一点。因为普通的HTML页面只需要浏览器就能够解析，而ASP则必须是[服务器将整页的代码都执行一遍之后再发送数据](../Page/服务器.md "wikilink")。

ASP提供与[数据库的交互](../Page/数据库.md "wikilink")，如[Microsoft SQL
Server](../Page/Microsoft_SQL_Server.md "wikilink")、[Microsoft
Access](../Page/Microsoft_Access.md "wikilink")、[MySQL和](../Page/MySQL.md "wikilink")[Oracle](../Page/Oracle.md "wikilink")，比较流行的是ASP和Microsoft
SQL Server的组合。

## 范例

ASP程式（包括與資料庫連線的部分）都是嵌入在普通HTML和其他客户端语言中的。例如

``` asp
你好!
<!-- 上面是將“你好!”在瀏覽器中輸出，這是通過HTML實現的 -->
<%
'這一行註釋，將不會顯示
Response.write "Wikipedia!" '這行將在瀏覽器中輸出“Wikipedia!”
%>
```

ASP語言是嵌入在“\<%...%\>”之間的部分。而這個程序最終結果將是：

``` text
你好！Wikipedia！
```

## 参见

  - [ASP.NET](../Page/ASP.NET.md "wikilink")
  - [.NET框架](../Page/.NET框架.md "wikilink")
  - [JSP](../Page/JSP.md "wikilink")

## 外部链接

  - [ASP on MSDN](http://msdn.microsoft.com/en-us/library/aa286483.aspx)
  - [-{如何從動態伺服器網頁（Active Server
    Page）模擬使用者}-](http://support.microsoft.com/kb/248187/zh-tw?spid=555&sid=1280)

<!-- end list -->

  - 應用或比較

<!-- end list -->

  - [asp实践经验记录](https://web.archive.org/web/20080923201647/http://www.mysuc.com/?tag=ASP)
  - [Active Server
    Pages是什么？](http://tech.163.com/2004w11/12747/2004w11_1101378251633.html)
  - [ASP.NET與ASP的差異](https://web.archive.org/web/20090106055129/http://www.eki.com.tw/content/news/20080610155930.htm)

<!-- end list -->

  - 替代產物

<!-- end list -->

  - [ArrowHead ASP
    Server](https://archive.is/20130204205934/http://www.tripi.com/arrowhead/)（將ASP轉移到Java的平台下去模擬ASP的運作）
  - [Cloudfoundry
    ASP](https://web.archive.org/web/20110611022354/http://cfasp.cloudfoundry.com/)
  - [Apache::ASP](http://www.apache-asp.org/)（在[Apache上加上](../Page/Apache.md "wikilink")[Perl支援後去跑名為ASP的網頁](../Page/Perl.md "wikilink")）

[Category:微軟伺服器技術](https://zh.wikipedia.org/wiki/Category:微軟伺服器技術 "wikilink")
[Category:ASP](https://zh.wikipedia.org/wiki/Category:ASP "wikilink")