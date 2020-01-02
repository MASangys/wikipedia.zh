> 本文内容由[URL重寫](https://zh.wikipedia.org/wiki/URL重寫)转换而来。


**URL重寫**（）是一種[REST的相關技術](https://zh.wikipedia.org/wiki/REST "wikilink")，它可以在Web Server中，針對使用者所提供的URL進行轉換後，再傳入Web Server中的程式處理器。

## 範例

最常見的用法，就是將一組URL階層字串，轉換成帶有查询字符串(query string)的[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，或是反向轉換，例如： http://www.somebloghost.com/Blogs/Posts.php?Year=2006\&Month=12\&Day=10

經過URL重寫後，可以變成：

http://www.somebloghost.com/Blogs/2006/12/10/

另一個例子，下面的URL：

http://www.somehost.com/Blogs/2006/12/

經過URL重寫後，可轉換成：

http://www.somehost.com/Blogs.aspx?year=2006\&month=12

因此，使用者可以使用較直覺的方式來輸入URL（這也是REST的主要目的），是[搜尋引擎最佳化](../Page/搜尋引擎最佳化.md "wikilink")（SEO）的作法之一。而應用程式開發者可以利用這個機制來將參數隱藏起來，可避免讓網路上的惡意使用者收集到有利於發動攻擊的資訊。

## 支援URL Rewriting的處理引擎

### [Apache HTTP Server](../Page/Apache_HTTP_Server.md "wikilink")

  - [mod_rewrite](http://httpd.apache.org/docs/2.2/mod/mod_rewrite.html)，Apache官方的URL Rewriting模組
  - [mod_alias](http://httpd.apache.org/docs/2.2/mod/mod_alias.html)，Apache 1.3的URL別名模組

### [Microsoft Internet Information Server](https://zh.wikipedia.org/wiki/IIS "wikilink") (IIS)

  - URL Rewrite Module for IIS 7.0，由微軟官方發展
  - [IIS Mod-Rewrite](https://web.archive.org/web/20080314161600/http://www.micronovae.com/ModRewrite/ModRewrite.html)。
  - [IISRewrite](https://web.archive.org/web/20081009023202/http://qwerksoft.com/products/iisrewrite/)。
  - [ISAPI_Rewrite](http://www.helicontech.com/)。
  - [URL Replacer](http://www.motobit.com/help/url-replacer-rewriter/iis-mod-rewrite.asp)。
  - [Ionic's ISAPI Rewrite Filter (IIRF)](https://web.archive.org/web/20060505215808/http://cheeso.members.winisp.net/IIRf.aspx)，無須 .NET，免費的開放原始碼元件。
  - [.NET URL Rewriter and Reverse Proxy](https://web.archive.org/web/20080820092752/http://managedfusion.com/products/url-rewriter/)，免費的 URL Rewriting 與反向代理元件，支援 .NET 2.0/3.5，IIS 6.0/7.0。
  - [VirtualUrl.NET](https://web.archive.org/web/20081015043416/http://products.visionalyse.com/products/virtualurl/overview/default.aspx)。
  - [UrlRewriter.NET](http://urlrewriter.net/)，免費的開放原始碼元件，支援.NET 1.1/2.0。
  - [URLRewriting.NET](https://web.archive.org/web/20080820113316/http://www.urlrewriting.net/)，免費的開放原始碼元件，ASP.NET 2.0適用。
  - [VirtualUrl.NET for ASP.NET 2](https://web.archive.org/web/20080102035529/http://www.visionalyse.co.uk/products/VirtualUrl/overview/)。

### [J2EE](https://zh.wikipedia.org/wiki/J2EE "wikilink") Servlet

  - [HttpRedirectFilter](http://www.zlatkovic.com/httpredirectfilter.en.html)（開放原始碼）。
  - [UrlRewriteFilter](http://tuckey.org/urlrewrite/)（開放原始碼-BSD）。

### [Lighttpd](../Page/Lighttpd.md "wikilink") (lighty)

  - [mod_rewrite](http://redmine.lighttpd.net/wiki/lighttpd/Docs:ModRewrite)（[lighttpd是一套開放原始碼的網頁伺服器](https://zh.wikipedia.org/wiki/:Lighttpd "wikilink")）。

## 參考資料

## 參见

  - [REST](https://zh.wikipedia.org/wiki/REST "wikilink")
  - [URL](https://zh.wikipedia.org/wiki/URL "wikilink")
  - [J2EE](https://zh.wikipedia.org/wiki/J2EE "wikilink")
  - [ASP.NET](../Page/ASP.NET.md "wikilink")
  - [縮址](https://zh.wikipedia.org/wiki/縮址 "wikilink")

## 外部連結

  - [ASP.NET: URL Rewriting](http://msdn.microsoft.com/en-us/library/ms972974.aspx)
  - [apache mod_rewrite - URL Rewriting](https://web.archive.org/web/20081011024327/http://ohaha.ks.edu.tw/post/1/47)
  - [Java Servlet: URL Rewriting](http://www.unix.com.ua/orelly/java-ent/servlet/ch07_03.htm)

[Category:網頁技術](https://zh.wikipedia.org/wiki/Category:網頁技術 "wikilink")